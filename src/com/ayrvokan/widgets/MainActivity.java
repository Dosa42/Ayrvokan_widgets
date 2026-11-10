package com.ayrvokan.widgets;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Intent;
import android.content.ServiceConnection;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.IBinder;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONObject;

public final class MainActivity extends Activity implements WidgetPanel.Host, LinuxService.Observer {
    private Desktop desktop;
    private TextView runtimeStatus;
    private LinuxService service;
    private WidgetRegistry registry;
    private LinearLayout dock;
    private WidgetPanel focused;
    private boolean bound;
    private String gamePickerWidget;
    private final ServiceConnection connection = new ServiceConnection() {
        @Override public void onServiceConnected(ComponentName name, IBinder binder) {
            service = ((LinuxService.LocalBinder) binder).service();
            service.observe(MainActivity.this);
            service.armDikteMicrophone();
        }
        @Override public void onServiceDisconnected(ComponentName name) { service = null; Ui.status(runtimeStatus, "Linux stopped", Ui.ERROR); }
    };

    @Override public void onCreate(Bundle saved) {
        super.onCreate(saved);
        if (saved != null) gamePickerWidget = saved.getString("console-game-picker");
        getWindow().setSoftInputMode(WindowManager.LayoutParams.SOFT_INPUT_ADJUST_RESIZE);
        getWindow().setStatusBarColor(Ui.BACKGROUND);
        getWindow().setNavigationBarColor(Ui.BACKGROUND);
        LinearLayout screen = new LinearLayout(this);
        screen.setOrientation(LinearLayout.VERTICAL);
        screen.setBackgroundColor(Ui.BACKGROUND);
        screen.setOnApplyWindowInsetsListener((view, insets) -> {
            if (android.os.Build.VERSION.SDK_INT >= 30) {
                android.graphics.Insets bars = insets.getInsets(android.view.WindowInsets.Type.systemBars() | android.view.WindowInsets.Type.displayCutout());
                android.graphics.Insets keyboard = insets.getInsets(android.view.WindowInsets.Type.ime());
                view.setPadding(bars.left, bars.top, bars.right, Math.max(bars.bottom, keyboard.bottom));
            } else view.setPadding(insets.getSystemWindowInsetLeft(), insets.getSystemWindowInsetTop(), insets.getSystemWindowInsetRight(), insets.getSystemWindowInsetBottom());
            return insets;
        });
        LinearLayout bar = new LinearLayout(this);
        bar.setGravity(Gravity.CENTER_VERTICAL);
        bar.setPadding(Ui.dp(this, 14), Ui.dp(this, 8), Ui.dp(this, 10), Ui.dp(this, 8));
        TextView brand = Ui.text(this, "Ayrvokan", 19, Ui.TEXT);
        brand.setTypeface(null, Typeface.BOLD);
        bar.addView(brand, new LinearLayout.LayoutParams(-2, Ui.dp(this, 48)));
        runtimeStatus = Ui.badge(this, "Preparing Kali…", Ui.WARNING);
        runtimeStatus.setContentDescription("Ayrvokan runtime status");
        runtimeStatus.setPadding(Ui.dp(this, 16), 0, Ui.dp(this, 8), 0);
        runtimeStatus.setSingleLine(true);
        runtimeStatus.setEllipsize(android.text.TextUtils.TruncateAt.END);
        bar.addView(runtimeStatus, new LinearLayout.LayoutParams(-2, Ui.dp(this, 34)));
        bar.addView(new View(this), new LinearLayout.LayoutParams(0, 1, 1));
        android.widget.Button addWidget = Ui.button(this, "+ Widget", view -> showWidgets());
        addWidget.setContentDescription("Add workspace widget");
        Ui.action(addWidget, Ui.ACCENT, false);
        LinearLayout.LayoutParams addSize = new LinearLayout.LayoutParams(-2, Ui.dp(this, 48));
        addSize.leftMargin = Ui.dp(this, 10);
        bar.addView(addWidget, addSize);
        screen.addView(bar, new LinearLayout.LayoutParams(-1, Ui.dp(this, 64)));
        android.widget.HorizontalScrollView dockViewport = new android.widget.HorizontalScrollView(this);
        dockViewport.setHorizontalScrollBarEnabled(false);
        dockViewport.setContentDescription("Workspace widget switcher");
        dock = new LinearLayout(this);
        dock.setGravity(Gravity.CENTER_VERTICAL);
        dock.setPadding(Ui.dp(this, 12), 0, Ui.dp(this, 12), Ui.dp(this, 6));
        dockViewport.addView(dock);
        screen.addView(dockViewport, new LinearLayout.LayoutParams(-1, Ui.dp(this, 54)));
        desktop = new Desktop();
        screen.addView(desktop, new LinearLayout.LayoutParams(-1, 0, 1));
        TextView footer = Ui.text(this, "Tap a widget above to focus · Drag its title to move · Drag ◢ to resize", 11, Ui.MUTED);
        footer.setPadding(Ui.dp(this, 16), 0, Ui.dp(this, 12), 0);
        screen.addView(footer, new LinearLayout.LayoutParams(-1, Ui.dp(this, 28)));
        setContentView(screen);
        try { registry = new WidgetRegistry(this); }
        catch (Exception error) { throw new IllegalStateException(error); }
        restore();
        if (desktop.getChildCount() > 0) { focused = (WidgetPanel) desktop.getChildAt(desktop.getChildCount() - 1); focused.focused(true); }
        rebuildDock();
        Intent runtime = new Intent(this, LinuxService.class);
        startForegroundService(runtime);
        bound = bindService(runtime, connection, BIND_AUTO_CREATE);
    }

