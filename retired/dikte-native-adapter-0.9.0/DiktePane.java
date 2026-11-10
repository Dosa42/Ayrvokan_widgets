package com.ayrvokan.widgets;

import android.Manifest;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import org.json.JSONArray;
import org.json.JSONObject;

final class DiktePane extends LinearLayout implements DikteSession.Observer {
    interface Host { void importAudio(DikteSession session, boolean subtitles); }
    final Host host;
    final TextView state;
    final TextView account;
    final TextView detail;
    final EditText result;
    final Button record;
    final Button pause;
    final Button stop;
    final Button cancel;
    final Meter meter;
    final LinearLayout controls;
    DikteSession session;
    String shown = "";

    DiktePane(Context context, Host host) {
        super(context);
        this.host = host;
        setOrientation(VERTICAL);
        setPadding(Ui.dp(context, 10), Ui.dp(context, 8), Ui.dp(context, 10), Ui.dp(context, 8));
        state = Ui.badge(context, "Dikte hazırlanıyor…", Ui.WARNING);
        state.setContentDescription("Dikte status");
        addView(state, new LayoutParams(-1, Ui.dp(context, 34)));
        account = Ui.text(context, "Groq · whisper-large-v3", 13, Ui.CYAN);
        account.setContentDescription("Dikte account");
        account.setOnClickListener(v -> accounts());
        addView(account, new LayoutParams(-1, Ui.dp(context, 42)));
        meter = new Meter(context);
        meter.setContentDescription("Dikte recording level");
        addView(meter, new LayoutParams(-1, Ui.dp(context, 44)));
        HorizontalScrollView viewport = new HorizontalScrollView(context);
        viewport.setHorizontalScrollBarEnabled(false);
        controls = new LinearLayout(context);
        record = button(controls, "● Kaydet", "Dikte record", v -> record());
        Ui.action(record, Ui.ERROR, false);
        pause = button(controls, "Duraklat", "Dikte pause", v -> { if (session != null) session.pause(); });
        stop = button(controls, "■ Çözümle", "Dikte stop", v -> { if (session != null) session.stopRecording(false); });
        Ui.action(stop, Ui.SUCCESS, false);
        cancel = button(controls, "İptal", "Dikte cancel", v -> { if (session != null) session.cancel(); });
        viewport.addView(controls);
        addView(viewport, new LayoutParams(-1, Ui.dp(context, 52)));
        LinearLayout actions = new LinearLayout(context);
        button(actions, "Geçmiş", "Dikte history", v -> history());
        button(actions, "Dosya", "Dikte file", v -> files());
        button(actions, "Ayarlar", "Dikte settings", v -> settings());
        button(actions, "Bağlantı", "Dikte probe", v -> probe());
        HorizontalScrollView actionView = new HorizontalScrollView(context);
        actionView.setHorizontalScrollBarEnabled(false);
        actionView.addView(actions);
        addView(actionView, new LayoutParams(-1, Ui.dp(context, 50)));
        result = new EditText(context);
        result.setTextSize(16);
        result.setGravity(android.view.Gravity.TOP);
        result.setHint("Konuşmanız burada yazıya dönüşecek…");
        result.setContentDescription("Dikte transcript");
        Ui.input(result, Ui.ERROR);
        addView(result, new LayoutParams(-1, 0, 1));
        LinearLayout export = new LinearLayout(context);
        button(export, "Kopyala", "Dikte copy", v -> {
            getContext().getSystemService(ClipboardManager.class).setPrimaryClip(ClipData.newPlainText("Dikte", result.getText().toString()));
            message("Metin kopyalandı");
        });
        button(export, "Kaydet", "Dikte save", v -> prompt("Linux'a kaydet", "/root/workspace/dikte.txt", value -> {
            if (session == null) return;
            JSONObject params = json("path", value);
            try { params.put("text", result.getText().toString()); } catch (Exception ignored) { }
            session.request("export", params, (reply, error) -> message(error == null ? reply.optString("path") : error));
        }));
        button(export, "Paylaş", "Dikte share", v -> getContext().startActivity(Intent.createChooser(new Intent(Intent.ACTION_SEND).setType("text/plain").putExtra(Intent.EXTRA_TEXT, result.getText().toString()), "Dikte metni")));
        button(export, "Ham metin", "Dikte raw", v -> { if (session != null) new AlertDialog.Builder(getContext()).setTitle("Groq ham metni").setMessage(session.raw).setPositiveButton("Kapat", null).show(); });
        HorizontalScrollView exportView = new HorizontalScrollView(context);
        exportView.setHorizontalScrollBarEnabled(false);
        exportView.addView(export);
        addView(exportView, new LayoutParams(-1, Ui.dp(context, 50)));
        detail = Ui.text(context, "Dikte 2.4.0 · Kali ARM64", 11, Ui.MUTED);
        detail.setContentDescription("Dikte detail");
        addView(detail, new LayoutParams(-1, Ui.dp(context, 34)));
        changed();
    }

