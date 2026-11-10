package com.ayrvokan.widgets;

import android.accessibilityservice.AccessibilityService;
import android.accessibilityservice.AccessibilityButtonController;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityWindowInfo;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import org.json.JSONObject;

public final class DikteAccessibilityService extends AccessibilityService {
    static DikteAccessibilityService instance;
    static JSONObject bindings = defaults();
    AccessibilityNodeInfo lastEditable;
    AccessibilityNodeInfo destination;
    final Set<Integer> held = new HashSet<>();
    final AccessibilityButtonController.AccessibilityButtonCallback button = new AccessibilityButtonController.AccessibilityButtonCallback() {
        @Override public void onClicked(AccessibilityButtonController controller) { invoke("toggle"); }
    };

    static JSONObject defaults() {
        JSONObject value = new JSONObject();
        try { value.put("toggle", "Ctrl+Space"); value.put("cancel", "Ctrl+Alt+Space"); } catch (Exception ignored) { }
        return value;
    }

    @Override protected void onServiceConnected() {
        instance = this;
        getAccessibilityButtonController().registerAccessibilityButtonCallback(button);
    }

    @Override public void onAccessibilityEvent(AccessibilityEvent event) {
        AccessibilityNodeInfo node = event.getSource();
        if (node != null && node.isEditable() && node.isFocused()) lastEditable = node;
    }

    void capture() {
        if (lastEditable != null && lastEditable.refresh() && lastEditable.isEditable() && lastEditable.isFocused()) {
            destination = AccessibilityNodeInfo.obtain(lastEditable);
            return;
        }
        AccessibilityNodeInfo root = getRootInActiveWindow();
        AccessibilityNodeInfo focused = root == null ? null : root.findFocus(AccessibilityNodeInfo.FOCUS_INPUT);
        if (focused == null || !focused.isEditable()) {
            java.util.List<AccessibilityWindowInfo> windows = new java.util.ArrayList<>();
            if (android.os.Build.VERSION.SDK_INT >= 30) {
                android.util.SparseArray<java.util.List<AccessibilityWindowInfo>> displays = getWindowsOnAllDisplays();
                for (int i = 0; i < displays.size(); i++) windows.addAll(displays.valueAt(i));
            } else windows.addAll(getWindows());
            for (AccessibilityWindowInfo window : windows) {
                AccessibilityNodeInfo current = window.getRoot();
                AccessibilityNodeInfo candidate = current == null ? null : current.findFocus(AccessibilityNodeInfo.FOCUS_INPUT);
                if (candidate != null && candidate.isEditable()) { focused = candidate; if (window.isFocused()) break; }
            }
        }
        if (focused != null && focused.isEditable()) lastEditable = focused;
        destination = lastEditable == null ? null : AccessibilityNodeInfo.obtain(lastEditable);
    }

    void invoke(String command) {
        if ("toggle".equals(command) || "start".equals(command) || "record".equals(command)) capture();
        startActivity(new Intent(this, DikteCommandActivity.class).setAction("com.ayrvokan.widgets.DIKTE").putExtra("command", command).addFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_NO_ANIMATION));
    }

    static void captureTarget() { if (instance != null) instance.capture(); }

    static boolean insert(String text) {
        DikteAccessibilityService service = instance;
        if (service == null) return false;
        AccessibilityNodeInfo target = service.destination;
        if (target == null || !target.refresh() || !target.isEditable()) return false;
        service.getSystemService(ClipboardManager.class).setPrimaryClip(ClipData.newPlainText("Dikte", text));
        if (target.performAction(AccessibilityNodeInfo.ACTION_PASTE)) return true;
        String original = target.getText() == null ? "" : target.getText().toString();
        int start = target.getTextSelectionStart();
        int end = target.getTextSelectionEnd();
        if (start < 0 || end < 0 || start > original.length() || end > original.length()) return false;
        int first = Math.min(start, end);
        int last = Math.max(start, end);
        Bundle value = new Bundle();
        value.putCharSequence(AccessibilityNodeInfo.ACTION_ARGUMENT_SET_TEXT_CHARSEQUENCE, original.substring(0, first) + text + original.substring(last));
        if (!target.performAction(AccessibilityNodeInfo.ACTION_SET_TEXT, value)) return false;
        Bundle selection = new Bundle();
        selection.putInt(AccessibilityNodeInfo.ACTION_ARGUMENT_SELECTION_START_INT, first + text.length());
        selection.putInt(AccessibilityNodeInfo.ACTION_ARGUMENT_SELECTION_END_INT, first + text.length());
        target.performAction(AccessibilityNodeInfo.ACTION_SET_SELECTION, selection);
        return true;
    }

    boolean matches(KeyEvent event, String binding) {
        String[] parts = binding.toUpperCase(Locale.ROOT).split("\\+");
        int modifiers = 0;
        String key = "";
        for (String part : parts) {
            switch (part.trim()) {
                case "CTRL": case "CONTROL": modifiers |= KeyEvent.META_CTRL_ON; break;
                case "ALT": modifiers |= KeyEvent.META_ALT_ON; break;
                case "SHIFT": modifiers |= KeyEvent.META_SHIFT_ON; break;
                case "META": case "SUPER": case "WIN": modifiers |= KeyEvent.META_META_ON; break;
                default: key = part.trim();
            }
        }
        if ("RETURN".equals(key)) key = "ENTER";
        if ("ESC".equals(key)) key = "ESCAPE";
        return !key.isEmpty() && event.getKeyCode() == KeyEvent.keyCodeFromString("KEYCODE_" + key) && event.hasModifiers(modifiers);
    }

    @Override protected boolean onKeyEvent(KeyEvent event) {
        if (event.getAction() == KeyEvent.ACTION_UP) return held.remove(event.getKeyCode());
        if (held.contains(event.getKeyCode())) return true;
        if (event.getAction() != KeyEvent.ACTION_DOWN || event.getRepeatCount() != 0) return false;
        Iterator<String> names = bindings.keys();
        while (names.hasNext()) {
            String name = names.next();
            if (matches(event, bindings.optString(name))) { held.add(event.getKeyCode()); invoke(name); return true; }
        }
        return false;
    }

    @Override public void onInterrupt() { }
    @Override public void onDestroy() {
        getAccessibilityButtonController().unregisterAccessibilityButtonCallback(button);
        if (instance == this) instance = null;
        super.onDestroy();
    }
}
