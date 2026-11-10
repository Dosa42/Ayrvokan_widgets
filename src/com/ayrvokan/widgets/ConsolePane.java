package com.ayrvokan.widgets;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.util.Base64;
import android.view.Gravity;
import android.view.inputmethod.EditorInfo;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

final class ConsolePane extends LinearLayout implements TerminalSession.Listener, ConsoleSession.Observer {
    interface Host { void chooseGame(); }
    final WebView web;
    final TextView status;
    final android.widget.Button endpoint;
    final EditText command;
    final List<byte[]> pending = new ArrayList<>();
    ConsoleSession session;
    TerminalSession attached;
    boolean loaded;

    ConsolePane(Context context, Host host) {
        super(context);
        setOrientation(VERTICAL);
        setBackgroundColor(0xff08111d);
        LinearLayout bar = new LinearLayout(context);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(Ui.dp(context, 6), Ui.dp(context, 4), Ui.dp(context, 6), Ui.dp(context, 4));
        android.widget.Button game = Ui.button(context, "Oyun seç", view -> host.chooseGame());
        game.setContentDescription("Console choose external game");
        Ui.action(game, Ui.CYAN, false);
        bar.addView(game, new LinearLayout.LayoutParams(-2, Ui.dp(context, 44)));
        status = Ui.badge(context, "Preparing Linux…", Ui.WARNING);
        status.setContentDescription("Console runtime status");
        status.setEllipsize(android.text.TextUtils.TruncateAt.END);
        LinearLayout.LayoutParams badge = new LinearLayout.LayoutParams(0, Ui.dp(context, 30), 1);
        badge.setMargins(Ui.dp(context, 8), 0, Ui.dp(context, 8), 0);
        bar.addView(status, badge);
        endpoint = Ui.button(context, "MCP", view -> {
            if (session == null || session.mcp.isEmpty()) return;
            context.getSystemService(ClipboardManager.class).setPrimaryClip(ClipData.newPlainText("Console MCP", session.mcp));
            Toast.makeText(context, session.mcp + " copied", Toast.LENGTH_SHORT).show();
        });
        endpoint.setContentDescription("Copy console MCP endpoint");
        Ui.action(endpoint, Ui.SUCCESS, false);
        bar.addView(endpoint, new LinearLayout.LayoutParams(-2, Ui.dp(context, 44)));
        android.widget.Button restart = Ui.button(context, "↻", view -> { if (session != null) session.restart(); });
        restart.setContentDescription("Restart console runtime");
        bar.addView(restart, new LinearLayout.LayoutParams(Ui.dp(context, 48), Ui.dp(context, 44)));
        addView(bar, new LinearLayout.LayoutParams(-1, Ui.dp(context, 52)));
        web = new WebView(context);
        web.setBackgroundColor(0xff08111d);
        web.getSettings().setJavaScriptEnabled(true);
        web.getSettings().setAllowFileAccess(true);
        web.setWebViewClient(new WebViewClient());
        web.addJavascriptInterface(new Bridge(), "Native");
        web.setContentDescription("Live DOS screen and passive MCP controller");
        web.setFocusable(false);
        addView(web, new LinearLayout.LayoutParams(-1, 0, 1));
        LinearLayout input = new LinearLayout(context);
        input.setGravity(Gravity.CENTER_VERTICAL);
        input.setPadding(Ui.dp(context, 8), Ui.dp(context, 4), Ui.dp(context, 8), Ui.dp(context, 6));
        command = new EditText(context);
        command.setSingleLine(true);
        command.setTextSize(13);
        command.setHint("/help · /tool start · /pause");
        command.setContentDescription("Console CLI command");
        command.setInputType(android.text.InputType.TYPE_CLASS_TEXT | android.text.InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        command.setImeOptions(EditorInfo.IME_ACTION_SEND);
        Ui.input(command, Ui.CYAN);
        command.setOnEditorActionListener((view, action, event) -> {
            if (action == EditorInfo.IME_ACTION_SEND || (event != null && event.getKeyCode() == android.view.KeyEvent.KEYCODE_ENTER && event.getAction() == android.view.KeyEvent.ACTION_DOWN)) { send(); return true; }
            return false;
        });
        input.addView(command, new LinearLayout.LayoutParams(0, Ui.dp(context, 44), 1));
        android.widget.Button send = Ui.button(context, "Gönder", view -> send());
        send.setContentDescription("Send console CLI command");
        Ui.action(send, Ui.CYAN, false);
        LinearLayout.LayoutParams sendSize = new LinearLayout.LayoutParams(-2, Ui.dp(context, 44));
        sendSize.leftMargin = Ui.dp(context, 6);
        input.addView(send, sendSize);
        addView(input, new LinearLayout.LayoutParams(-1, Ui.dp(context, 54)));
        web.loadUrl("file:///android_asset/console/index.html");
    }

    private void send() {
        String text = command.getText().toString();
        if (session == null || !session.ready || text.trim().isEmpty()) return;
        session.command(text);
        command.setText("");
    }

    void attach(ConsoleSession next) {
        if (session == next) return;
        if (session != null) session.unobserve(this);
        session = next;
        session.observe(this);
    }

    @Override public void changed() {
        if (session == null) return;
        if (attached != session.terminal) {
            if (attached != null) attached.unlisten(this);
            pending.clear();
            attached = session.terminal;
            if (loaded) web.evaluateJavascript("resetConsole()", null);
            attached.listen(this);
            session.resize(90, 46);
        }
        Ui.status(status, session.status, session.ready ? Ui.SUCCESS : attached.isRunning() ? Ui.WARNING : Ui.ERROR);
        endpoint.setEnabled(session.ready);
        endpoint.setTooltipText(session.mcp.isEmpty() ? "Waiting for MCP" : session.mcp);
        command.setEnabled(session.ready);
    }

    @Override public void output(byte[] bytes) {
        if (!loaded) { pending.add(bytes); return; }
        web.evaluateJavascript("receive(" + JSONObject.quote(Base64.encodeToString(bytes, Base64.NO_WRAP)) + ")", null);
    }
    @Override public void ended(int code) { }
    void dispose() {
        if (session != null) session.unobserve(this);
        if (attached != null) attached.unlisten(this);
        web.removeJavascriptInterface("Native");
        web.destroy();
    }

    final class Bridge {
        @JavascriptInterface public void ready() {
            post(() -> {
                loaded = true;
                for (byte[] bytes : pending) output(bytes);
                pending.clear();
            });
        }
    }
}
