package com.ayrvokan.widgets;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Typeface;
import android.text.InputType;
import android.text.TextUtils;
import android.view.Gravity;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

final class FilesPane extends LinearLayout {
    interface Host { void pathChanged(String path); void terminalAt(String path); }
    final Host host;
    final ListView list;
    final TextView location;
    final TextView status;
    final List<JSONObject> entries = new ArrayList<>();
    final List<JSONObject> visible = new ArrayList<>();
    final EditText filter;
    final TextView empty;
    LinuxService service;
    String path;
    private int request;

    FilesPane(Context context, String initialPath, Host host) {
        super(context);
        this.host = host;
        path = initialPath;
        setOrientation(VERTICAL);
        setBackgroundColor(Ui.PANEL);
        LinearLayout tools = new LinearLayout(context);
        tools.setPadding(Ui.dp(context, 6), Ui.dp(context, 4), Ui.dp(context, 6), Ui.dp(context, 4));
        tools.addView(Ui.button(context, "↑", view -> navigate(parent(path))), new LayoutParams(Ui.dp(context, 48), Ui.dp(context, 48)));
        location = Ui.text(context, path, 13, Ui.TEXT);
        location.setContentDescription("Files current path");
        location.setTooltipText("Choose a Linux folder");
        location.setSingleLine(true);
        location.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        location.setPadding(Ui.dp(context, 10), 0, Ui.dp(context, 6), 0);
        location.setOnClickListener(view -> prompt("Go to Linux folder", path, value -> navigate(value.startsWith("/") ? value : path + "/" + value)));
        tools.addView(location, new LayoutParams(0, Ui.dp(context, 48), 1));
        tools.addView(Ui.button(context, "↻", view -> refresh()), new LayoutParams(Ui.dp(context, 48), Ui.dp(context, 48)));
        tools.addView(Ui.button(context, "+", view -> new AlertDialog.Builder(context).setTitle("Create").setItems(new String[]{"Text file", "Folder"}, (dialog, which) -> prompt(which == 0 ? "New text file" : "New folder", "", value -> {
            if (!validName(value)) { error("Enter a name without / or .."); return; }
            execute(which == 0 ? "create" : "mkdir", child(value), null, "", result -> refresh());
        })).show()), new LayoutParams(Ui.dp(context, 48), Ui.dp(context, 48)));
        addView(tools, new LayoutParams(-1, Ui.dp(context, 56)));
        filter = new EditText(context);
        filter.setSingleLine(true);
        filter.setTextSize(13);
        filter.setHint("Find in this folder…");
        filter.setContentDescription("Files name filter");
        Ui.input(filter, Ui.WARNING);
        LayoutParams searchSize = new LayoutParams(-1, Ui.dp(context, 46));
        searchSize.setMargins(Ui.dp(context, 8), Ui.dp(context, 2), Ui.dp(context, 8), Ui.dp(context, 6));
        addView(filter, searchSize);
        filter.addTextChangedListener(new android.text.TextWatcher() {
            @Override public void beforeTextChanged(CharSequence text, int start, int count, int after) { }
            @Override public void onTextChanged(CharSequence text, int start, int before, int count) { render(); }
            @Override public void afterTextChanged(android.text.Editable text) { }
        });
        list = new ListView(context);
        list.setContentDescription("Files entries");
        list.setPadding(Ui.dp(context, 4), 0, Ui.dp(context, 4), 0);
        list.setClipToPadding(false);
        list.setBackgroundColor(Ui.PANEL);
        list.setDivider(new android.graphics.drawable.ColorDrawable(0xff263448));
        list.setDividerHeight(Ui.dp(context, 1));
        list.setOnItemClickListener((parent, view, position, id) -> {
            JSONObject entry = visible.get(position);
            if (entry.optBoolean("directory")) navigate(entry.optString("path"));
            else edit(entry.optString("path"));
        });
        list.setOnItemLongClickListener((parent, view, position, id) -> {
            JSONObject entry = visible.get(position);
            String entryPath = entry.optString("path");
            new AlertDialog.Builder(context).setTitle(entry.optString("name")).setItems(new String[]{"Open", "Rename", "Open terminal here", "Copy path", "Delete"}, (dialog, which) -> {
                if (which == 0) {
                    if (entry.optBoolean("directory")) navigate(entryPath); else edit(entryPath);
                } else if (which == 1) {
                    prompt("Rename", entry.optString("name"), value -> {
                        if (!validName(value)) { error("Enter a name without / or .."); return; }
                        execute("rename", entryPath, value, null, result -> refresh());
                    });
                } else if (which == 2) host.terminalAt(entry.optBoolean("directory") ? entryPath : path);
                else if (which == 3) context.getSystemService(android.content.ClipboardManager.class).setPrimaryClip(android.content.ClipData.newPlainText("Linux path", entryPath));
                else new AlertDialog.Builder(context).setTitle("Delete " + entry.optString("name") + "?").setMessage("This removes the item from Kali.").setNegativeButton("Cancel", null).setPositiveButton("Delete", (confirm, button) -> execute("delete", entryPath, null, null, result -> refresh())).show();
            }).show();
            return true;
        });
        android.widget.FrameLayout listing = new android.widget.FrameLayout(context);
        listing.addView(list, new android.widget.FrameLayout.LayoutParams(-1, -1));
        empty = Ui.text(context, "", 14, Ui.MUTED);
        empty.setGravity(Gravity.CENTER);
        empty.setPadding(Ui.dp(context, 20), Ui.dp(context, 16), Ui.dp(context, 20), Ui.dp(context, 16));
        empty.setContentDescription("Files empty state");
        listing.addView(empty, new android.widget.FrameLayout.LayoutParams(-1, -1));
        list.setEmptyView(empty);
        addView(listing, new LayoutParams(-1, 0, 1));
        status = Ui.text(context, "Waiting for Kali…", 12, Ui.WARNING);
        status.setContentDescription("Files status");
        status.setPadding(Ui.dp(context, 12), 0, Ui.dp(context, 12), 0);
        addView(status, new LayoutParams(-1, Ui.dp(context, 32)));
    }

