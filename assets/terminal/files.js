const filePanels = {};
const fileNames = { android: 'Android', ubuntu: 'Ubuntu' };
const fileDefaults = { android: '/storage/emulated/0/Download', ubuntu: '/root' };
const fileDirection = document.getElementById('file-direction');
const fileFeedback = document.getElementById('file-feedback');
const jobNodes = new Map();
let fileSubmitting = false;

function savedFileSetting(key, fallback) {
    try { return localStorage.getItem(key) || fallback; } catch { return fallback; }
}
function saveFileSetting(key, value) {
    try { localStorage.setItem(key, value); } catch {}
}
function filePath(parent, name) { return `${parent.replace(/\/$/, '')}/${name}`; }
function fileParent(path) { return path.replace(/\/+$/, '').replace(/\/[^/]*$/, '') || '/'; }
function fileSize(bytes) {
    if (bytes < 1024) return `${bytes} B`;
    const unit = Math.min(4, Math.floor(Math.log(bytes) / Math.log(1024)));
    return `${(bytes / 1024 ** unit).toLocaleString('nl', { maximumFractionDigits: 1 })} ${['B', 'KiB', 'MiB', 'GiB', 'TiB'][unit]}`;
}
function fileMessage(message, error = false) {
    fileFeedback.textContent = message;
    fileFeedback.dataset.error = String(error);
}
function updateFileActions() {
    const source = filePanels[fileDirection.value];
    const target = filePanels[fileDirection.value === 'android' ? 'ubuntu' : 'android'];
    if (!source || !target) return;
    document.getElementById('selection-count').textContent = `${source.selected.size} geselecteerd`;
    document.getElementById('file-target').textContent = source.selected.size ? `Doel: ${fileNames[target.side]} · ${target.path}` : 'Selecteer bestanden of mappen.';
    document.getElementById('file-copy').disabled = fileSubmitting || !source.selected.size || !source.valid || !target.valid;
    document.getElementById('file-move').disabled = fileSubmitting || !source.selected.size || !source.valid || !target.valid;
    document.getElementById('file-remove').disabled = fileSubmitting || !source.selected.size || !source.valid;
    for (const panel of Object.values(filePanels)) {
        const origin = panel.side === source.side;
        document.getElementById(`${panel.side}-pane`).dataset.source = String(origin);
        document.getElementById(`${panel.side}-role`).textContent = origin ? 'Bron' : 'Doel';
        const all = document.getElementById(`${panel.side}-all`);
        const visible = filteredFileEntries(panel);
        const selected = visible.filter(entry => panel.selected.has(entry.name)).length;
        all.checked = visible.length > 0 && selected === visible.length;
        all.indeterminate = selected > 0 && selected < visible.length;
    }
}
function chooseFileSource(panel) {
    fileDirection.value = panel.side;
    const other = filePanels[panel.side === 'android' ? 'ubuntu' : 'android'];
    if (other.selected.size) { other.selected.clear(); renderFileEntries(other); }
}
function selectFile(panel, name, checked) {
    chooseFileSource(panel);
    if (checked) panel.selected.add(name); else panel.selected.delete(name);
    const row = panel.rows.get(name);
    if (row) {
        row.dataset.selected = String(checked);
        row.querySelector('input').checked = checked;
    }
    updateFileActions();
}
function filteredFileEntries(panel) {
    const query = document.getElementById(`${panel.side}-filter`).value.toLocaleLowerCase();
    return query ? panel.entries.filter(entry => entry.name.toLocaleLowerCase().includes(query)) : panel.entries;
}
function renderFileEntries(panel) {
    const list = document.getElementById(`${panel.side}-entries`);
    const focused = document.activeElement;
    const restoreName = list.contains(focused) ? focused.dataset.name : null;
    const restoreRole = restoreName ? focused.dataset.control : null;
    const scroll = list.scrollTop;
    panel.rows.clear();
    const visible = filteredFileEntries(panel);
    const rows = visible.map(entry => {
        const row = document.createElement('li');
        row.className = 'file-row';
        row.dataset.selected = String(panel.selected.has(entry.name));
        const checkbox = document.createElement('input');
        checkbox.type = 'checkbox';
        checkbox.checked = panel.selected.has(entry.name);
        checkbox.setAttribute('aria-label', `Selecteer ${entry.name}`);
        checkbox.dataset.name = entry.name;
        checkbox.dataset.control = 'check';
        checkbox.addEventListener('change', () => selectFile(panel, entry.name, checkbox.checked));
        const name = document.createElement('button');
        name.type = 'button';
        name.className = 'entry-name';
        name.title = filePath(panel.path, entry.name);
        name.dataset.name = entry.name;
        name.dataset.control = 'name';
        name.setAttribute('aria-label', `${entry.directory ? 'Open map' : 'Selecteer'} ${entry.name}${entry.link ? ' · koppeling' : ''}`);
        const icon = document.createElement('span');
        icon.className = `file-icon${entry.directory ? ' folder' : ''}${entry.link ? ' link' : ''}`;
        icon.setAttribute('aria-hidden', 'true');
        const text = document.createElement('span');
        text.className = 'entry-text';
        text.textContent = entry.name;
        name.append(icon, text);
        name.addEventListener('click', () => entry.directory ? loadFilePanel(panel, filePath(panel.path, entry.name), true) : selectFile(panel, entry.name, !panel.selected.has(entry.name)));
        const size = document.createElement('span');
        size.className = 'entry-size';
        size.textContent = entry.directory ? 'map' : fileSize(entry.bytes);
        size.title = `${entry.bytes.toLocaleString('nl')} bytes · ${new Date(entry.modified * 1000).toLocaleString('nl')}`;
        row.append(checkbox, name, size);
        panel.rows.set(entry.name, row);
        return row;
    });
    if (!rows.length) {
        const empty = document.createElement('li');
        empty.className = panel.error ? 'directory-error' : 'empty-directory';
        empty.textContent = panel.error ? 'Deze map kon niet worden gelezen.' : panel.entries.length ? 'Geen namen gevonden in deze map.' : 'Deze map is leeg.';
        rows.push(empty);
    }
    list.replaceChildren(...rows);
    list.scrollTop = scroll;
    if (restoreName && panel.rows.has(restoreName)) {
        const row = panel.rows.get(restoreName);
        (restoreRole === 'check' ? row.querySelector('input') : row.querySelector('button')).focus({ preventScroll: true });
    }
}
async function loadFilePanel(panel, path = panel.path, navigate = false) {
    if (panel.loading && !navigate) return;
    if (navigate) {
        panel.controller?.abort();
        panel.selected.clear();
        panel.path = path;
        panel.valid = false;
        panel.signature = '';
        panel.entries = [];
        panel.error = '';
        const loading = document.createElement('li');
        loading.className = 'empty-directory';
        loading.textContent = 'Map laden…';
        document.getElementById(`${panel.side}-entries`).replaceChildren(loading);
        document.getElementById(`${panel.side}-path`).value = path;
        document.getElementById(`${panel.side}-filter`).value = '';
    }
    const version = ++panel.version;
    panel.controller = new AbortController();
    panel.loading = true;
    const state = document.getElementById(`${panel.side}-status`);
    if (navigate || !panel.valid) state.textContent = 'Map laden…';
    updateFileActions();
    try {
        const response = await fetch(`/files/list?${new URLSearchParams({ side: panel.side, path })}`, { signal: panel.controller.signal });
        if (!response.ok) throw new Error(await response.text());
        const result = await response.json();
        if (version !== panel.version) return;
        panel.error = result.error;
        panel.valid = !result.error;
        panel.entries = result.entries;
        const names = new Set(result.entries.map(entry => entry.name));
        for (const name of panel.selected) if (!names.has(name)) panel.selected.delete(name);
        const signature = JSON.stringify([result.entries, result.error]);
        if (signature !== panel.signature) { panel.signature = signature; renderFileEntries(panel); }
        state.textContent = result.error || `${result.entries.length} items · bijgewerkt ${new Date().toLocaleTimeString('nl', { hour: '2-digit', minute: '2-digit', second: '2-digit' })}`;
        state.dataset.error = String(Boolean(result.error));
        if (result.error && navigate) fileMessage(`${fileNames[panel.side]}: ${result.error}`, true);
        document.getElementById(`${panel.side}-path`).setAttribute('aria-invalid', String(Boolean(result.error)));
        if (!result.error) {
            saveFileSetting(`ubuntu-files-${panel.side}`, panel.path);
            if (navigate) fileMessage('');
        }
    } catch (error) {
        if (version !== panel.version || error.name === 'AbortError') return;
        panel.valid = false;
        panel.error = error.message;
        panel.entries = [];
        panel.signature = '';
        panel.selected.clear();
        renderFileEntries(panel);
        state.textContent = error.message;
        state.dataset.error = 'true';
        if (navigate) fileMessage(`${fileNames[panel.side]}: ${error.message}`, true);
        document.getElementById(`${panel.side}-path`).setAttribute('aria-invalid', 'true');
    } finally {
        if (version === panel.version) { panel.loading = false; updateFileActions(); }
    }
}
async function submitFileAction(operation) {
    if (fileSubmitting) return;
    const source = filePanels[fileDirection.value];
    const target = filePanels[fileDirection.value === 'android' ? 'ubuntu' : 'android'];
    const form = new URLSearchParams({ operation, from: source.side, to: target.side, target: target.path });
    for (const name of source.selected) form.append('source', filePath(source.path, name));
    fileSubmitting = true;
    updateFileActions();
    try {
        const response = await fetch('/files/jobs', { method: 'POST', body: form });
        if (!response.ok) throw new Error(await response.text());
        await response.json();
        fileMessage('Actie gestart; voortgang staat bij Overdrachten.');
        monitorFileJobs();
    } catch (error) { fileMessage(error.message, true); }
    finally { fileSubmitting = false; updateFileActions(); }
}
const fileOperationNames = { copy: 'Kopiëren', move: 'Verplaatsen', remove: 'Verwijderen' };
const fileJobStates = { queued: 'Wacht', running: 'Bezig', done: 'Gereed', failed: 'Mislukt' };
let readingFileJobs = false;
async function monitorFileJobs() {
    if (readingFileJobs) return;
    readingFileJobs = true;
    try {
        const response = await fetch('/files/jobs');
        if (!response.ok) throw new Error(await response.text());
        const result = await response.json();
        const list = document.getElementById('transfer-jobs');
        if (result.jobs.length) list.querySelector('.empty-jobs')?.remove();
        let active = 0;
        let changed = false;
        for (const job of result.jobs) {
            if (job.status === 'running' || job.status === 'queued') active++;
            let record = jobNodes.get(job.id);
            if (!record) {
                const row = document.createElement('li');
                row.className = 'transfer-job';
                const heading = document.createElement('div');
                heading.className = 'job-heading';
                const title = document.createElement('span');
                title.textContent = `${fileOperationNames[job.operation]} · ${fileNames[job.from]}${job.operation === 'remove' ? '' : ` → ${fileNames[job.to]}`}`;
                const state = document.createElement('span');
                state.className = 'job-status';
                heading.append(title, state);
                const path = document.createElement('p');
                path.className = 'job-path';
                const progressRow = document.createElement('div');
                progressRow.className = 'job-progress';
                const progress = document.createElement('progress');
                progress.setAttribute('aria-label', `${fileOperationNames[job.operation]} · afgeronde items`);
                const count = document.createElement('span');
                progressRow.append(progress, count);
                const error = document.createElement('p');
                error.className = 'job-error';
                row.append(heading, path, progressRow, error);
                record = { row, state, path, progress, count, error, status: '' };
                jobNodes.set(job.id, record);
                list.append(row);
            }
            if (record.status !== job.status) {
                changed = true;
                if (job.status === 'done') fileMessage(`${fileOperationNames[job.operation]} gereed · ${job.completed} items.`);
                if (job.status === 'failed') fileMessage(job.error, true);
            }
            record.status = job.status;
            record.row.dataset.state = job.status;
            record.state.textContent = fileJobStates[job.status];
            record.path.textContent = job.current || job.target;
            record.path.title = job.operation === 'remove' ? job.current : `${job.current} → ${job.target}`;
            record.progress.max = job.total;
            record.progress.value = job.completed;
            record.count.textContent = `${job.completed}/${job.total} items`;
            record.error.textContent = job.error;
        }
        document.getElementById('transfer-summary').textContent = `Overdrachten${active ? ` · ${active} actief` : result.jobs.length ? ` · ${result.jobs.length}` : ''}`;
        if (changed) Object.values(filePanels).forEach(panel => loadFilePanel(panel));
    } catch (error) { fileMessage(`Overdrachten: ${error.message}`, true); }
    finally { readingFileJobs = false; }
}
for (const side of ['android', 'ubuntu']) {
    const path = savedFileSetting(`ubuntu-files-${side}`, fileDefaults[side]);
    const panel = { side, path, entries: [], selected: new Set(), rows: new Map(), valid: false, loading: false, version: 0, signature: '', error: '' };
    filePanels[side] = panel;
    document.getElementById(`${side}-path`).value = path;
    document.getElementById(`${side}-form`).addEventListener('submit', event => {
        event.preventDefault();
        loadFilePanel(panel, document.getElementById(`${side}-path`).value, true);
    });
    document.getElementById(`${side}-up`).addEventListener('click', () => loadFilePanel(panel, fileParent(panel.path), true));
    document.getElementById(`${side}-home`).addEventListener('click', () => loadFilePanel(panel, fileDefaults[side], true));
    document.getElementById(`${side}-refresh`).addEventListener('click', () => loadFilePanel(panel));
    document.getElementById(`${side}-filter`).addEventListener('input', () => {
        panel.selected.clear();
        renderFileEntries(panel);
        updateFileActions();
    });
    document.getElementById(`${side}-all`).addEventListener('change', event => {
        chooseFileSource(panel);
        panel.selected = new Set(event.target.checked ? filteredFileEntries(panel).map(entry => entry.name) : []);
        renderFileEntries(panel);
        updateFileActions();
    });
}
fileDirection.addEventListener('change', () => {
    const other = filePanels[fileDirection.value === 'android' ? 'ubuntu' : 'android'];
    other.selected.clear();
    renderFileEntries(other);
    updateFileActions();
});
document.getElementById('file-copy').addEventListener('click', () => submitFileAction('copy'));
document.getElementById('file-move').addEventListener('click', () => submitFileAction('move'));
document.getElementById('file-remove').addEventListener('click', () => submitFileAction('remove'));
const panelResizer = document.getElementById('panel-resizer');
let preferredFileWidth = Number(savedFileSetting('ubuntu-files-width', String(Math.min(580, Math.max(340, Math.round(innerWidth * .24)))))) || 390;
function setFileWidth(width, remember = false) {
    const maximum = Math.min(760, Math.max(280, innerWidth - (innerWidth >= 1400 ? 804 : 340)));
    const value = Math.min(maximum, Math.max(280, width));
    document.documentElement.style.setProperty('--files-width', `${value}px`);
    panelResizer.setAttribute('aria-valuenow', String(Math.round(value)));
    panelResizer.setAttribute('aria-valuemax', String(Math.round(maximum)));
    if (remember) { preferredFileWidth = value; saveFileSetting('ubuntu-files-width', String(value)); }
}
setFileWidth(preferredFileWidth);
panelResizer.addEventListener('pointerdown', event => { panelResizer.setPointerCapture(event.pointerId); });
panelResizer.addEventListener('pointermove', event => { if (panelResizer.hasPointerCapture(event.pointerId)) setFileWidth(innerWidth - event.clientX, true); });
panelResizer.addEventListener('keydown', event => {
    if (event.key === 'ArrowLeft' || event.key === 'ArrowRight') {
        event.preventDefault();
        setFileWidth(Number(panelResizer.getAttribute('aria-valuenow')) + (event.key === 'ArrowLeft' ? 20 : -20), true);
    }
});
window.addEventListener('resize', () => setFileWidth(preferredFileWidth));
function refreshFileWorkspace() {
    Object.values(filePanels).forEach(panel => loadFilePanel(panel));
    monitorFileJobs();
}
refreshFileWorkspace();
setInterval(refreshFileWorkspace, 2500);