    private void restore() {
        String saved = getPreferences(MODE_PRIVATE).getString("layout", null);
        if (saved != null) {
            try {
                JSONArray widgets = new JSONArray(saved);
                for (int i = 0; i < widgets.length(); i++) add(widgets.getJSONObject(i));
                if (!getPreferences(MODE_PRIVATE).getBoolean("agent-default-added", false)) {
                    boolean found = false;
                    for (int i = 0; i < desktop.getChildCount(); i++) if ("agent".equals(((WidgetPanel) desktop.getChildAt(i)).plugin)) found = true;
                    if (!found) create("agent", null, desktop.getChildCount());
                    getPreferences(MODE_PRIVATE).edit().putBoolean("agent-default-added", true).apply();
                }
                if (!getPreferences(MODE_PRIVATE).getBoolean("cliproxy-default-added", false)) {
                    boolean found = false;
                    for (int i = 0; i < desktop.getChildCount(); i++) if ("cliproxy".equals(((WidgetPanel) desktop.getChildAt(i)).plugin)) found = true;
                    if (!found) create("cliproxy", null, desktop.getChildCount());
                    getPreferences(MODE_PRIVATE).edit().putBoolean("cliproxy-default-added", true).apply();
                }
                if (!getPreferences(MODE_PRIVATE).getBoolean("network-default-added", false)) {
                    boolean found = false;
                    for (int i = 0; i < desktop.getChildCount(); i++) if ("network".equals(((WidgetPanel) desktop.getChildAt(i)).plugin)) found = true;
                    if (!found) create("network", null, desktop.getChildCount());
                    getPreferences(MODE_PRIVATE).edit().putBoolean("network-default-added", true).apply();
                }
                if (!getPreferences(MODE_PRIVATE).getBoolean("vekil-default-added", false)) {
                    boolean found = false;
                    for (int i = 0; i < desktop.getChildCount(); i++) if ("vekil-kaan".equals(((WidgetPanel) desktop.getChildAt(i)).plugin)) found = true;
                    if (!found) create("vekil-kaan", null, desktop.getChildCount());
                    getPreferences(MODE_PRIVATE).edit().putBoolean("vekil-default-added", true).apply();
                }
                if (!getPreferences(MODE_PRIVATE).getBoolean("dikte-default-added", false)) {
                    create("dikte", null, desktop.getChildCount());
                    getPreferences(MODE_PRIVATE).edit().putBoolean("dikte-default-added", true).apply();
                }
                if (!getPreferences(MODE_PRIVATE).getBoolean("console-default-added", false)) {
                    create("console", null, desktop.getChildCount());
                    getPreferences(MODE_PRIVATE).edit().putBoolean("console-default-added", true).apply();
                    saveLayout();
                }
                return;
            } catch (Exception ignored) { desktop.removeAllViews(); }
        }
        create("dikte", null, 0);
        getPreferences(MODE_PRIVATE).edit().putBoolean("dikte-default-added", true).apply();
        create("terminal", null, 0);
        create("files", "/root/workspace", 1);
        create("agent", null, 2);
        create("cliproxy", null, 3);
        create("network", null, 4);
        create("vekil-kaan", null, 5);
        create("console", null, 6);
        getPreferences(MODE_PRIVATE).edit().putBoolean("console-default-added", true).apply();
        getPreferences(MODE_PRIVATE).edit().putBoolean("vekil-default-added", true).apply();
        getPreferences(MODE_PRIVATE).edit().putBoolean("network-default-added", true).apply();
        getPreferences(MODE_PRIVATE).edit().putBoolean("cliproxy-default-added", true).apply();
        getPreferences(MODE_PRIVATE).edit().putBoolean("agent-default-added", true).apply();
    }