    void connect(LinuxService service) { if (this.service == service) return; this.service = service; refresh(); }
    void navigate(String next) { path = next.isEmpty() ? "/" : next; filter.setText(""); refresh(); }
    private String child(String name) { return path.equals("/") ? "/" + name : path + "/" + name; }
    private static String parent(String path) { int index = path.lastIndexOf('/'); return index <= 0 ? "/" : path.substring(0, index); }
    private static boolean validName(String name) { return !name.isEmpty() && !name.equals(".") && !name.equals("..") && !name.contains("/"); }

    void refresh() {
        if (service == null || !service.ready) return;
        status.setText("Loading folder…");
        status.setTextColor(Ui.INFO);
        int current = ++request;
        execute("list", path, null, null, result -> {
            if (current != request) return;
            path = result.optString("path", path);
            location.setText(path);
            host.pathChanged(path);
            entries.clear();
            JSONArray files = result.optJSONArray("entries");
            if (files != null) for (int i = 0; i < files.length(); i++) entries.add(files.optJSONObject(i));
            render();
        });
    }

    private void render() {
        if (list == null || status == null) return;
        String query = filter.getText().toString().trim().toLowerCase(java.util.Locale.ROOT);
        visible.clear();
        for (JSONObject entry : entries) if (query.isEmpty() || entry.optString("name").toLowerCase(java.util.Locale.ROOT).contains(query)) visible.add(entry);
        ArrayAdapter<JSONObject> adapter = new ArrayAdapter<JSONObject>(getContext(), android.R.layout.simple_list_item_2, android.R.id.text1, visible) {
            @Override public android.view.View getView(int position, android.view.View reusable, android.view.ViewGroup parent) {
                android.view.View view = super.getView(position, reusable, parent);
                JSONObject entry = getItem(position);
                TextView name = view.findViewById(android.R.id.text1);
                TextView detail = view.findViewById(android.R.id.text2);
                boolean folder = entry.optBoolean("directory");
                name.setText((folder ? "▸  " : "    ") + entry.optString("name"));
                name.setTextColor(folder ? Ui.WARNING : fileColor(entry.optString("name")));
                name.setTextSize(15);
                name.setTypeface(Typeface.create("sans-serif-medium", Typeface.NORMAL));
                detail.setText(folder ? "Folder" : format(entry.optLong("bytes")) + (entry.optBoolean("link") ? " · link" : "") + " · " + fileKind(entry.optString("name")));
                detail.setTextColor(Ui.MUTED);
                detail.setTextSize(12);
                view.setMinimumHeight(Ui.dp(getContext(), 68));
                view.setContentDescription("Linux " + (folder ? "folder: " : "file: ") + entry.optString("name"));
                return view;
            }
        };
        list.setAdapter(adapter);
        empty.setText(query.isEmpty() ? "This folder is empty\nTap + to create a file or folder" : "No matching names\nTry another search");
        status.setText((query.isEmpty() ? entries.size() + " items" : visible.size() + " of " + entries.size() + " items") + "  ·  Hold an item for actions");
        status.setTextColor(Ui.MUTED);
    }

