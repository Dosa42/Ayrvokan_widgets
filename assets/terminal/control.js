const controlNodes = new Map();
let readingControl = false;
let selectedEngineId = '';
let observedEngineOrders = [];
function showEngineOutput() {
    const order = observedEngineOrders.find(item => item.id === selectedEngineId) || observedEngineOrders.at(-1);
    const output = order ? `$ ${order.argv.map(arg => JSON.stringify(arg)).join(' ')}\ncwd=${order.cwd}\n\n${order.stdout}${order.stderr ? `\n[stderr]\n${order.stderr}` : ''}${order.error ? `\n[error]\n${order.error}` : ''}` : 'Nog geen machine-opdrachten ontvangen.';
    const log = document.getElementById('engine-output');
    const atBottom = log.scrollHeight - log.scrollTop - log.clientHeight < 24;
    controlText('engine-output-label', order ? `stdout / stderr · ${order.id}` : 'stdout / stderr');
    controlText('engine-output', output);
    if (atBottom) log.scrollTop = log.scrollHeight;
    for (const [id, node] of controlNodes) node.title.setAttribute('aria-pressed', String(order?.id === id));
}
function controlText(id, value) {
    const element = document.getElementById(id);
    if (element.textContent !== value) element.textContent = value;
}
async function readControlJson(path) {
    const response = await fetch(path, { cache: 'no-store' });
    if (!response.ok) throw new Error(`${path}: ${await response.text()}`);
    return response.json();
}
async function refreshControl() {
    if (readingControl) return;
    readingControl = true;
    try {
        const [engine, health, listing] = await Promise.all([readControlJson('/control/status'), readControlJson('/health'), readControlJson('/sessions')]);
        controlText('server-url', location.origin);
        controlText('server-ssh', `0.0.0.0:${health.ssh.port} · ${health.ssh.running ? 'actief' : 'gestopt'}${health.ssh.error ? ` · ${health.ssh.error}` : ''}`);
        const connected = typeof socket !== 'undefined' && socket?.readyState === WebSocket.OPEN;
        controlText('server-ws', `${location.port || (location.protocol === 'https:' ? '443' : '80')} /ws · ${connected ? 'verbonden' : 'niet verbonden'}`);
        controlText('server-sessions', `${listing.sessions.filter(item => item.running).length} actief / ${listing.sessions.length} totaal`);
        controlText('server-health', 'HTTP bereikbaar');
        document.getElementById('server-health').dataset.state = 'ok';
        controlText('control-freshness', new Date().toLocaleTimeString('nl-NL'));
        for (const key of ['mode', 'model', 'reasoning', 'skills', 'hooks', 'instructions']) controlText(`engine-${key}`, engine.settings[key] || 'Niet ingesteld');
        const active = engine.orders.filter(order => ['queued', 'running'].includes(order.status));
        controlText('engine-state', active.length ? `${active.length} actief` : 'wacht');
        const latest = engine.orders.at(-1);
        controlText('controller-receipt', latest ? `${latest.source}\n${latest.id}\n${new Date(Number(latest.created)).toLocaleString('nl-NL')}` : 'Nog geen opdracht ontvangen.');
        observedEngineOrders = engine.orders;
        const list = document.getElementById('engine-orders');
        if (engine.orders.length) list.querySelector('.empty-orders')?.remove();
        for (const order of engine.orders) {
            let node = controlNodes.get(order.id);
            if (!node) {
                const row = document.createElement('li');
                row.className = 'engine-order';
                const title = document.createElement('button');
                title.type = 'button';
                title.addEventListener('click', () => { selectedEngineId = order.id; showEngineOutput(); });
                const state = document.createElement('span');
                state.className = 'order-status';
                const check = document.createElement('span');
                row.append(title, state, check);
                list.append(row);
                node = { row, title, state, check };
                controlNodes.set(order.id, node);
            }
            node.row.dataset.status = order.status;
            node.title.textContent = order.id;
            node.row.title = `${order.source}\n${order.cwd}\n${order.argv.join(' ')}`;
            node.state.textContent = `${order.status}${order.exit !== '' ? ` · exit ${order.exit}` : ''}`;
            node.check.textContent = `check=${order.checklist}`;
        }
        showEngineOutput();
        controlText('control-error', '');
    } catch (error) {
        controlText('control-error', error.message);
        controlText('server-health', 'Status verversen mislukt');
        document.getElementById('server-health').dataset.state = 'error';
        controlText('control-freshness', 'Laatste gegevens');
    } finally { readingControl = false; }
}
refreshControl();
setInterval(refreshControl, 2000);
