package com.ayrvokan.widgets;

import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Typeface;
import android.net.Uri;
import android.view.Gravity;
import android.view.View;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

final class ProxyPane extends LinearLayout implements ProxySession.Observer {
    final TextView status;
    final TextView endpoint;
    final TextView output;
    final Button start;
    final Button stop;
    final ScrollView scroll;
    final FrameLayout body;
    ProxySession session;
    WebView panel;
    boolean showingPanel;
    int lastLength = -1;
    private final Button panelButton;
    private final Button logsButton;
    private final Button browserButton;

    ProxyPane(Context context) {
        super(context);
        setOrientation(VERTICAL);
        setBackgroundColor(Ui.PANEL);
        setPadding(Ui.dp(context, 10), Ui.dp(context, 5), Ui.dp(context, 10), 0);
        status = Ui.badge(context, "Preparing CLIProxyAPI…", Ui.WARNING);
        status.setContentDescription("CLIProxyAPI status");
        addView(status, new LayoutParams(-2, Ui.dp(context, 30)));
        endpoint = Ui.text(context, "Linux ARM64 · 8.0.60", 12, Ui.MUTED);
        endpoint.setTextIsSelectable(true);
        endpoint.setContentDescription("CLIProxyAPI endpoint");
        addView(endpoint, new LayoutParams(-1, Ui.dp(context, 28)));
        HorizontalScrollView bar = new HorizontalScrollView(context);
        bar.setHorizontalScrollBarEnabled(false);
        LinearLayout controls = new LinearLayout(context);
        controls.setGravity(Gravity.CENTER_VERTICAL);
        start = button(controls, "Start", view -> { if (session != null) session.start(); });
        Ui.action(start, Ui.SUCCESS, false);
        stop = button(controls, "Stop", view -> { if (session != null) session.stop(); });
        Ui.action(stop, Ui.ERROR, false);
        button(controls, "Settings", view -> settings());
        panelButton = button(controls, "Panel", view -> management(false));
        logsButton = button(controls, "Logs", view -> showLogs());
        Ui.action(logsButton, Ui.CYAN, false);
        browserButton = button(controls, "Browser", view -> management(true));
        button(controls, "Copy API", view -> { if (session != null) copy("CLIProxyAPI endpoint", session.endpoint() + "/v1"); });
        bar.addView(controls);
        addView(bar, new LayoutParams(-1, Ui.dp(context, 54)));
        body = new FrameLayout(context);
        scroll = new ScrollView(context);
        scroll.setBackground(Ui.background(Ui.SURFACE, Ui.LINE, 9, context));
        output = Ui.text(context, "CLIProxyAPI will start with your Linux workspace.\n", 12, Ui.TEXT);
        output.setTypeface(Typeface.MONOSPACE);
        output.setTextIsSelectable(true);
        output.setGravity(Gravity.TOP | Gravity.START);
        output.setContentDescription("CLIProxyAPI live log");
        output.setPadding(Ui.dp(context, 10), Ui.dp(context, 10), Ui.dp(context, 10), Ui.dp(context, 10));
        output.setLineSpacing(Ui.dp(context, 2), 1.05f);
        scroll.addView(output, new ScrollView.LayoutParams(-1, -2));
        body.addView(scroll, new FrameLayout.LayoutParams(-1, -1));
        addView(body, new LayoutParams(-1, 0, 1));
        start.setEnabled(false);
        stop.setEnabled(false);
    }

    private Button button(LinearLayout controls, String title, View.OnClickListener action) {
        Button button = Ui.button(getContext(), title, action);
        button.setContentDescription(title + " CLIProxyAPI");
        LinearLayout.LayoutParams layout = new LinearLayout.LayoutParams(-2, Ui.dp(getContext(), 48));
        layout.rightMargin = Ui.dp(getContext(), 5);
        controls.addView(button, layout);
        return button;
    }

    void attach(ProxySession value) {
        if (session == value) return;
        if (session != null) session.unobserve(this);
        session = value;
        session.observe(this);
    }