    private static int fileColor(String name) {
        String kind = fileKind(name);
        return "Code".equals(kind) ? Ui.INFO : "Document".equals(kind) ? Ui.VIOLET : "Configuration".equals(kind) ? Ui.SUCCESS : Ui.TEXT;
    }

    private static String fileKind(String name) {
        String lower = name.toLowerCase(java.util.Locale.ROOT);
        if (lower.endsWith(".md") || lower.endsWith(".txt") || lower.endsWith(".html")) return "Document";
        if (lower.endsWith(".json") || lower.endsWith(".yaml") || lower.endsWith(".yml") || lower.endsWith(".toml")) return "Configuration";
        if (lower.endsWith(".rs") || lower.endsWith(".py") || lower.endsWith(".java") || lower.endsWith(".js") || lower.endsWith(".sh")) return "Code";
        return "File";
    }

    private static String format(long bytes) { return bytes < 1024 ? bytes + " B" : bytes < 1048576 ? String.format(java.util.Locale.ROOT, "%.1f KB", bytes / 1024.0) : String.format(java.util.Locale.ROOT, "%.1f MB", bytes / 1048576.0); }

    interface Result { void complete(JSONObject result); }
    private void execute(String operation, String target, String extra, String content, Result callback) {
        if (service == null || !service.ready) { error("Kali is still starting"); return; }
        LinuxService backend = service;
        backend.operations.execute(() -> {
            try {
                JSONObject result = backend.runtime.filesystem(operation, target, extra, content);
                post(() -> callback.complete(result));
            } catch (Exception failure) { post(() -> { status.setText(failure.getMessage()); status.setTextColor(Ui.ERROR); error(failure.getMessage()); }); }
        });
    }

    private void edit(String target) {
        execute("read", target, null, null, result -> {
            EditText editor = new EditText(getContext());
            editor.setText(result.optString("text"));
            editor.setTextColor(Ui.TEXT);
            editor.setTextSize(14);
            editor.setTypeface(Typeface.MONOSPACE);
            Ui.input(editor, Ui.WARNING);
            editor.setGravity(Gravity.TOP | Gravity.START);
            editor.setInputType(InputType.TYPE_CLASS_TEXT | InputType.TYPE_TEXT_FLAG_MULTI_LINE | InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
            editor.setMinLines(8);
            editor.setPadding(Ui.dp(getContext(), 16), Ui.dp(getContext(), 12), Ui.dp(getContext(), 16), Ui.dp(getContext(), 12));
            AlertDialog dialog = new AlertDialog.Builder(getContext()).setTitle(new File(target).getName()).setView(editor).setNegativeButton("Cancel", null).setPositiveButton("Save", null).create();
            dialog.setOnShowListener(ignored -> dialog.getButton(AlertDialog.BUTTON_POSITIVE).setOnClickListener(view -> execute("write", target, null, editor.getText().toString(), saved -> { dialog.dismiss(); refresh(); })));
            dialog.show();
        });
    }

    interface Value { void accept(String value); }
    private void prompt(String title, String initial, Value callback) {
        EditText input = new EditText(getContext());
        input.setSingleLine(true);
        Ui.input(input, Ui.WARNING);
        input.setText(initial);
        input.setSelectAllOnFocus(true);
        input.setPadding(Ui.dp(getContext(), 20), Ui.dp(getContext(), 12), Ui.dp(getContext(), 20), Ui.dp(getContext(), 12));
        new AlertDialog.Builder(getContext()).setTitle(title).setView(input).setNegativeButton("Cancel", null).setPositiveButton("OK", (dialog, button) -> callback.accept(input.getText().toString().trim())).show();
    }

    private void error(String message) { android.widget.Toast.makeText(getContext(), message, android.widget.Toast.LENGTH_LONG).show(); }
}