    Button button(LinearLayout row, String title, String description, View.OnClickListener action) {
        Button button = Ui.button(getContext(), title, action);
        button.setContentDescription(description);
        LayoutParams size = new LayoutParams(-2, Ui.dp(getContext(), 48));
        size.rightMargin = Ui.dp(getContext(), 4);
        row.addView(button, size);
        return button;
    }

    void attach(DikteSession value) { if (session == value) return; if (session != null) session.unobserve(this); session = value; session.observe(this); }
    void dispose() { if (session != null) session.unobserve(this); }

    void record() {
        if (session == null) return;
        Activity activity = (Activity) getContext();
        if (activity.checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) {
            activity.requestPermissions(new String[]{Manifest.permission.RECORD_AUDIO}, 704);
            message("Mikrofon izninden sonra Kaydet'e dokunun");
            return;
        }
        session.record();
    }

    @Override public void changed() {
        boolean ready = session != null;
        boolean recording = ready && session.recording;
        boolean busy = ready && session.busy;
        record.setEnabled(ready && !recording && !session.capturing && !busy);
        pause.setEnabled(recording);
        stop.setEnabled(recording);
        cancel.setEnabled(recording || busy);
        pause.setText(ready && session.paused ? "Devam" : "Duraklat");
        if (!ready) return;
        Ui.status(state, session.status, recording ? (session.paused ? Ui.WARNING : Ui.ERROR) : busy ? Ui.INFO : session.status.startsWith("Hazır") || session.status.startsWith("Tamamlandı") || session.status.contains("kaydedildi") ? Ui.SUCCESS : Ui.WARNING);
        JSONArray accounts = session.snapshot.optJSONArray("accounts");
        String name = session.snapshot.optString("selected");
        if (accounts != null) for (int i = 0; i < accounts.length(); i++) if (accounts.optJSONObject(i).optString("id").equals(name)) name = accounts.optJSONObject(i).optString("label");
        account.setText(name + "  ▾  · whisper-large-v3");
        account.setEnabled(!recording && !busy);
        if (!shown.equals(session.text)) { shown = session.text; result.setText(shown); }
        detail.setText(recording ? String.format(java.util.Locale.ROOT, "%02d:%02d · %s", session.frames/16000/60,session.frames/16000%60,session.paused ? "Duraklatıldı" : "Ses kaydı") : session.warning.isEmpty() ? "Dikte 2.4.0 · Kali ARM64 · Groq API" : session.warning);
        meter.invalidate();
    }

    void accounts() {
        if (session == null || session.busy || session.recording) return;
        JSONArray values = session.snapshot.optJSONArray("accounts");
        if (values == null || values.length() == 0) { message("Groq hesabı bulunamadı"); return; }
        String[] labels = new String[values.length()];
        int selected = 0;
        for (int i = 0; i < labels.length; i++) { labels[i] = values.optJSONObject(i).optString("label"); if (values.optJSONObject(i).optString("id").equals(session.snapshot.optString("selected"))) selected = i; }
        new AlertDialog.Builder(getContext()).setTitle("Groq hesabı").setSingleChoiceItems(labels, selected, (dialog, which) -> { session.settings(json("account", values.optJSONObject(which).optString("id"))); dialog.dismiss(); }).setNegativeButton("Kapat", null).show();
    }

    void history() {
        if (session == null) return;
        JSONArray values = session.snapshot.optJSONArray("history");
        if (values == null || values.length() == 0) { message("Dikte geçmişi henüz boş"); return; }
        String[] labels = new String[values.length()];
        for (int i = 0; i < labels.length; i++) { JSONObject item = values.optJSONObject(i); String text = item.optString("text"); labels[i] = item.optString("ts") + "\n" + text.substring(0, Math.min(100, text.length())); }
        new AlertDialog.Builder(getContext()).setTitle("Dikte geçmişi").setItems(labels, (dialog, which) -> { JSONObject item = values.optJSONObject(which); session.text = item.optString("text"); session.raw = item.optString("raw"); changed(); }).setNegativeButton("Kapat", null).show();
    }