    @Override public void changed() {
        if (session == null) return;
        int tone = session.busy ? Ui.INFO : session.running ? "Running · API ready".equals(session.status) ? Ui.SUCCESS : Ui.WARNING : session.status.startsWith("Stopped") || "Settings saved".equals(session.status) ? Ui.MUTED : Ui.ERROR;
        Ui.status(status, session.status, tone);
        panelButton.setEnabled(session.running && !session.busy);
        browserButton.setEnabled(session.running && !session.busy);
        endpoint.setText(session.endpoint() + "/v1 · Linux ARM64");
        start.setEnabled(!session.running && !session.busy);
        stop.setEnabled(session.running && !session.busy);
        int length = session.logs.length();
        if (length != lastLength || length >= 40000) {
            boolean bottom = scroll.getChildAt(0).getHeight() - scroll.getHeight() - scroll.getScrollY() <= Ui.dp(getContext(), 80);
            android.text.SpannableString logs = new android.text.SpannableString(session.logs.toString());
            java.util.regex.Matcher severity = java.util.regex.Pattern.compile("(?im)^.*\\[(error|fatal|warn|warning|info)\\].*$").matcher(logs);
            while (severity.find()) {
                String level = severity.group(1).toLowerCase(java.util.Locale.ROOT);
                int color = level.startsWith("warn") ? Ui.WARNING : "info".equals(level) ? Ui.MUTED : Ui.ERROR;
                logs.setSpan(new android.text.style.ForegroundColorSpan(color), severity.start(), severity.end(), android.text.Spanned.SPAN_EXCLUSIVE_EXCLUSIVE);
            }
            output.setText(logs);
            lastLength = length;
            if (bottom) scroll.post(() -> scroll.fullScroll(View.FOCUS_DOWN));
        }
    }

    private void settings() {
        if (session == null) return;
        session.loadConfig((text, error) -> {
            if (error != null) { toast(error); return; }
            EditText editor = new EditText(getContext());
            editor.setTypeface(Typeface.MONOSPACE);
            Ui.input(editor, Ui.CYAN);
            editor.setTextSize(12);
            editor.setText(text);
            editor.setGravity(Gravity.TOP | Gravity.START);
            editor.setHorizontallyScrolling(true);
            editor.setContentDescription("CLIProxyAPI YAML settings");
            ScrollView viewport = new ScrollView(getContext());
            viewport.addView(editor, new ScrollView.LayoutParams(-1, -2));
            AlertDialog dialog = new AlertDialog.Builder(getContext()).setTitle("CLIProxyAPI · config.yaml").setView(viewport).setNegativeButton("Close", null).setNeutralButton("Copy management key", null).setPositiveButton("Save", null).create();
            dialog.setOnShowListener(ignored -> {
                dialog.getButton(AlertDialog.BUTTON_NEUTRAL).setOnClickListener(view -> copy("CLIProxyAPI management key", session.managementKey));
                dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(view -> session.saveConfig(editor.getText().toString(), (saved, failure) -> {
                    if (failure != null) toast(failure);
                    else { toast("Settings saved. Press Start to run."); dialog.dismiss(); }
                }));
            });
            dialog.show();
            dialog.getWindow().setLayout(Math.min(getResources().getDisplayMetrics().widthPixels - Ui.dp(getContext(), 32), Ui.dp(getContext(), 760)), (int) (getResources().getDisplayMetrics().heightPixels * 0.8));
        });
    }

    private void management(boolean browser) {
        if (session == null || !session.running) { toast("Start CLIProxyAPI first"); return; }
        copy("CLIProxyAPI management key", session.managementKey);
        toast("Management key copied. Paste it into the panel to sign in.");
        String url = session.endpoint() + "/management.html";
        if (browser) { external(url); return; }
        if (panel == null) {
            panel = new WebView(getContext());
            panel.setContentDescription("CLIProxyAPI management panel");
            panel.getSettings().setJavaScriptEnabled(true);
            panel.getSettings().setDomStorageEnabled(true);
            panel.setBackgroundColor(Ui.BACKGROUND);
            panel.setWebViewClient(new WebViewClient() {
                @Override public boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
                    Uri uri = request.getUrl();
                    if ("127.0.0.1".equals(uri.getHost()) && uri.getPort() == session.port) return false;
                    external(uri.toString());
                    return true;
                }
            });
            body.addView(panel, new FrameLayout.LayoutParams(-1, -1));
        }
        scroll.setVisibility(GONE);
        panel.setVisibility(VISIBLE);
        if (!showingPanel || !url.equals(panel.getUrl())) panel.loadUrl(url);
        showingPanel = true;
        Ui.action(panelButton, Ui.CYAN, true);
        Ui.action(logsButton, Ui.MUTED, false);
    }

    private void showLogs() {
        showingPanel = false;
        Ui.action(logsButton, Ui.CYAN, true);
        Ui.action(panelButton, Ui.MUTED, false);
        if (panel != null) panel.setVisibility(GONE);
        scroll.setVisibility(VISIBLE);
    }

    private void external(String url) {
        try { getContext().startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url)).addCategory(Intent.CATEGORY_BROWSABLE)); }
        catch (Exception error) { toast(error.getMessage()); }
    }

    private void copy(String label, String value) {
        ((ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE)).setPrimaryClip(ClipData.newPlainText(label, value));
    }

    private void toast(String value) { Toast.makeText(getContext(), value, Toast.LENGTH_LONG).show(); }
    void dispose() { if (session != null) session.unobserve(this); if (panel != null) { panel.destroy(); panel = null; } }
}
