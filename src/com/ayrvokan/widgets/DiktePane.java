package com.ayrvokan.widgets;

import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.view.inputmethod.InputMethodManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.json.JSONObject;

final class DiktePane extends LinearLayout implements DikteSession.Observer {
    final WebView web;
    final TextView state;
    DikteSession session;
    String loaded = "";

    DiktePane(Context context) {
        super(context);
        setOrientation(VERTICAL);
        setBackgroundColor(Ui.SURFACE);
        web = new WebView(context);
        LinearLayout bar = new LinearLayout(context);
        state = Ui.badge(context, "Orijinal Dikte hazırlanıyor…", Ui.WARNING);
        state.setContentDescription("Dikte original application status");
        bar.addView(state, new LayoutParams(0, Ui.dp(context, 38), 1));
        android.widget.Button accessibility = Ui.button(context, "⌁", view -> context.startActivity(new android.content.Intent(android.provider.Settings.ACTION_ACCESSIBILITY_SETTINGS)));
        accessibility.setContentDescription("Dikte erişilebilirlik ve genel kısayollar");
        bar.addView(accessibility, new LayoutParams(Ui.dp(context, 48), Ui.dp(context, 38)));
        android.widget.Button keyboard = Ui.button(context, "⌨", view -> {
            web.requestFocus();
            web.evaluateJavascript("window.toggleKeyboard?.()", null);
            context.getSystemService(InputMethodManager.class).showSoftInput(web, InputMethodManager.SHOW_IMPLICIT);
        });
        keyboard.setContentDescription("Dikte Linux keyboard");
        bar.addView(keyboard, new LayoutParams(Ui.dp(context, 48), Ui.dp(context, 38)));
        android.widget.Button paste = Ui.button(context, "Yapıştır", view -> {
            ClipboardManager clipboard = context.getSystemService(ClipboardManager.class);
            if (clipboard.hasPrimaryClip()) web.evaluateJavascript("window.pasteClipboard?.("+JSONObject.quote(clipboard.getPrimaryClip().getItemAt(0).coerceToText(context).toString())+")",null);
        });
        paste.setContentDescription("Dikte Linux paste");
        bar.addView(paste, new LayoutParams(-2, Ui.dp(context, 38)));
        android.widget.Button home = Ui.button(context, "↻", view -> { if (session != null) { session.control("home"); if (session.ready) web.reload(); else session.start(); } });
        home.setContentDescription("Dikte show original application");
        bar.addView(home, new LayoutParams(Ui.dp(context, 48), Ui.dp(context, 38)));
        addView(bar, new LayoutParams(-1, Ui.dp(context, 40)));
        web.setContentDescription("Original Dikte Linux desktop");
        web.setBackgroundColor(Ui.SURFACE);
        web.getSettings().setJavaScriptEnabled(true);
        web.getSettings().setDomStorageEnabled(true);
        web.getSettings().setMixedContentMode(android.webkit.WebSettings.MIXED_CONTENT_ALWAYS_ALLOW);
        web.setWebViewClient(new WebViewClient());
        web.addJavascriptInterface(new Bridge(), "Native");
        web.setFocusableInTouchMode(true);
        addView(web, new LayoutParams(-1, 0, 1));
    }

    void attach(DikteSession value) { if (session == value) return; if (session != null) session.unobserve(this); session = value; session.observe(this); }
    void dispose() { if (session != null) session.unobserve(this); web.destroy(); }
    @Override public void changed() {
        if (session == null) return;
        Ui.status(state, session.status, session.ready ? Ui.SUCCESS : Ui.WARNING);
        if (session.ready && !loaded.equals(session.endpoint)) { loaded = session.endpoint; web.loadUrl(loaded); }
        if (session.permissionNeeded) { session.permissionNeeded = false; ((Activity)getContext()).requestPermissions(new String[]{android.Manifest.permission.RECORD_AUDIO},704); }
    }

    final class Bridge {
        @JavascriptInterface public void connected() { post(() -> Ui.status(state,"Dikte 2.4.0 · Linux",Ui.SUCCESS)); }
        @JavascriptInterface public void disconnected(String message) { post(() -> Ui.status(state,message,Ui.WARNING)); }
        @JavascriptInterface public void clipboard(String text) { post(() -> getContext().getSystemService(ClipboardManager.class).setPrimaryClip(ClipData.newPlainText("Dikte Linux",text))); }
    }
}
