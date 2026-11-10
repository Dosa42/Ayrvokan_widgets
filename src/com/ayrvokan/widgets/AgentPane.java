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

final class AgentPane extends LinearLayout implements AgentSession.Observer {
    private final TextView status;
    private final TextView location;
    private final TextView providerState;
    private final TextView transcript;
    private final ScrollView scroll;
    private final EditText prompt;
    private final Button send;
    private final Button stop;
    private final LinearLayout shortcutKeys;
    private final Button accountButton;
    private final List<String> history = new ArrayList<>();
    private AgentSession session;
    private int historyIndex;
    private int rendered = -1;
    private String draft = "";

    AgentPane(Context context) {
        super(context);
        setOrientation(VERTICAL);
        setBackgroundColor(Ui.SURFACE);
        setPadding(Ui.dp(context, 12), Ui.dp(context, 8), Ui.dp(context, 12), Ui.dp(context, 4));
        status = mono("●  AYRVOKAN AGENT", 13, Ui.ACCENT);
        status.setSingleLine(true);
        status.setEllipsize(android.text.TextUtils.TruncateAt.END);
        status.setContentDescription("Ayrvokan Agent status");
        LinearLayout statusRow = new LinearLayout(context);
        statusRow.setGravity(Gravity.CENTER_VERTICAL);
        providerState = Ui.badge(context, "ChatGPT pending", Ui.WARNING);
        providerState.setContentDescription("Ayrvokan Agent provider state");
        statusRow.addView(status, new LinearLayout.LayoutParams(-2, Ui.dp(context, 30)));
        statusRow.addView(new android.view.View(context), new LinearLayout.LayoutParams(0, 1, 1));
        LinearLayout.LayoutParams providerSize = new LinearLayout.LayoutParams(-2, Ui.dp(context, 30));
        providerSize.leftMargin = Ui.dp(context, 7);
        statusRow.addView(providerState, providerSize);
        addView(statusRow, new LinearLayout.LayoutParams(-1, Ui.dp(context, 34)));
        location = mono("Starting…", 11, Ui.MUTED);
        location.setContentDescription("Ayrvokan Agent workspace");
        location.setTextIsSelectable(true);
        location.setSingleLine(true);
        location.setEllipsize(android.text.TextUtils.TruncateAt.MIDDLE);
        addView(location, new LinearLayout.LayoutParams(-1, Ui.dp(context, 24)));
        android.view.View rule = new android.view.View(context);
        rule.setBackgroundColor(Ui.LINE);
        addView(rule, new LinearLayout.LayoutParams(-1, Ui.dp(context, 1)));
        scroll = new ScrollView(context);
        scroll.setFillViewport(true);
        transcript = mono("Ayrvokan Agent\n\nYour Linux workspace.\nUse /help for commands.\n", 14, Ui.TEXT);
        transcript.setLineSpacing(Ui.dp(context, 3), 1.04f);
        transcript.setGravity(Gravity.TOP);
        transcript.setPadding(0, Ui.dp(context, 12), 0, Ui.dp(context, 14));
        transcript.setTextIsSelectable(true);
        transcript.setContentDescription("Ayrvokan Agent transcript");
        scroll.addView(transcript, new ScrollView.LayoutParams(-1, -2));
        addView(scroll, new LinearLayout.LayoutParams(-1, 0, 1));
        prompt = new EditText(context);
        HorizontalScrollView shortcuts = new HorizontalScrollView(context);
        shortcuts.setHorizontalScrollBarEnabled(false);
        LinearLayout keys = new LinearLayout(context);
        shortcutKeys = keys;
        Button login = Ui.button(context, "Connect ChatGPT", view -> { if (session != null) session.send(session.configured ? "/accounts" : "/login"); });
        accountButton = login;
        Ui.action(login, Ui.VIOLET, false);
        login.setContentDescription("Continue with ChatGPT");
        keys.addView(login, new LinearLayout.LayoutParams(-2, Ui.dp(context, 48)));
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
        prompt.setContentDescription("Ayrvokan Agent input");
        prompt.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        prompt.setMaxLines(5);
        prompt.setPadding(Ui.dp(context, 8), Ui.dp(context, 8), Ui.dp(context, 8), Ui.dp(context, 8));
        Ui.input(prompt, Ui.VIOLET);
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
        Ui.action(send, Ui.VIOLET, true);
        send.setContentDescription("Send Ayrvokan Agent command");
        entry.addView(send, new LinearLayout.LayoutParams(Ui.dp(context, 48), Ui.dp(context, 48)));
        stop = Ui.button(context, "Stop", view -> { if (session != null) session.cancel(); });
        Ui.action(stop, Ui.ERROR, false);
        stop.setContentDescription("Stop Ayrvokan Agent command");
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

    @Override protected void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        if (width != oldWidth) post(this::changed);
    }

