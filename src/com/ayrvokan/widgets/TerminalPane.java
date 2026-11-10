package com.ayrvokan.widgets;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.inputmethod.InputMethodManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

final class TerminalPane extends LinearLayout implements TerminalSession.Listener {
    final WebView web;
    private final List<byte[]> pending = new ArrayList<>();
    private TerminalSession session;
    private boolean loaded;
    private final android.widget.TextView state;

    TerminalPane(Context context) {
        super(context);
        setOrientation(VERTICAL);
        setBackgroundColor(Ui.SURFACE);
        state = Ui.badge(context, "Opening shell…", Ui.WARNING);
        state.setContentDescription("Terminal session status");
        LinearLayout.LayoutParams stateSize = new LinearLayout.LayoutParams(-2, Ui.dp(context, 30));
        stateSize.setMargins(Ui.dp(context, 8), Ui.dp(context, 6), Ui.dp(context, 8), Ui.dp(context, 2));
        addView(state, stateSize);
        android.widget.HorizontalScrollView keyViewport = new android.widget.HorizontalScrollView(context);
        keyViewport.setHorizontalScrollBarEnabled(false);
        LinearLayout keys = new LinearLayout(context);
        keys.setPadding(Ui.dp(context, 5), Ui.dp(context, 4), Ui.dp(context, 5), Ui.dp(context, 4));
        web = new WebView(context);
        web.setBackgroundColor(Ui.SURFACE);
        web.getSettings().setJavaScriptEnabled(true);
        web.getSettings().setDomStorageEnabled(true);
        web.getSettings().setDefaultTextEncodingName("UTF-8");
        web.getSettings().setAllowFileAccess(true);
        web.setWebViewClient(new WebViewClient());
        web.addJavascriptInterface(new Bridge(), "Native");
        web.setFocusableInTouchMode(true);
        web.setOnTouchListener((view, event) -> {
            if (event.getActionMasked() == MotionEvent.ACTION_DOWN) view.requestFocus();
            return false;
        });
        addKey(keys, "Esc", "\u001b");
        addKey(keys, "Tab", "\t");
        addKey(keys, "Ctrl-C", "\u0003");
        addKey(keys, "↑", "\u001b[A");
        addKey(keys, "↓", "\u001b[B");
        android.widget.Button copy = Ui.button(context, "Copy", view -> web.evaluateJavascript("Native.copy(term.getSelection())", null));
        copy.setContentDescription("Terminal Copy");
        keys.addView(copy, keySize(66));
        android.widget.Button paste = Ui.button(context, "Paste", view -> {
            ClipboardManager clipboard = context.getSystemService(ClipboardManager.class);
            if (clipboard.hasPrimaryClip()) {
                CharSequence value = clipboard.getPrimaryClip().getItemAt(0).coerceToText(context);
                web.evaluateJavascript("term.paste(" + JSONObject.quote(value.toString()) + ")", null);
            }
        });
        paste.setContentDescription("Terminal Paste");
        Ui.action(paste, Ui.INFO, false);
        keys.addView(paste, keySize(68));
        android.widget.Button smaller = Ui.button(context, "A−", view -> web.evaluateJavascript("changeFontSize(-1)", null));
        smaller.setContentDescription("Terminal smaller text");
        keys.addView(smaller, keySize(52));
        android.widget.Button larger = Ui.button(context, "A+", view -> web.evaluateJavascript("changeFontSize(1)", null));
        larger.setContentDescription("Terminal larger text");
        keys.addView(larger, keySize(52));
        keyViewport.addView(keys);
        addView(keyViewport, new LinearLayout.LayoutParams(-1, Ui.dp(context, 56)));
        addView(web, new LinearLayout.LayoutParams(-1, 0, 1));
        web.loadUrl("file:///android_asset/terminal/index.html");
    }

    private void addKey(LinearLayout bar, String label, String text) {
        android.widget.Button button = Ui.button(getContext(), label, view -> { if (session != null) session.input(text); web.requestFocus(); });
        button.setContentDescription("Terminal " + label);
        if ("Ctrl-C".equals(label)) Ui.action(button, Ui.ERROR, false);
        bar.addView(button, keySize("Ctrl-C".equals(label) ? 80 : 52));
    }

    private LinearLayout.LayoutParams keySize(int width) {
        LinearLayout.LayoutParams size = new LinearLayout.LayoutParams(Ui.dp(getContext(), width), Ui.dp(getContext(), 48));
        size.rightMargin = Ui.dp(getContext(), 5);
        return size;
    }

    void attach(TerminalSession terminal) {
        if (session == terminal) return;
        if (session != null) session.unlisten(this);
        session = terminal;
        Ui.status(state, terminal.isRunning() ? "Shell ready  /bin/bash" : "Shell stopped", terminal.isRunning() ? Ui.SUCCESS : Ui.MUTED);
        session.listen(this);
        if (loaded) web.evaluateJavascript("fitTerminal()", null);
    }

    void dispose() {
        if (session != null) session.unlisten(this);
        web.removeJavascriptInterface("Native");
        web.destroy();
    }

    void input(String text) { if (session != null) session.input(text); }

    @Override public void output(byte[] bytes) {
        if (!loaded) { pending.add(bytes); return; }
        String encoded = Base64.encodeToString(bytes, Base64.NO_WRAP);
        web.evaluateJavascript("receive(" + JSONObject.quote(encoded) + ")", null);
    }

    @Override public void ended(int status) {
        Ui.status(state, "Shell exited  " + status, status == 0 ? Ui.MUTED : Ui.ERROR);
        output(("\r\n[Session ended: " + status + "]\r\n").getBytes(java.nio.charset.StandardCharsets.UTF_8));
    }

    final class Bridge {
        @JavascriptInterface public void ready() {
            post(() -> {
                loaded = true;
                for (byte[] bytes : pending) output(bytes);
                pending.clear();
            });
        }
        @JavascriptInterface public void input(String text) { post(() -> { if (session != null) session.input(text); }); }
        @JavascriptInterface public void resize(int columns, int rows) { post(() -> { if (session != null) session.resize(columns, rows); }); }
        @JavascriptInterface public void focus() {
            post(() -> {
                web.requestFocus();
                getContext().getSystemService(InputMethodManager.class).showSoftInput(web, InputMethodManager.SHOW_IMPLICIT);
            });
        }
        @JavascriptInterface public void copy(String text) {
            post(() -> {
                if (text.isEmpty()) { Toast.makeText(getContext(), "Hold and drag to select terminal text", Toast.LENGTH_SHORT).show(); return; }
                getContext().getSystemService(ClipboardManager.class).setPrimaryClip(ClipData.newPlainText("Terminal", text));
            });
        }
    }
}
