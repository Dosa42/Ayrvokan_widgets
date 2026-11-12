const terminal = new Terminal({
    cursorBlink: true,
    fontSize: 16,
    fontFamily: 'ui-monospace, "DejaVu Sans Mono", Consolas, monospace',
    scrollback: 5000,
    screenReaderMode: true,
    theme: { background: '#101214', foreground: '#eef0f2', cursor: '#f6a36a', selectionBackground: '#455362' }
});
const fit = new FitAddon.FitAddon();
terminal.loadAddon(fit);
terminal.open(document.getElementById('terminal'));
const status = document.getElementById('status');
const sessionLabel = document.getElementById('session');
const encoder = new TextEncoder();
const keyValues = { interrupt: '\x03', tab: '\t', escape: '\x1b', up: '\x1b[A', down: '\x1b[B' };
let socket;
let cursor = 0;
let session = new URL(location.href).searchParams.get('session') || '';
let creating = false;
const sessions = document.getElementById('sessions');
let ready = false;
let retry;
let closing = false;
let geometry = '';

function setStatus(text, state) {
    status.textContent = text;
    status.dataset.state = state;
    document.querySelectorAll('[data-key]').forEach(button => { button.disabled = !ready; });
}

function resize() {
    const height = window.visualViewport ? window.visualViewport.height : window.innerHeight;
    document.documentElement.style.setProperty('--viewport-height', `${height}px`);
    fit.fit();
    const size = `resize:${terminal.rows}:${terminal.cols}`;
    if (ready && socket?.readyState === WebSocket.OPEN && size !== geometry) {
        socket.send(size);
        geometry = size;
    }
}

function send(bytes) {
    if (!ready || socket?.readyState !== WebSocket.OPEN) return;
    for (let offset = 0; offset < bytes.length; offset += 16384) socket.send(bytes.subarray(offset, offset + 16384));
}

function connect() {
    clearTimeout(retry);
    ready = false;
    geometry = '';
    setStatus('Verbinden…', 'connecting');
    const previous = socket;
    const protocol = location.protocol === 'https:' ? 'wss:' : 'ws:';
    const next = new WebSocket(`${protocol}//${location.host}/ws?session=${encodeURIComponent(session)}&cursor=${cursor}`);
    socket = next;
    previous?.close();
    next.binaryType = 'arraybuffer';
    next.onmessage = event => {
        if (socket !== next) return;
        if (typeof event.data === 'string') {
            const message = JSON.parse(event.data);
            if (message.type === 'reset') {
                session = message.session;
                cursor = 0;
                terminal.reset();
            } else if (message.type === 'state') {
                session = message.session;
                sessionLabel.textContent = session ? `sessie ${session.slice(0, 8)} · PID ${message.pid}` : '';
                document.getElementById('open-terminal').href = `/terminal?session=${encodeURIComponent(session)}`;
                ready = message.running;
                setStatus(message.error ? message.error : ready ? 'Verbonden · Ubuntu Bash' : session ? `Afgesloten · exit ${message.exit}` : 'Ubuntu starten…', message.error ? 'error' : ready ? 'connected' : 'closed');
                resize();
                refreshSessions();
            } else if (message.type === 'truncated') {
                terminal.write('\r\n[Oudere uitvoer valt buiten de sessiebuffer]\r\n');
            }
            return;
        }
        const bytes = new Uint8Array(event.data);
        if (bytes.length < 8) return;
        const view = new DataView(event.data);
        const position = view.getUint32(0) * 4294967296 + view.getUint32(4);
        terminal.write(bytes.subarray(8), () => {
            if (socket !== next) return;
            cursor = position;
            if (next.readyState === WebSocket.OPEN) next.send(`ack:${cursor}`);
        });
    };
    next.onclose = () => {
        if (socket !== next || closing) return;
        ready = false;
        setStatus('Verbinding verbroken · opnieuw verbinden…', 'error');
        retry = setTimeout(connect, 1000);
    };
    next.onerror = () => { if (socket === next) setStatus('Server niet bereikbaar · opnieuw verbinden…', 'error'); };
}

terminal.onData(data => send(encoder.encode(data)));
terminal.onBinary(data => send(Uint8Array.from(data, character => character.charCodeAt(0) & 255)));
document.querySelectorAll('[data-key]').forEach(button => {
    button.addEventListener('click', () => { send(encoder.encode(keyValues[button.dataset.key])); terminal.focus(); });
});
document.getElementById('keyboard').addEventListener('click', () => terminal.focus());
document.getElementById('reconnect').addEventListener('click', connect);
async function refreshSessions() {
    try {
        const response = await fetch('/sessions');
        if (!response.ok) throw new Error('Sessielijst laden mislukt');
        const result = await response.json();
        sessions.replaceChildren(...result.sessions.map((item, index) => {
            const option = document.createElement('option');
            option.value = item.session;
            option.textContent = `${index + 1} · ${item.session.slice(0, 8)} · ${item.running ? `PID ${item.pid}` : `exit ${item.exit}`}`;
            option.selected = item.session === session;
            return option;
        }));
    } catch (error) { setStatus(error.message, 'error'); }
}
async function createSession(navigate) {
    if (creating) return;
    creating = true;
    const button = document.getElementById('new-terminal');
    button.disabled = true;
    try {
        const response = await fetch('/sessions', { method: 'POST' });
        if (!response.ok) throw new Error('Nieuwe terminal starten mislukt');
        const result = await response.json();
        const url = `/terminal?session=${encodeURIComponent(result.session)}`;
        if (navigate) { location.assign(url); return; }
        session = result.session;
        history.replaceState(null, '', url);
        connect();
    } catch (error) { setStatus(error.message, 'error'); }
    finally { creating = false; button.disabled = false; }
}
sessions.addEventListener('change', () => location.assign(`/terminal?session=${encodeURIComponent(sessions.value)}`));
document.getElementById('new-terminal').addEventListener('click', () => createSession(true));
document.getElementById('close-terminal').addEventListener('click', async () => {
    try {
        const response = await fetch(`/sessions/${encodeURIComponent(session)}/close`, { method: 'POST' });
        if (!response.ok) throw new Error('Terminal sluiten mislukt');
        refreshSessions();
    } catch (error) { setStatus(error.message, 'error'); }
});
window.addEventListener('focus', refreshSessions);
new ResizeObserver(resize).observe(document.getElementById('terminal'));
window.visualViewport?.addEventListener('resize', resize);
window.addEventListener('beforeunload', () => { closing = true; clearTimeout(retry); socket?.close(); });
resize();
if (session) connect();
else createSession(false);
terminal.focus();
