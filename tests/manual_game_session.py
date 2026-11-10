from pathlib import Path
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
import json
import os
import signal
import sys
import threading
import time
import urllib.request

project=Path(__file__).resolve().parents[2]
sys.path.insert(0,str(project/'asciiinvaders-live-20261109/tests'))
from stream_check import viewer,read_message

directory=Path(sys.argv[1])
directory.mkdir(parents=True,exist_ok=True)
console=sys.argv[2]
connection=viewer(int(sys.argv[3]))
connection.settimeout(None)
lock=threading.RLock()
cells=[[' ']*80 for _ in range(25)]
buffers={}
shapes={}
state={'packets':0,'ops':0,'callbacks':0,'last_received_ns':None,'started_ns':None,'error':None}
views={}
actions=[]
events=open(directory/'crt-websocket.jsonl','w')


def paint(x,y,raw,attr):
    for byte in raw:
        if byte==13:x=0
        elif byte==10:y=min(24,y+1)
        elif byte==8:x=max(0,x-1)
        else:
            if 0<=x<80 and 0<=y<25:cells[y][x]=bytes([byte]).decode('cp437') if attr&15 else ' '
            if x<79:x+=1
            else:x,y=0,min(24,y+1)


def receive():
    try:
        while True:
            packet=read_message(connection)
            now=time.monotonic_ns()
            events.write(json.dumps({'received_ns':str(now),'packet':packet},separators=(',',':'))+'\n')
            with lock:
                state['packets']+=1
                if 'format' in packet:shapes.update(packet['sprites'])
                elif 'define_buffer' in packet:
                    index,raw=packet['define_buffer']
                    buffers[index]=bytes.fromhex(raw)
                elif 'op' in packet:
                    op=packet['op']
                    state['ops']+=1
                    state['last_received_ns']=now
                    if op[0]=='write':
                        _,seq,tick,x,y,attr,buffer,context=op
                        paint(x,y,buffers[buffer],attr)
                        state['callbacks']=seq+1
                    else:
                        _,seq,shape,x,y,attr,cx,cy,ticks,contexts=op
                        raw=bytes.fromhex(shapes[shape])
                        for j in range(21):
                            tx,ty=x+j//3,y+j%3
                            if 0<=tx<80 and 0<=ty<25:cx,cy=tx,ty
                            paint(cx,cy,raw[(j%3)*7+j//3:(j%3)*7+j//3+1],attr)
                            cx,cy=(cx+1,cy) if cx<79 else (0,min(24,cy+1))
                        state['callbacks']=seq+21
                elif 'end' in packet:state['ended']=packet['end']
    except BaseException as error:
        with lock:state['error']=repr(error)


def observation():
    with lock:
        now=time.monotonic_ns()
        identifier=len(views)+1
        view={'view_id':identifier,'served_ns':str(now),'elapsed_s':(now-state['started_ns'])/1e9 if state['started_ns'] else None,'event_age_ms':(now-state['last_received_ns'])/1e6 if state['last_received_ns'] else None,**state,'rows':[[i,''.join(row).rstrip()]for i,row in enumerate(cells)if ''.join(row).strip()]}
        views[identifier]=view
        with open(directory/'views.jsonl','a')as stream:stream.write(json.dumps(view,ensure_ascii=False)+'\n')
        return view


class Handler(BaseHTTPRequestHandler):
    def log_message(self,*args):pass

    def reply(self,value):
        data=json.dumps(value,ensure_ascii=False).encode()
        self.send_response(200)
        self.send_header('Content-Type','application/json')
        self.send_header('Content-Length',str(len(data)))
        self.end_headers()
        self.wfile.write(data)

    def do_GET(self):self.reply(observation())

    def do_POST(self):
        value=json.loads(self.rfile.read(int(self.headers['Content-Length'])))
        started=time.monotonic_ns()
        if value.get('begin'):
            state['started_ns']=started
            state['start_callbacks']=state['callbacks']
            state['start_packets']=state['packets']
        trace={'run':'manual-minute-20261109','mcp_start_ns':str(started),'view_id':value.get('view_id')}
        params={'name':value['name'],'arguments':value.get('arguments',{}),'_meta':{'ayrvokan_trace':trace}}
        request=urllib.request.Request(console,data=json.dumps({'jsonrpc':'2.0','id':started,'method':'tools/call','params':params}).encode(),headers={'Content-Type':'application/json'})
        with urllib.request.urlopen(request,timeout=15)as response:result=json.load(response)
        ended=time.monotonic_ns()
        previous=views.get(value.get('view_id'),{})
        entry={'tool':value['name'],'arguments':value.get('arguments',{}),'started_ns':str(started),'ended_ns':str(ended),'round_trip_ms':(ended-started)/1e6,'view_id':value.get('view_id'),'view_to_mcp_ms':(started-int(previous['served_ns']))/1e6 if previous else None,'result':result}
        actions.append(entry)
        with open(directory/'actions.jsonl','a')as stream:stream.write(json.dumps(entry,ensure_ascii=False)+'\n')
        self.reply({'action':{k:v for k,v in entry.items()if k!='result'},'rpc_error':result.get('error'),'view':observation()})


threading.Thread(target=receive,daemon=True).start()
server=ThreadingHTTPServer(('127.0.0.1',0),Handler)
print(json.dumps({'port':server.server_port,'pid':os.getpid()}),flush=True)


def stop(signum,frame):
    raise KeyboardInterrupt


signal.signal(signal.SIGTERM,stop)
try:server.serve_forever()
except KeyboardInterrupt:pass
finally:
    server.server_close()
    connection.close()
    events.close()
    (directory/'state.json').write_text(json.dumps(state,indent=2)+'\n')