    private void showWidgets() {
        LinearLayout choices = new LinearLayout(this);
        choices.setOrientation(LinearLayout.VERTICAL);
        choices.setPadding(Ui.dp(this, 12), Ui.dp(this, 4), Ui.dp(this, 12), Ui.dp(this, 8));
        android.widget.ScrollView viewport = new android.widget.ScrollView(this);
        viewport.addView(choices);
        AlertDialog dialog = new AlertDialog.Builder(this).setTitle("Add widget").setView(viewport).setNegativeButton("Close", null).create();
        for (JSONObject widget : registry.widgets) {
            String plugin = widget.optString("id");
            LinearLayout row = new LinearLayout(this);
            row.setGravity(Gravity.CENTER_VERTICAL);
            row.setPadding(Ui.dp(this, 10), Ui.dp(this, 8), Ui.dp(this, 10), Ui.dp(this, 8));
            row.addView(Ui.icon(this, plugin), new LinearLayout.LayoutParams(Ui.dp(this, 42), Ui.dp(this, 40)));
            LinearLayout labels = new LinearLayout(this);
            labels.setOrientation(LinearLayout.VERTICAL);
            labels.setPadding(Ui.dp(this, 12), 0, 0, 0);
            labels.addView(Ui.text(this, widget.optString("title"), 15, Ui.TEXT));
            TextView detail = Ui.text(this, Ui.purpose(plugin), 12, Ui.MUTED);
            detail.setMaxLines(2);
            labels.addView(detail);
            row.addView(labels, new LinearLayout.LayoutParams(0, -2, 1));
            row.setContentDescription("Add " + widget.optString("title") + " widget");
            row.setBackground(Ui.background(Ui.PANEL, Ui.LINE, 9, this));
            row.setOnClickListener(view -> { WidgetPanel panel = create(plugin, null, desktop.getChildCount()); focus(panel); dialog.dismiss(); });
            row.setFocusable(true);
            LinearLayout.LayoutParams size = new LinearLayout.LayoutParams(-1, Ui.dp(this, 72));
            size.bottomMargin = Ui.dp(this, 6);
            choices.addView(row, size);
        }
        dialog.show();
    }

    private void rebuildDock() {
        if (dock == null || desktop == null) return;
        dock.removeAllViews();
        for (int i = 0; i < desktop.getChildCount(); i++) {
            WidgetPanel panel = (WidgetPanel) desktop.getChildAt(i);
            String title;
            try { title = registry.get(panel.plugin).optString("title"); } catch (Exception error) { title = panel.plugin; }
            android.widget.Button button = Ui.button(this, Ui.symbol(panel.plugin) + "  " + title, view -> focus(panel));
            button.setContentDescription("Focus " + title + " widget");
            button.setTag(panel.id);
            button.setSelected(panel == focused);
            Ui.action(button, Ui.accent(panel.plugin), panel == focused);
            LinearLayout.LayoutParams size = new LinearLayout.LayoutParams(-2, Ui.dp(this, 48));
            size.rightMargin = Ui.dp(this, 6);
            dock.addView(button, size);
        }
    }

    @Override public void focus(WidgetPanel panel) {
        focused = panel;
        panel.bringToFront();
        for (int i = 0; i < desktop.getChildCount(); i++) ((WidgetPanel) desktop.getChildAt(i)).focused(desktop.getChildAt(i) == panel);
        for (int i = 0; i < dock.getChildCount(); i++) {
            android.widget.Button button = (android.widget.Button) dock.getChildAt(i);
            WidgetPanel target = null;
            for (int j = 0; j < desktop.getChildCount(); j++) if (((WidgetPanel) desktop.getChildAt(j)).id.equals(button.getTag())) target = (WidgetPanel) desktop.getChildAt(j);
            if (target != null) { Ui.action(button, Ui.accent(target.plugin), target == panel); button.setSelected(target == panel); }
        }
    }

