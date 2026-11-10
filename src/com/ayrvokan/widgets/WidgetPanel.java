package com.ayrvokan.widgets;

import android.content.Context;
import android.graphics.Typeface;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.json.JSONObject;

final class WidgetPanel extends FrameLayout {
    interface Host { void saveLayout(); void close(WidgetPanel panel); void focus(WidgetPanel panel); }
    final JSONObject state;
    final Host host;
    final FrameLayout content;
    final String id;
    final String plugin;
    TerminalPane terminal;
    FilesPane files;
    AgentPane agent;
    VekilPane vekil;
    ProxyPane proxy;
    NetworkPane network;
    DiktePane dikte;
    ConsolePane console;
    private int pointer = -1;
    private float startX;
    private float startY;
    private int left;
    private int top;
    private int width;
    private int height;
    private boolean resizing;
    private final LinearLayout header;
    private final android.widget.Button expand;
    private final TextView resize;

    WidgetPanel(Context context, JSONObject state, String title, Host host) {
        super(context);
        this.state = state;
        this.host = host;
        id = state.optString("id");
        plugin = state.optString("plugin");
        setContentDescription("widget:" + id);
        setElevation(Ui.dp(context, 5));
        setClipToOutline(true);
        setBackground(Ui.background(Ui.PANEL, Ui.blend(Ui.LINE, Ui.accent(plugin), 0.22f), 12, context));
        LinearLayout structure = new LinearLayout(context);
        structure.setOrientation(LinearLayout.VERTICAL);
        structure.setPadding(Ui.dp(context, 1), Ui.dp(context, 1), Ui.dp(context, 1), Ui.dp(context, 12));
        header = new LinearLayout(context);
        header.setPadding(Ui.dp(context, 8), 0, Ui.dp(context, 4), 0);
        header.setGravity(Gravity.CENTER_VERTICAL);
        header.setBackground(Ui.background(Ui.HEADER, Ui.HEADER, 12, context));
        TextView icon = Ui.icon(context, plugin);
        icon.setOnTouchListener((view, event) -> gesture(event, false));
        header.addView(icon, new LinearLayout.LayoutParams(Ui.dp(context, 34), Ui.dp(context, 30)));
        TextView label = Ui.text(context, title, 15, Ui.TEXT);
        label.setTypeface(null, Typeface.BOLD);
        label.setPadding(Ui.dp(context, 10), 0, Ui.dp(context, 6), 0);
        label.setSingleLine(true);
        label.setEllipsize(android.text.TextUtils.TruncateAt.END);
        label.setContentDescription("Move " + title);
        label.setOnTouchListener((view, event) -> gesture(event, false));
        header.addView(label, new LinearLayout.LayoutParams(0, Ui.dp(context, 48), 1));
        expand = Ui.button(context, "□", view -> {
            try { state.put("fullscreen", !state.optBoolean("fullscreen")); } catch (Exception ignored) { }
            position();
            host.saveLayout();
        });
        expand.setContentDescription("Expand " + title);
        header.addView(expand, new LinearLayout.LayoutParams(Ui.dp(context, 48), Ui.dp(context, 48)));
        android.widget.Button close = Ui.button(context, "×", view -> host.close(this));
        close.setContentDescription("Close " + title);
        Ui.action(close, Ui.ERROR, false);
        header.addView(close, new LinearLayout.LayoutParams(Ui.dp(context, 48), Ui.dp(context, 48)));
        structure.addView(header, new LinearLayout.LayoutParams(-1, Ui.dp(context, 48)));
        content = new FrameLayout(context);
        structure.addView(content, new LinearLayout.LayoutParams(-1, 0, 1));
        addView(structure, new FrameLayout.LayoutParams(-1, -1));
        resize = Ui.text(context, "◢", 20, Ui.accent(plugin));
        resize.setGravity(Gravity.BOTTOM | Gravity.END);
        resize.setPadding(0, 0, Ui.dp(context, 4), 0);
        resize.setContentDescription("Resize " + title);
        resize.setOnTouchListener((view, event) -> gesture(event, true));
        FrameLayout.LayoutParams handle = new FrameLayout.LayoutParams(Ui.dp(context, 44), Ui.dp(context, 36), Gravity.BOTTOM | Gravity.END);
        addView(resize, handle);
    }

    void focused(boolean value) {
        setBackground(Ui.background(Ui.PANEL, value ? Ui.blend(Ui.LINE, Ui.accent(plugin), 0.65f) : Ui.LINE, 12, getContext()));
        header.setBackground(Ui.background(value ? Ui.blend(Ui.HEADER, Ui.accent(plugin), 0.1f) : Ui.HEADER, Ui.HEADER, 11, getContext()));
        setElevation(Ui.dp(getContext(), value ? 8 : 4));
    }

