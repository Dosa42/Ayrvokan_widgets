const term = new Terminal({cols:90,rows:46,fontFamily:'monospace',fontSize:16,lineHeight:1,letterSpacing:0,scrollback:0,disableStdin:true,cursorBlink:false,convertEol:false,theme:{background:'#08111d',foreground:'#d6e8ff',cursor:'#08111d'}});
const element = document.getElementById('terminal');
term.open(element);
function fitConsole(){const screen=element.querySelector('.xterm-screen');if(!screen||!screen.clientWidth||!screen.clientHeight)return;const viewport=document.getElementById('viewport');const scale=Math.min(viewport.clientWidth/screen.clientWidth,viewport.clientHeight/screen.clientHeight);element.style.transform='scale('+scale+')';element.style.width=screen.clientWidth+'px';element.style.height=screen.clientHeight+'px';element.style.left=Math.max(0,(viewport.clientWidth-screen.clientWidth*scale)/2)+'px';element.style.top=Math.max(0,(viewport.clientHeight-screen.clientHeight*scale)/2)+'px'}
function resetConsole(){term.reset();term.write('\x1b[?1049h')}
function receive(encoded){const raw=atob(encoded);const bytes=new Uint8Array(raw.length);for(let i=0;i<raw.length;i++)bytes[i]=raw.charCodeAt(i);term.write(bytes)}
new ResizeObserver(()=>requestAnimationFrame(fitConsole)).observe(document.getElementById('viewport'));
term.onRender(()=>requestAnimationFrame(fitConsole));
resetConsole();
Native.ready();
requestAnimationFrame(fitConsole);