    private WidgetPanel create(String plugin, String path, int index) {
        try {
            boolean wide = getResources().getConfiguration().screenWidthDp >= 760;
            JSONObject state = new JSONObject();
            state.put("id", UUID.randomUUID().toString());
            state.put("plugin", plugin);
            state.put("x", wide ? (index % 2 == 0 ? 0.02 : 0.52) : 0.02);
            state.put("y", wide ? 0.04 + (index / 2) * 0.04 : (index % 2 == 0 ? 0.02 : 0.51));
            state.put("w", wide ? 0.46 : 0.96);
            state.put("h", wide ? 0.86 : 0.46);
            if ("agent".equals(plugin)) {
                state.put("x", 0.08); state.put("y", 0.06); state.put("w", 0.84); state.put("h", 0.87);
            }
            if ("cliproxy".equals(plugin)) {
                state.put("x", 0.1); state.put("y", 0.09); state.put("w", 0.8); state.put("h", 0.82);
            }
            if ("network".equals(plugin)) {
                state.put("x", 0.06); state.put("y", 0.05); state.put("w", 0.88); state.put("h", 0.87);
            }
            if ("vekil-kaan".equals(plugin)) {
                state.put("x", 0.08); state.put("y", 0.06); state.put("w", 0.84); state.put("h", 0.87);
            }
            if ("console".equals(plugin)) { state.put("fullscreen", true); }
            if (path != null) state.put("path", path);
            WidgetPanel panel = add(state);
            saveLayout();
            return panel;
        } catch (Exception error) { throw new IllegalStateException(error); }
    }

    private WidgetPanel add(JSONObject state) throws Exception {
        JSONObject definition = registry.get(state.getString("plugin"));
        WidgetPanel panel = new WidgetPanel(this, state, definition.optString("title"), this);
        if ("builtin:console".equals(definition.optString("entry"))) {
            panel.console = new ConsolePane(this, () -> chooseConsoleGame(panel.id));
            panel.content.addView(panel.console, new FrameLayout.LayoutParams(-1, -1));
        } else if ("builtin:terminal".equals(definition.optString("entry"))) {
            panel.terminal = new TerminalPane(this);
            panel.content.addView(panel.terminal, new FrameLayout.LayoutParams(-1, -1));
        } else if ("builtin:files".equals(definition.optString("entry"))) {
            panel.files = new FilesPane(this, state.optString("path", "/root/workspace"), new FilesPane.Host() {
                @Override public void pathChanged(String path) {
                    try { state.put("path", path); } catch (Exception ignored) { }
                    saveLayout();
                }
                @Override public void terminalAt(String path) {
                    WidgetPanel terminal = create("terminal", null, desktop.getChildCount());
                    if (service != null && service.ready) terminal.terminal.input("cd -- '" + path.replace("'", "'\\''") + "'\r");
                }
            });
            panel.content.addView(panel.files, new FrameLayout.LayoutParams(-1, -1));
        } else if ("builtin:agent".equals(definition.optString("entry"))) {
            panel.agent = new AgentPane(this);
            panel.content.addView(panel.agent, new FrameLayout.LayoutParams(-1, -1));
        } else if ("builtin:cliproxy".equals(definition.optString("entry"))) {
            panel.proxy = new ProxyPane(this);
            panel.content.addView(panel.proxy, new FrameLayout.LayoutParams(-1, -1));
        } else if ("builtin:network".equals(definition.optString("entry"))) {
            panel.network = new NetworkPane(this);
            panel.content.addView(panel.network, new FrameLayout.LayoutParams(-1, -1));
        } else if ("builtin:vekil".equals(definition.optString("entry"))) {
            panel.vekil = new VekilPane(this);
            panel.content.addView(panel.vekil, new FrameLayout.LayoutParams(-1, -1));
        } else if ("builtin:dikte".equals(definition.optString("entry"))) {
            panel.dikte = new DiktePane(this);
            panel.content.addView(panel.dikte, new FrameLayout.LayoutParams(-1, -1));
        } else throw new IllegalStateException("Unknown widget entry");
        desktop.addView(panel, new FrameLayout.LayoutParams(Ui.dp(this, 400), Ui.dp(this, 340)));
        panel.post(panel::position);
        rebuildDock();
        if (service != null) panel.connect(service);
        return panel;
    }

    @Override public void changed() {
        if (service == null || isFinishing()) return;
        Ui.status(runtimeStatus, service.status, service.ready ? Ui.SUCCESS : service.status.toLowerCase(java.util.Locale.ROOT).contains("error") ? Ui.ERROR : Ui.WARNING);
        for (int i = 0; i < desktop.getChildCount(); i++) ((WidgetPanel) desktop.getChildAt(i)).connect(service);
    }