    private TextView mono(String text, int size, int color) {
        TextView view = Ui.text(getContext(), text, size, color);
        view.setTypeface(Typeface.MONOSPACE);
        return view;
    }

    void attach(AgentSession next) {
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
        if (!session.browserUrl.isEmpty()) {
            String url = session.browserUrl; session.browserUrl = "";
            try {
                android.content.Intent browser = new android.content.Intent(android.content.Intent.ACTION_VIEW, android.net.Uri.parse(url));
                browser.addCategory(android.content.Intent.CATEGORY_BROWSABLE);
                getContext().startActivity(browser);
            } catch (Exception error) {
                session.cancel();
                android.widget.Toast.makeText(getContext(), "Could not open Android browser: " + error.getMessage(), android.widget.Toast.LENGTH_LONG).show();
            }
        }
        int tone = busy ? session.status.startsWith("Waiting") ? Ui.WARNING : Ui.INFO : "failed".equals(session.outcome) ? Ui.ERROR : "cancelled".equals(session.outcome) ? Ui.WARNING : ready ? Ui.SUCCESS : Ui.WARNING;
        Ui.status(status, busy ? "Ready".equals(session.status) ? "Working…" : session.status : "failed".equals(session.outcome) ? "Last request failed" : "cancelled".equals(session.outcome) ? "Interrupted" : session.status, tone);
        if (!android.text.TextUtils.equals(status.getTooltipText(), "Native Rust " + session.version)) status.setTooltipText("Native Rust " + session.version);
        Ui.status(providerState, session.configured ? getWidth() > 0 && getWidth() < Ui.dp(getContext(), 440) ? "ChatGPT" : "ChatGPT connected" : "ChatGPT pending", session.configured ? Ui.SUCCESS : Ui.WARNING);
        accountButton.setText(session.configured ? "Accounts" : "Connect ChatGPT");
        accountButton.setTooltipText(session.configured ? "Choose a ChatGPT account" : "Connect ChatGPT");
        accountButton.setContentDescription(session.configured ? "Ayrvokan Agent accounts" : "Continue with ChatGPT");
        accountButton.setEnabled(ready && !busy);
        String workspaceLabel = session.cwd + (session.configured && !session.account.isEmpty() ? "   " + session.account : "");
        if (!android.text.TextUtils.equals(location.getText(), workspaceLabel)) location.setText(workspaceLabel);
        if (rendered == session.revision) return;
        rendered = session.revision;
        boolean bottom = scroll.getChildCount() == 0 || scroll.getScrollY() + scroll.getHeight() >= transcript.getHeight() - Ui.dp(getContext(), 50);
        SpannableStringBuilder text = new SpannableStringBuilder();
        append(text, "Ayrvokan Agent\nYour Linux workspace. /help for commands.\n\n", Ui.MUTED);
        history.clear();
        for (AgentSession.Entry item : session.entries) {
            if ("user".equals(item.role)) { history.add(item.text); append(text, "❯ " + item.text + "\n", Ui.VIOLET); }
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

    private String clean(String value) { return value.replaceAll("\u001b\\[[0-?]*[ -/]*[@-~]", "").replace("\r", ""); }
    private void append(SpannableStringBuilder target, String value, int color) {
        int start = target.length(); target.append(value);
        target.setSpan(new ForegroundColorSpan(color), start, target.length(), Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
    }
    void dispose() { if (session != null) session.unobserve(this); session = null; }
}
