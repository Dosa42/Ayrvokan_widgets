const savedFont = Number(localStorage.getItem('ayrvokan-terminal-font') || 15);
const term = new Terminal({fontFamily:'monospace',fontSize:Math.max(10,Math.min(24,savedFont)),lineHeight:1.14,scrollback:5000,cursorBlink:false,cursorStyle:'bar',theme:{background:'#111c2a',foreground:'#e9eff7',cursor:'#81bbff',selectionBackground:'#334f70',black:'#182232',red:'#ff8192',green:'#5ddcb4',yellow:'#f4c16b',blue:'#81bbff',magenta:'#c1a7ff',cyan:'#70dce9',white:'#d4dfed',brightBlack:'#8296af',brightRed:'#ff9cab',brightGreen:'#85ebca',brightYellow:'#ffdda0',brightBlue:'#aad2ff',brightMagenta:'#dbc7ff',brightCyan:'#a3eff7',brightWhite:'#f7faff'}});
const fit = new FitAddon.FitAddon();
term.loadAddon(fit);
term.open(document.getElementById('terminal'));
term.onData(value => Native.input(value));
term.onResize(size => Native.resize(size.cols,size.rows));
function fitTerminal(){if(term.element && term.element.clientWidth>0){fit.fit();Native.resize(term.cols,term.rows)}}
function changeFontSize(delta){term.options.fontSize=Math.max(10,Math.min(24,term.options.fontSize+delta));localStorage.setItem('ayrvokan-terminal-font',String(term.options.fontSize));fitTerminal()}
function receive(encoded){const raw=atob(encoded);const data=new Uint8Array(raw.length);for(let i=0;i<raw.length;i++)data[i]=raw.charCodeAt(i);term.write(data)}
new ResizeObserver(()=>requestAnimationFrame(fitTerminal)).observe(document.getElementById('terminal'));
let gesture=null;
function cell(event){const rect=term.element.getBoundingClientRect();const width=rect.width/term.cols;const height=rect.height/term.rows;return {column:Math.max(0,Math.min(term.cols-1,Math.floor((event.clientX-rect.left)/width))),row:term.buffer.active.viewportY+Math.max(0,Math.min(term.rows-1,Math.floor((event.clientY-rect.top)/height)))}}
term.element.addEventListener('pointerdown',event=>{if(event.pointerType!=='touch')return;gesture={x:event.clientX,y:event.clientY,lastY:event.clientY,moved:false,selecting:false,start:cell(event),timer:setTimeout(()=>{if(gesture){gesture.selecting=true;term.select(gesture.start.column,gesture.start.row,1)}},550)}});
term.element.addEventListener('pointermove',event=>{if(!gesture || event.pointerType!=='touch')return;if(gesture.selecting){const end=cell(event);let start=gesture.start.row*term.cols+gesture.start.column;let finish=end.row*term.cols+end.column;if(finish<start)[start,finish]=[finish,start];term.select(start%term.cols,Math.floor(start/term.cols),finish-start+1);event.preventDefault();return}if(Math.hypot(event.clientX-gesture.x,event.clientY-gesture.y)>8){gesture.moved=true;clearTimeout(gesture.timer);const height=term.element.clientHeight/term.rows;const lines=Math.trunc((gesture.lastY-event.clientY)/height);if(lines){term.scrollLines(lines);gesture.lastY=event.clientY}event.preventDefault()}});
function releaseGesture(event){if(!gesture)return;clearTimeout(gesture.timer);if(!gesture.moved&&!gesture.selecting&&event.type!=='pointercancel'){term.focus();Native.focus()}gesture=null}
term.element.addEventListener('pointerup',releaseGesture);
term.element.addEventListener('pointercancel',releaseGesture);
Native.ready();
requestAnimationFrame(fitTerminal);