    void files() {
        if (session == null || session.busy || session.recording) return;
        new AlertDialog.Builder(getContext()).setTitle("Ses dosyası").setItems(new String[]{"Android'den ses seç", "Linux'tan ses aç", "Android'den altyazı çıkar", "Linux'tan altyazı çıkar"}, (dialog, which) -> {
            if (which == 0 || which == 2) host.importAudio(session, which == 2);
            else prompt("Linux ses dosyası", "/root/workspace/audio.wav", path -> session.transcribe(path, which == 3));
        }).show();
    }

    void settings() {
        if (session == null || session.busy || session.recording) return;
        JSONObject settings = session.snapshot.optJSONObject("settings");
        if (settings == null) settings = new JSONObject();
        LinearLayout form = new LinearLayout(getContext());
        form.setOrientation(VERTICAL);
        form.setPadding(Ui.dp(getContext(), 16), Ui.dp(getContext(), 8), Ui.dp(getContext(), 16), Ui.dp(getContext(), 8));
        EditText language = field(form, "Dil: auto / tr / en", settings.optString("language", "auto"));
        EditText terms = field(form, "Sözlük: özel isimler ve terimler", session.snapshot.optString("dictionary"));
        terms.setSingleLine(false);
        EditText model = field(form, "Metin düzenleme için Groq model adı (isteğe bağlı)", settings.optString("cleanup_model"));
        EditText style = field(form, "Yazım profili / düzenleme talimatı", settings.optString("style"));
        style.setSingleLine(false);
        ScrollView scroll = new ScrollView(getContext());
        scroll.addView(form);
        new AlertDialog.Builder(getContext()).setTitle("Dikte · Groq ayarları").setView(scroll).setPositiveButton("Kaydet", (dialog, which) -> {
            JSONObject params = json("language", language.getText().toString().trim());
            try { params.put("dictionary", terms.getText().toString()).put("cleanup_model", model.getText().toString().trim()).put("style", style.getText().toString()); } catch (Exception ignored) { }
            session.settings(params);
        }).setNegativeButton("Vazgeç", null).show();
    }

    EditText field(LinearLayout form, String label, String value) {
        form.addView(Ui.text(getContext(), label, 12, Ui.MUTED), new LayoutParams(-1, Ui.dp(getContext(), 34)));
        EditText input = new EditText(getContext());
        input.setText(value);
        input.setTextSize(14);
        input.setSingleLine(true);
        input.setContentDescription(label);
        Ui.input(input, Ui.CYAN);
        form.addView(input, new LayoutParams(-1, -2));
        return input;
    }

    void probe() {
        if (session == null || session.busy || session.recording) return;
        message("Groq bağlantısı denetleniyor…");
        session.request("probe", new JSONObject(), (reply, error) -> message(error == null ? "Groq HTTP " + reply.optInt("http") + " · Whisper Large v3 " + (reply.optBoolean("whisper_large_v3") ? "hazır" : "listelenmedi") : error));
    }

    void prompt(String title, String initial, java.util.function.Consumer<String> action) {
        EditText input = new EditText(getContext());
        input.setText(initial);
        input.setSingleLine(true);
        Ui.input(input, Ui.CYAN);
        new AlertDialog.Builder(getContext()).setTitle(title).setView(input).setPositiveButton("Tamam", (dialog, which) -> action.accept(input.getText().toString())).setNegativeButton("Vazgeç", null).show();
    }

    static JSONObject json(String key, String value) { JSONObject object = new JSONObject(); try { object.put(key, value); } catch (Exception ignored) { } return object; }
    void message(String text) { android.widget.Toast.makeText(getContext(), text, android.widget.Toast.LENGTH_LONG).show(); }

    final class Meter extends View {
        final Paint paint = new Paint(Paint.ANTI_ALIAS_FLAG);
        Meter(Context context) { super(context); }
        @Override protected void onDraw(Canvas canvas) {
            super.onDraw(canvas);
            int count = 40;
            float gap = getWidth() / (float) count;
            float amplitude = session == null ? 0 : Math.min(1, session.level * 9);
            for (int i = 0; i < count; i++) {
                float height = Ui.dp(getContext(), 3) + amplitude * getHeight() * (0.25f + 0.7f * (float) Math.abs(Math.sin(i * 1.7 + (session == null ? 0 : session.frames * 0.00003))));
                paint.setColor(session != null && session.recording && !session.paused ? Ui.ERROR : Ui.LINE);
                canvas.drawRoundRect(i * gap + 2, (getHeight() - height)/2, (i + 1)*gap - 2, (getHeight() + height)/2, 3, 3, paint);
            }
        }
    }
}