    @Override public void saveLayout() {
        if (desktop == null) return;
        JSONArray state = new JSONArray();
        for (int i = 0; i < desktop.getChildCount(); i++) state.put(((WidgetPanel) desktop.getChildAt(i)).state);
        getPreferences(MODE_PRIVATE).edit().putString("layout", state.toString()).apply();
    }

    @Override public void close(WidgetPanel panel) {
        if (service != null && panel.console != null) service.closeConsole(panel.id);
        if (service != null && panel.terminal != null) service.closeTerminal(panel.id);
        panel.dispose();
        desktop.removeView(panel);
        if (focused == panel) focused = null;
        rebuildDock();
        saveLayout();
    }

    private void chooseConsoleGame(String id) {
        gamePickerWidget = id;
        Intent picker = new Intent(Intent.ACTION_OPEN_DOCUMENT);
        picker.addCategory(Intent.CATEGORY_OPENABLE);
        picker.setType("*/*");
        picker.putExtra(android.provider.DocumentsContract.EXTRA_INITIAL_URI, android.net.Uri.parse("content://com.android.externalstorage.documents/document/primary%3ADownload"));
        startActivityForResult(picker, 705);
    }

    @Override public void onSaveInstanceState(Bundle saved) {
        super.onSaveInstanceState(saved);
        saved.putString("console-game-picker", gamePickerWidget);
    }

    @Override protected void onActivityResult(int request, int result, Intent data) {
        super.onActivityResult(request, result, data);
        if (request != 705 || result != RESULT_OK || data == null || data.getData() == null) return;
        final LinuxService owner = service;
        final String id = gamePickerWidget;
        final android.net.Uri uri = data.getData();
        if (owner == null || !owner.ready || id == null) return;
        owner.operations.execute(() -> {
            java.io.File target = null;
            try {
                String name = "game.zip";
                try (android.database.Cursor cursor = getContentResolver().query(uri, new String[]{android.provider.OpenableColumns.DISPLAY_NAME}, null, null, null)) {
                    if (cursor != null && cursor.moveToFirst() && !cursor.isNull(0)) name = cursor.getString(0);
                }
                name = name.replaceAll("[^A-Za-z0-9._-]", "_");
                String path = "/root/.local/share/ayrvokan-console/imports/" + UUID.randomUUID() + "/" + name;
                target = new java.io.File(owner.runtime.root, path.substring(1));
                target.getParentFile().mkdirs();
                try (java.io.InputStream input = getContentResolver().openInputStream(uri); java.io.FileOutputStream output = new java.io.FileOutputStream(target)) {
                    if (input == null) throw new IllegalStateException("Game file could not be opened");
                    byte[] buffer = new byte[65536];
                    int count;
                    while ((count = input.read(buffer)) >= 0) output.write(buffer, 0, count);
                }
                owner.main.post(() -> {
                    try { owner.console(id).load(path); }
                    catch (Exception error) { android.widget.Toast.makeText(this, error.getMessage(), android.widget.Toast.LENGTH_LONG).show(); }
                });
            } catch (Exception error) {
                if (target != null) target.delete();
                owner.main.post(() -> android.widget.Toast.makeText(this, error.getMessage(), android.widget.Toast.LENGTH_LONG).show());
            }
        });
    }

    @Override public void onResume() {
        super.onResume();
        if (service != null) service.armDikteMicrophone();
    }

    @Override public void onRequestPermissionsResult(int request, String[] permissions, int[] results) {
        super.onRequestPermissionsResult(request, permissions, results);
        if (request == 704 && service != null) service.armDikteMicrophone();
    }

    @Override public void onPause() { saveLayout(); super.onPause(); }

    @Override public void onDestroy() {
        if (service != null) service.unobserve(this);
        for (int i = 0; i < desktop.getChildCount(); i++) ((WidgetPanel) desktop.getChildAt(i)).dispose();
        if (bound) unbindService(connection);
        super.onDestroy();
    }

    final class Desktop extends FrameLayout {
        Desktop() { super(MainActivity.this); setClipChildren(true); setBackgroundColor(Ui.BACKGROUND); }
        @Override protected void onSizeChanged(int width, int height, int previousWidth, int previousHeight) {
            super.onSizeChanged(width, height, previousWidth, previousHeight);
            post(() -> { for (int i = 0; i < getChildCount(); i++) ((WidgetPanel) getChildAt(i)).position(); });
        }
    }
}