    void position() {
        if (!(getParent() instanceof FrameLayout)) return;
        FrameLayout desktop = (FrameLayout) getParent();
        int availableWidth = desktop.getWidth();
        int availableHeight = desktop.getHeight();
        if (availableWidth <= 0 || availableHeight <= 0) return;
        FrameLayout.LayoutParams layout = (FrameLayout.LayoutParams) getLayoutParams();
        int inset = Ui.dp(getContext(), 8);
        expand.setText(state.optBoolean("fullscreen") ? "❐" : "□");
        expand.setTooltipText(state.optBoolean("fullscreen") ? "Restore widget size" : "Expand widget");
        resize.setVisibility(state.optBoolean("fullscreen") ? GONE : VISIBLE);
        if (state.optBoolean("fullscreen")) {
            layout.width = Math.max(1, availableWidth - inset * 2);
            layout.height = Math.max(1, availableHeight - inset * 2);
            layout.leftMargin = inset;
            layout.topMargin = inset;
        } else {
            int minimumWidth = Math.min(Ui.dp(getContext(), 280), availableWidth);
            int minimumHeight = Math.min(Ui.dp(getContext(), 220), availableHeight);
            layout.width = Math.min(availableWidth, Math.max(minimumWidth, (int) (state.optDouble("w", 0.48) * availableWidth)));
            layout.height = Math.min(availableHeight, Math.max(minimumHeight, (int) (state.optDouble("h", 0.78) * availableHeight)));
            layout.leftMargin = Math.max(0, Math.min(availableWidth - layout.width, (int) (state.optDouble("x", 0.02) * availableWidth)));
            layout.topMargin = Math.max(0, Math.min(availableHeight - layout.height, (int) (state.optDouble("y", 0.04) * availableHeight)));
        }
        setLayoutParams(layout);
    }

    private boolean gesture(MotionEvent event, boolean resize) {
        FrameLayout desktop = (FrameLayout) getParent();
        if (desktop == null || state.optBoolean("fullscreen")) return true;
        FrameLayout.LayoutParams layout = (FrameLayout.LayoutParams) getLayoutParams();
        int action = event.getActionMasked();
        if (action == MotionEvent.ACTION_DOWN) {
            pointer = event.getPointerId(0);
            startX = event.getRawX(); startY = event.getRawY();
            left = layout.leftMargin; top = layout.topMargin; width = layout.width; height = layout.height;
            resizing = resize;
            host.focus(this);
            getParent().requestDisallowInterceptTouchEvent(true);
            return true;
        }
        if (action == MotionEvent.ACTION_MOVE && pointer >= 0) {
            int index = event.findPointerIndex(pointer);
            if (index < 0) return true;
            int dx = Math.round(event.getRawX(index) - startX);
            int dy = Math.round(event.getRawY(index) - startY);
            if (resizing) {
                layout.width = Math.min(desktop.getWidth() - layout.leftMargin, Math.max(Math.min(Ui.dp(getContext(), 280), desktop.getWidth()), width + dx));
                layout.height = Math.min(desktop.getHeight() - layout.topMargin, Math.max(Math.min(Ui.dp(getContext(), 220), desktop.getHeight()), height + dy));
            } else {
                layout.leftMargin = Math.max(0, Math.min(desktop.getWidth() - layout.width, left + dx));
                layout.topMargin = Math.max(0, Math.min(desktop.getHeight() - layout.height, top + dy));
            }
            setLayoutParams(layout);
            return true;
        }
        if (action == MotionEvent.ACTION_UP || action == MotionEvent.ACTION_CANCEL || (action == MotionEvent.ACTION_POINTER_UP && event.getPointerId(event.getActionIndex()) == pointer)) {
            pointer = -1;
            try {
                state.put("x", layout.leftMargin / (double) Math.max(1, desktop.getWidth()));
                state.put("y", layout.topMargin / (double) Math.max(1, desktop.getHeight()));
                state.put("w", layout.width / (double) Math.max(1, desktop.getWidth()));
                state.put("h", layout.height / (double) Math.max(1, desktop.getHeight()));
            } catch (Exception ignored) { }
            host.saveLayout();
            return true;
        }
        return true;
    }

    void connect(LinuxService service) {
        if (!service.ready) return;
        try {
            if (console != null) console.attach(service.console(id));
            if (terminal != null) terminal.attach(service.terminal(id));
            if (files != null) files.connect(service);
            if (agent != null) agent.attach(service.agent(id));
            if (vekil != null) vekil.attach(service.vekil(id));
            if (proxy != null && service.proxySession != null) proxy.attach(service.proxySession);
            if (network != null && service.networkSession != null) network.attach(service.networkSession);
            if (dikte != null && service.dikteSession != null) dikte.attach(service.dikteSession);
        } catch (Exception error) { android.widget.Toast.makeText(getContext(), error.getMessage(), android.widget.Toast.LENGTH_LONG).show(); }
    }

    void dispose() { if (console != null) console.dispose(); if (dikte != null) dikte.dispose(); if (terminal != null) terminal.dispose(); if (agent != null) agent.dispose(); if (vekil != null) vekil.dispose(); if (proxy != null) proxy.dispose(); if (network != null) network.dispose(); }
}
