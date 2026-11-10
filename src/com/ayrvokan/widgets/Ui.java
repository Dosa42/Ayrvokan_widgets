package com.ayrvokan.widgets;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.RippleDrawable;
import android.graphics.drawable.StateListDrawable;
import android.view.Gravity;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

final class Ui {
    static final int BACKGROUND = 0xff101723;
    static final int PANEL = 0xff182232;
    static final int HEADER = 0xff202e41;
    static final int SURFACE = 0xff111c2a;
    static final int LINE = 0xff35465d;
    static final int TEXT = 0xffe9eff7;
    static final int MUTED = 0xffa5b4c7;
    static final int ACCENT = 0xff5ddcb4;
    static final int SUCCESS = 0xff5ddcb4;
    static final int WARNING = 0xfff4c16b;
    static final int ERROR = 0xffff8192;
    static final int INFO = 0xff81bbff;
    static final int VIOLET = 0xffc1a7ff;
    static final int CYAN = 0xff70dce9;
    static final int ORANGE = 0xffffb17c;

    static int dp(Context context, float value) { return Math.round(value * context.getResources().getDisplayMetrics().density); }
    static int blend(int base, int color, float amount) {
        return Color.rgb(Math.round(Color.red(base) * (1 - amount) + Color.red(color) * amount), Math.round(Color.green(base) * (1 - amount) + Color.green(color) * amount), Math.round(Color.blue(base) * (1 - amount) + Color.blue(color) * amount));
    }
    static GradientDrawable background(int color, int border, int radius, Context context) {
        GradientDrawable drawable = new GradientDrawable();
        drawable.setColor(color);
        drawable.setCornerRadius(dp(context, radius));
        drawable.setStroke(dp(context, 1), border);
        return drawable;
    }
    static int accent(String plugin) {
        switch (plugin) {
            case "console": return CYAN;
            case "terminal": return INFO;
            case "files": return WARNING;
            case "agent": return VIOLET;
            case "vekil-kaan": return SUCCESS;
            case "cliproxy": return CYAN;
            case "network": return ORANGE;
            case "dikte": return ERROR;
            default: return MUTED;
        }
    }
    static String symbol(String plugin) {
        switch (plugin) {
            case "console": return "✚";
            case "terminal": return ">_";
            case "files": return "/";
            case "agent": return "A";
            case "vekil-kaan": return "VK";
            case "cliproxy": return "⇄";
            case "network": return "◎";
            case "dikte": return "●";
            default: return "◇";
        }
    }
    static String purpose(String plugin) {
        switch (plugin) {
            case "console": return "Live DOS, passive controller, MCP and CRT hook";
            case "terminal": return "Linux shell, touch keys and selection";
            case "files": return "Browse, edit and organize your workspace";
            case "agent": return "Your independent Rust agent with ChatGPT";
            case "vekil-kaan": return "Reactive, Heartbeat and local Gemma RAG";
            case "cliproxy": return "Provider connections, management and API logs";
            case "network": return "Live sockets, ports, hosts and MCP servers";
            case "dikte": return "Orijinal Dikte 2.4.0 · Linux uygulaması";
            default: return "Workspace widget";
        }
    }
    static TextView text(Context context, String text, int size, int color) {
        TextView view = new TextView(context);
        view.setText(text);
        view.setTextSize(size);
        view.setTextColor(color);
        view.setTypeface(Typeface.create("sans-serif", Typeface.NORMAL));
        view.setGravity(Gravity.CENTER_VERTICAL);
        view.setIncludeFontPadding(false);
        return view;
    }
    static TextView badge(Context context, String text, int color) {
        TextView view = text(context, "", 12, color);
        view.setSingleLine(true);
        status(view, text, color);
        return view;
    }
    static void status(TextView view, String text, int color) {
        if (android.text.TextUtils.equals(view.getText(), text) && Integer.valueOf(color).equals(view.getTag())) return;
        view.setTag(color);
        view.setText(text);
        view.setTextColor(color);
        view.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        view.setPadding(dp(view.getContext(), 10), 0, dp(view.getContext(), 10), 0);
        view.setBackground(background(blend(PANEL, color, 0.09f), blend(PANEL, color, 0.3f), 7, view.getContext()));
    }
    static TextView icon(Context context, String plugin) {
        TextView icon = text(context, symbol(plugin), 14, accent(plugin));
        icon.setTypeface(Typeface.MONOSPACE, Typeface.BOLD);
        icon.setGravity(Gravity.CENTER);
        icon.setBackground(background(blend(HEADER, accent(plugin), 0.12f), blend(HEADER, accent(plugin), 0.32f), 8, context));
        icon.setImportantForAccessibility(View.IMPORTANT_FOR_ACCESSIBILITY_NO);
        return icon;
    }
    static void input(EditText input, int color) {
        Context context = input.getContext();
        input.setTextColor(TEXT);
        input.setHintTextColor(MUTED);
        input.setPadding(dp(context, 12), dp(context, 10), dp(context, 12), dp(context, 10));
        StateListDrawable states = new StateListDrawable();
        states.addState(new int[]{android.R.attr.state_focused}, background(SURFACE, color, 9, context));
        states.addState(new int[]{}, background(SURFACE, LINE, 9, context));
        input.setBackground(states);
        input.setBackgroundTintList(null);
    }
    static Button button(Context context, String title, View.OnClickListener action) {
        Button button = new Button(context);
        button.setText(title);
        button.setTextSize(13);
        button.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
        button.setAllCaps(false);
        button.setMinWidth(0);
        button.setMinimumWidth(0);
        button.setPadding(dp(context, 13), 0, dp(context, 13), 0);
        button.setMinHeight(dp(context, 48));
        button.setMinimumHeight(dp(context, 48));
        button.setStateListAnimator(null);
        button.setSoundEffectsEnabled(false);
        button.setTooltipText(title);
        action(button, MUTED, false);
        button.setOnClickListener(action);
        return button;
    }
    static void action(Button button, int color, boolean filled) {
        Context context = button.getContext();
        StateListDrawable states = new StateListDrawable();
        states.addState(new int[]{-android.R.attr.state_enabled}, background(blend(PANEL, HEADER, 0.3f), blend(PANEL, LINE, 0.45f), 8, context));
        states.addState(new int[]{android.R.attr.state_focused}, background(blend(HEADER, color, 0.2f), color, 8, context));
        states.addState(new int[]{}, background(filled ? color : blend(HEADER, color, 0.07f), filled ? color : blend(HEADER, color, 0.32f), 8, context));
        button.setBackground(new RippleDrawable(ColorStateList.valueOf(blend(HEADER, color, 0.28f)), states, null));
        button.setBackgroundTintList(null);
        button.setTextColor(new ColorStateList(new int[][]{new int[]{-android.R.attr.state_enabled}, new int[]{}}, new int[]{blend(PANEL, MUTED, 0.5f), filled ? BACKGROUND : color == MUTED ? TEXT : color}));
    }
    static int phase(String value) {
        if (value == null) return MUTED;
        switch (value) {
            case "WAIT": case "RUNNING": return SUCCESS;
            case "OBSERVE": case "REASON": case "THINK": case "DECIDE": case "ACT": case "FEED": case "SENSE": case "STORE": case "VERIFY": return INFO;
            case "SAFE_HOLD": case "AWAIT_RESYNC": case "BROTHERHOOD_SLEEP": case "PAUSED": return WARNING;
            case "CHECKPOINT_HOLD": case "RECOVERY_FAILED": return ERROR;
            default: return MUTED;
        }
    }
}
