package com.ayrvokan.widgets;

import android.content.Context;
import android.graphics.Typeface;
import android.text.InputType;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;

final class VekilPane extends LinearLayout implements VekilSession.Observer {
    private final TextView status;
    private final TextView location;
    private final TextView providerState;
    private final TextView transcript;
    private final ScrollView scroll;
    private final EditText prompt;
    private final Button send;
    private final Button stop;
    private final LinearLayout shortcutKeys;
    private final List<String> history = new ArrayList<>();
    private VekilSession session;
    private final TextView engineState;
    private int historyIndex;
    private int rendered = -1;
    private String draft = "";

    VekilPane(Context context) {
        super(context);
        setOrientation(VERTICAL);
        setBackgroundColor(Ui.SURFACE);
        setPadding(Ui.dp(context, 12), Ui.dp(context, 8), Ui.dp(context, 12), Ui.dp(context, 4));
        status = mono("●  VEKIL KAAN", 13, Ui.ACCENT);
        status.setSingleLine(true);
        status.setEllipsize(android.text.TextUtils.TruncateAt.END);
        status.setContentDescription("Vekil Kaan status");
        LinearLayout statusRow = new LinearLayout(context);
        statusRow.setGravity(Gravity.CENTER_VERTICAL);
        providerState = Ui.badge(context, "CLIProxyAPI", Ui.WARNING);
        providerState.setContentDescription("Vekil Kaan provider state");
        statusRow.addView(status, new LinearLayout.LayoutParams(-2, Ui.dp(context, 30)));
        statusRow.addView(new android.view.View(context), new LinearLayout.LayoutParams(0, 1, 1));
        LinearLayout.LayoutParams providerSize = new LinearLayout.LayoutParams(-2, Ui.dp(context, 30));
        providerSize.leftMargin = Ui.dp(context, 7);
        statusRow.addView(providerState, providerSize);
        addView(statusRow, new LinearLayout.LayoutParams(-1, Ui.dp(context, 34)));
        location = mono("Starting…", 11, Ui.MUTED);
        location.setContentDescription("Vekil Kaan workspace");
        location.setTextIsSelectable(true);
        location.setSingleLine(true);
        location.setEllipsize(android.text.TextUtils.TruncateAt.MIDDLE);
        addView(location, new LinearLayout.LayoutParams(-1, Ui.dp(context, 24)));
        engineState = mono("Reactive · starting  |  Heartbeat · starting", 12, Ui.ACCENT);
        engineState.setContentDescription("Vekil Kaan engine state");
        HorizontalScrollView engineStatus = new HorizontalScrollView(context);
        engineStatus.setHorizontalScrollBarEnabled(false);
        engineState.setPadding(Ui.dp(context, 8), 0, Ui.dp(context, 8), 0);
        engineState.setBackground(Ui.background(Ui.PANEL, Ui.LINE, 6, context));
        engineStatus.addView(engineState, new HorizontalScrollView.LayoutParams(-2, Ui.dp(context, 30)));
        addView(engineStatus, new LinearLayout.LayoutParams(-1, Ui.dp(context, 34)));
        HorizontalScrollView engineViewport = new HorizontalScrollView(context);
        engineViewport.setHorizontalScrollBarEnabled(false);
        engineViewport.setContentDescription("Vekil Kaan engine controls");
        LinearLayout engineTools = new LinearLayout(context);
        for (String title : new String[]{"Engine", "Start", "Pause", "Resync", "Reload", "Markdown", "RAG", "Add docs", "Search"}) {
            Button control = Ui.button(context, title, view -> {
                if (session == null) return;
                if ("RAG".equals(title)) { session.send("/rag"); return; }
                if ("Add docs".equals(title) || "Search".equals(title)) { ragInput("Add docs".equals(title)); return; }
                if ("Markdown".equals(title)) { editDirectives(); return; }
                String method = "Start".equals(title) ? "engine.start" : "Pause".equals(title) ? "engine.stop" : "Resync".equals(title) ? "engine.resync" : "Reload".equals(title) ? "directives.reload" : "engine.status";
                session.engineRequest(method, new org.json.JSONObject(), (value, error) -> {
                    if (error != null) android.widget.Toast.makeText(context, error, android.widget.Toast.LENGTH_LONG).show();
                    else if ("Engine".equals(title)) showEngine(value);
                });
            });
            Ui.action(control, "Start".equals(title) ? Ui.SUCCESS : "Pause".equals(title) ? Ui.WARNING : "Resync".equals(title) ? Ui.INFO : "Markdown".equals(title) ? Ui.VIOLET : Ui.MUTED, false);
            control.setContentDescription(title + " Vekil Kaan");
            LinearLayout.LayoutParams size = new LinearLayout.LayoutParams(-2, Ui.dp(context, 48));
            size.rightMargin = Ui.dp(context, 5);
            engineTools.addView(control, size);
        }
        engineViewport.addView(engineTools);
        addView(engineViewport, new LinearLayout.LayoutParams(-1, Ui.dp(context, 52)));
        android.view.View rule = new android.view.View(context);
        rule.setBackgroundColor(Ui.LINE);
        addView(rule, new LinearLayout.LayoutParams(-1, Ui.dp(context, 1)));
        scroll = new ScrollView(context);
        scroll.setFillViewport(true);
        transcript = mono("Vekil Kaan\n\nYour Linux workspace.\nUse /help for commands.\n", 14, Ui.TEXT);
        transcript.setLineSpacing(Ui.dp(context, 3), 1.04f);
        transcript.setGravity(Gravity.TOP);
        transcript.setPadding(0, Ui.dp(context, 12), 0, Ui.dp(context, 14));
        transcript.setTextIsSelectable(true);
        transcript.setContentDescription("Vekil Kaan transcript");
        scroll.addView(transcript, new ScrollView.LayoutParams(-1, -2));
        addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        prompt = new EditText(context);
        HorizontalScrollView shortcuts = new HorizontalScrollView(context);
        shortcuts.setHorizontalScrollBarEnabled(false);
        LinearLayout keys = new LinearLayout(context);
        shortcutKeys = keys;
        Button backend = Ui.button(context, "CLIProxyAPI", view -> { if (session != null) session.send("/backend"); });
        Ui.action(backend, Ui.CYAN, false);
        backend.setContentDescription("Vekil Kaan CLIProxyAPI backend");
        keys.addView(backend, new LinearLayout.LayoutParams(-2, Ui.dp(context, 48)));
        String[] commands = {"/run", "/skills", "/hooks", "/plugins", "/models", "/status", "/help"};
        for (String command : commands) {
            Button button = Ui.button(context, command, view -> {
                if ("/run".equals(command)) {
                    prompt.setText("/run "); prompt.setSelection(prompt.length()); prompt.requestFocus();
                    ((InputMethodManager) context.getSystemService(Context.INPUT_METHOD_SERVICE)).showSoftInput(prompt, InputMethodManager.SHOW_IMPLICIT);
                } else if (session != null) session.send(command);
            });
            button.setTypeface(Typeface.MONOSPACE);
            LinearLayout.LayoutParams key = new LinearLayout.LayoutParams(-2, Ui.dp(context, 48));
            key.setMargins(0, 0, Ui.dp(context, 5), 0);
            keys.addView(button, key);
        }
        shortcuts.addView(keys);
        addView(shortcuts, new LinearLayout.LayoutParams(-1, Ui.dp(context, 52)));
        LinearLayout entry = new LinearLayout(context);
        entry.setGravity(Gravity.CENTER_VERTICAL);
        TextView mark = mono("❯", 21, Ui.ACCENT);
        entry.addView(mark, new LinearLayout.LayoutParams(Ui.dp(context, 24), Ui.dp(context, 48)));
        prompt.setTypeface(Typeface.MONOSPACE);
        prompt.setTextSize(14);
        prompt.setTextColor(Ui.TEXT);
        prompt.setHintTextColor(Ui.MUTED);
        prompt.setHint("Message or /command");
        prompt.setContentDescription("Vekil Kaan input");
        prompt.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        prompt.setMaxLines(5);
        prompt.setPadding(Ui.dp(context, 8), Ui.dp(context, 8), Ui.dp(context, 8), Ui.dp(context, 8));
        Ui.input(prompt, Ui.SUCCESS);
        prompt.setImeOptions(EditorInfo.IME_ACTION_SEND | EditorInfo.IME_FLAG_NO_EXTRACT_UI);
        prompt.setOnEditorActionListener((view, action, event) -> {
            if (action == EditorInfo.IME_ACTION_SEND) { submit(); return true; }
            return false;
        });
        prompt.setOnKeyListener((view, code, event) -> {
            if (event.getAction() != KeyEvent.ACTION_DOWN) return false;
            if (code == KeyEvent.KEYCODE_ENTER && !event.isShiftPressed()) { submit(); return true; }
            if (code == KeyEvent.KEYCODE_C && event.isCtrlPressed() && session != null && session.busy) { session.cancel(); return true; }
            if (prompt.getLineCount() <= 1 && (code == KeyEvent.KEYCODE_DPAD_UP || code == KeyEvent.KEYCODE_DPAD_DOWN)) {
                if (history.isEmpty()) return false;
                if (historyIndex == history.size()) draft = prompt.getText().toString();
                historyIndex = Math.max(0, Math.min(history.size(), historyIndex + (code == KeyEvent.KEYCODE_DPAD_UP ? -1 : 1)));
                prompt.setText(historyIndex == history.size() ? draft : history.get(historyIndex));
                prompt.setSelection(prompt.length());
                return true;
            }
            return false;
        });
        entry.addView(prompt, new LinearLayout.LayoutParams(0, -2, 1));
        send = Ui.button(context, "↵", view -> submit());
        Ui.action(send, Ui.SUCCESS, true);
        send.setContentDescription("Send Vekil Kaan command");
        entry.addView(send, new LinearLayout.LayoutParams(Ui.dp(context, 48), Ui.dp(context, 48)));
        stop = Ui.button(context, "Stop", view -> { if (session != null) session.cancel(); });
        Ui.action(stop, Ui.ERROR, false);
        stop.setContentDescription("Stop Vekil Kaan command");
        entry.addView(stop, new LinearLayout.LayoutParams(Ui.dp(context, 60), Ui.dp(context, 48)));
        addView(entry, new LinearLayout.LayoutParams(-1, -2));
        prompt.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence text, int start, int count, int after) { }
            @Override public void onTextChanged(CharSequence text, int start, int before, int count) { send.setEnabled(session != null && session.ready && !session.busy && !text.toString().trim().isEmpty()); }
            @Override public void afterTextChanged(android.text.Editable text) { }
        });
        TextView hint = mono("Enter ↵   Shift+Enter newline   ↑↓ history", 10, Ui.MUTED);
        addView(hint, new LinearLayout.LayoutParams(-1, Ui.dp(context, 22)));
        changed();
    }

    private void ragInput(boolean add) {
        EditText value = new EditText(getContext());
        value.setTextColor(Ui.TEXT);
        value.setTypeface(Typeface.MONOSPACE);
        value.setHint(add ? "/root/workspace/documents" : "Search your documents");
        value.setContentDescription(add ? "Vekil RAG document path" : "Vekil RAG search query");
        new android.app.AlertDialog.Builder(getContext()).setTitle(add ? "Index documents with EmbeddingGemma-2" : "Search local RAG").setView(value).setNegativeButton("Cancel", null).setPositiveButton(add ? "Index" : "Search", (dialog, which) -> {
            String text = value.getText().toString().trim();
            if (session != null && !text.isEmpty()) session.send((add ? "/rag add " : "/rag search ") + text);
        }).show();
    }

    @Override protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        if (width != oldWidth) post(this::changed);
    }

    private TextView mono(String text, int size, int color) {
        TextView view = Ui.text(getContext(), text, size, color);
        view.setTypeface(Typeface.MONOSPACE);
        return view;
    }

    void attach(VekilSession next) {
        if (session == next) return;
        if (session != null) session.unobserve(this);
        session = next; rendered = -1;
        session.observe(this);
    }

    private void submit() {
        if (session == null || !session.ready || session.busy || prompt.getText().toString().trim().isEmpty()) return;
        String text = prompt.getText().toString();
        prompt.setText(""); draft = "";
        session.send(text);
        scroll.post(() -> scroll.fullScroll(ScrollView.FOCUS_DOWN));
    }

    @Override public void changed() {
        boolean ready = session != null && session.ready;
        boolean busy = session != null && session.busy;
        send.setEnabled(ready && !busy && !prompt.getText().toString().trim().isEmpty());
        for (int i = 0; i < shortcutKeys.getChildCount(); i++) shortcutKeys.getChildAt(i).setEnabled(ready && !busy);
        stop.setEnabled(busy);
        if (session == null) return;
        org.json.JSONObject reactive = session.engineState.optJSONObject("reactive");
        org.json.JSONObject heartbeat = session.engineState.optJSONObject("heartbeat");
        org.json.JSONObject directives = session.engineState.optJSONObject("directives");
        boolean enabled = session.engineState.optBoolean("enabled", true);
        String mode = session.engineState.optString("mode", "RUNNING");
        boolean backendError = heartbeat != null && !heartbeat.isNull("last_error");
        int backendTone = backendError && heartbeat.optString("last_error").contains("no models") ? Ui.WARNING : Ui.ERROR;
        SpannableStringBuilder phases = new SpannableStringBuilder();
        String reactivePhase = reactive == null ? "starting" : reactive.optString("phase");
        String heartbeatPhase = heartbeat == null ? "starting" : heartbeat.optString("phase");
        append(phases, (enabled ? "Reactive " : "Paused · Reactive ") + reactivePhase, enabled ? Ui.phase(reactivePhase) : Ui.WARNING);
        append(phases, "  |  Heartbeat " + heartbeatPhase + (heartbeat == null ? "" : " H" + heartbeat.optLong("pulses") + " M" + heartbeat.optLong("completed")), Ui.phase(heartbeatPhase));
        append(phases, "  |  " + mode, Ui.phase(mode));
        if (backendError) append(phases, " · Backend error", backendTone);
        append(phases, "  |  MD r" + (directives == null ? 0 : directives.optLong("revision")), Ui.VIOLET);
        if (directives != null && !directives.isNull("last_error")) append(phases, " · Markdown error", Ui.ERROR);
        if (!android.text.TextUtils.equals(engineState.getText(), phases)) engineState.setText(phases);
        int tone = busy ? Ui.INFO : "failed".equals(session.outcome) ? Ui.ERROR : "cancelled".equals(session.outcome) ? Ui.WARNING : ready ? Ui.SUCCESS : Ui.WARNING;
        Ui.status(status, busy ? "Ready".equals(session.status) ? "Working…" : session.status : "failed".equals(session.outcome) ? "Last request failed" : "cancelled".equals(session.outcome) ? "Interrupted" : session.status, tone);
        if (!android.text.TextUtils.equals(status.getTooltipText(), "Native Rust " + session.version)) status.setTooltipText("Native Rust " + session.version);
        Ui.status(providerState, backendError ? backendTone == Ui.WARNING ? getWidth() > 0 && getWidth() < Ui.dp(getContext(), 440) ? "Backend pending" : "Backend not ready" : "Backend error" : "CLIProxyAPI", backendError ? backendTone : Ui.CYAN);
        String workspaceLabel = session.cwd + "   " + session.model + "   RAG " + session.ragState.optInt("documents") + " docs";
        if (!android.text.TextUtils.equals(location.getText(), workspaceLabel)) location.setText(workspaceLabel);
        if (rendered == session.revision) return;
        rendered = session.revision;
        boolean bottom = scroll.getChildCount() == 0 || scroll.getScrollY() + scroll.getHeight() >= transcript.getHeight() - Ui.dp(getContext(), 50);
        SpannableStringBuilder text = new SpannableStringBuilder();
        append(text, "Vekil Kaan\nYour Linux workspace. /help for commands.\n\n", Ui.MUTED);
        history.clear();
        for (VekilSession.Entry item : session.entries) {
            if ("user".equals(item.role)) { history.add(item.text); append(text, "❯ " + item.text + "\n", Ui.SUCCESS); }
            else append(text, clean(item.text) + "\n\n", "error".equals(item.role) ? Ui.ERROR : "system".equals(item.role) ? Ui.MUTED : Ui.TEXT);
        }
        String live = session.liveOutput();
        if (!live.isEmpty()) append(text, clean(live), Ui.TEXT);
        else if (busy) append(text, "…", Ui.MUTED);
        historyIndex = history.size();
        java.util.regex.Matcher exits = java.util.regex.Pattern.compile("\\[exit (-?\\d+)([^\\]]*)\\]").matcher(text);
        while (exits.find()) {
            int color = exits.group(2).toLowerCase(java.util.Locale.ROOT).contains("cancel") ? Ui.WARNING : "0".equals(exits.group(1)) ? Ui.SUCCESS : Ui.ERROR;
            text.setSpan(new ForegroundColorSpan(color), exits.start(), exits.end(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
        }
        transcript.setText(text);
        if (bottom) scroll.post(() -> scroll.fullScroll(ScrollView.FOCUS_DOWN));
    }

    private void editDirectives() {
        session.engineRequest("directives.get", new org.json.JSONObject(), (value, error) -> {
            if (error != null) { android.widget.Toast.makeText(getContext(), error, android.widget.Toast.LENGTH_LONG).show(); return; }
            org.json.JSONArray documents = ((org.json.JSONObject) value).optJSONArray("documents");
            String[] names = new String[documents.length()];
            for (int i = 0; i < names.length; i++) names[i] = documents.optJSONObject(i).optString("name");
            new android.app.AlertDialog.Builder(getContext()).setTitle("Live Markdown directives").setItems(names, (dialog, selected) -> {
                org.json.JSONObject document = documents.optJSONObject(selected);
                EditText editor = new EditText(getContext());
                editor.setTypeface(Typeface.MONOSPACE);
                Ui.input(editor, Ui.VIOLET);
                editor.setTextSize(13);
                editor.setGravity(Gravity.TOP | Gravity.START);
                editor.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
                editor.setText(document.optString("content"));
                editor.setContentDescription("Vekil Kaan Markdown editor");
                ScrollView viewport = new ScrollView(getContext());
                viewport.addView(editor);
                android.app.AlertDialog edit = new android.app.AlertDialog.Builder(getContext()).setTitle(names[selected]).setView(viewport).setNegativeButton("Cancel", null).setPositiveButton("Apply", null).create();
                edit.setOnShowListener(ignored -> edit.getButton(android.app.AlertDialog.BUTTON_POSITIVE).setOnClickListener(view -> {
                    org.json.JSONObject arguments = VekilSession.put(VekilSession.object("name", names[selected]), "content", editor.getText().toString());
                    session.engineRequest("directives.write", arguments, (result, problem) -> {
                        if (problem != null) { android.widget.Toast.makeText(getContext(), problem, android.widget.Toast.LENGTH_LONG).show(); return; }
                        android.widget.Toast.makeText(getContext(), "Applied Markdown revision " + ((org.json.JSONObject) result).optLong("revision"), android.widget.Toast.LENGTH_SHORT).show();
                        edit.dismiss();
                    });
                }));
                edit.show();
                edit.getWindow().setLayout(Math.min(getResources().getDisplayMetrics().widthPixels - Ui.dp(getContext(), 32), Ui.dp(getContext(), 840)), (int) (getResources().getDisplayMetrics().heightPixels * 0.8));
            }).show();
        });
    }

    private void showEngine(Object value) {
        TextView output = mono(String.valueOf(value), 12, Ui.TEXT);
        output.setTextIsSelectable(true);
        output.setPadding(Ui.dp(getContext(), 12), Ui.dp(getContext(), 10), Ui.dp(getContext(), 12), Ui.dp(getContext(), 10));
        ScrollView viewport = new ScrollView(getContext());
        viewport.addView(output);
        new android.app.AlertDialog.Builder(getContext()).setTitle("Vekil Kaan · dual engine").setView(viewport).setPositiveButton("Close", null).show();
    }

    private String clean(String value) { return value.replaceAll("\u001b\\[[0-?]*[ -/]*[@-~]", "").replace("\r", ""); }
    private void append(SpannableStringBuilder target, String value, int color) {
        int start = target.length(); target.append(value);
        target.setSpan(new ForegroundColorSpan(color), start, target.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
    }
    void dispose() { if (session != null) session.unobserve(this); session = null; }
}
