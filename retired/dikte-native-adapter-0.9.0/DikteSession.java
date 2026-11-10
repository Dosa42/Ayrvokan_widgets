package com.ayrvokan.widgets;

import android.Manifest;
import android.content.pm.PackageManager;
import android.media.AudioFormat;
import android.media.AudioRecord;
import android.media.MediaRecorder;
import android.os.Handler;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.io.RandomAccessFile;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONArray;
import org.json.JSONObject;

final class DikteSession {
    interface Observer { void changed(); }
    interface Result { void complete(JSONObject result, String error); }
    final LinuxRuntime runtime;
    final Handler main;
    final ExecutorService work = Executors.newSingleThreadExecutor();
    final List<Observer> observers = new ArrayList<>();
    JSONObject snapshot = new JSONObject();
    String status = "Dikte başlatılıyor…";
    String text = "";
    String raw = "";
    String warning = "";
    boolean busy;
    boolean closed;
    boolean capturing;
    volatile boolean recording;
    volatile boolean paused;
    volatile boolean discard;
    volatile AudioRecord microphone;
    volatile Process process;
    volatile float level;
    volatile long frames;
    long started;
    final Runnable clock = new Runnable() {
        @Override public void run() {
            if (closed || !recording) return;
            publish();
            main.postDelayed(this, 100);
        }
    };

    DikteSession(LinuxRuntime runtime, Handler main) {
        this.runtime = runtime;
        this.main = main;
        refresh();
    }

    void observe(Observer observer) { if (!observers.contains(observer)) observers.add(observer); observer.changed(); }
    void unobserve(Observer observer) { observers.remove(observer); }
    void publish() { if (!closed) for (Observer observer : new ArrayList<>(observers)) observer.changed(); }

    void request(String method, JSONObject params, Result callback) {
        if (closed) return;
        work.execute(() -> {
            JSONObject value = null;
            String failure = null;
            Process owner = null;
            try {
                ProcessBuilder builder = new ProcessBuilder(runtime.command("/usr/bin/python3", "/opt/ayrvokan/dikte_widget.py"));
                builder.environment().clear();
                builder.environment().putAll(runtime.environment());
                builder.redirectError(ProcessBuilder.Redirect.appendTo(new File(runtime.runtime, "dikte-errors.log")));
                owner = builder.start();
                process = owner;
                String message = new JSONObject().put("method", method).put("params", params).toString();
                owner.getOutputStream().write(message.getBytes(StandardCharsets.UTF_8));
                owner.getOutputStream().close();
                String output = LinuxRuntime.readAll(owner.getInputStream());
                int code = owner.waitFor();
                JSONObject reply = new JSONObject(output.trim());
                if (code != 0 || !reply.optBoolean("ok")) throw new IllegalStateException(reply.optString("error", "Linux Dikte işlemi başarısız"));
                value = reply.getJSONObject("result");
            } catch (Exception error) { failure = discard ? "İptal edildi" : error.getMessage(); }
            finally { if (process == owner) process = null; }
            final JSONObject result = value;
            final String error = failure;
            main.post(() -> { if (!closed) callback.complete(result, error); });
        });
    }

    void refresh() {
        request("status", new JSONObject(), (result, error) -> {
            if (error != null) status = error;
            else {
                snapshot = result;
                if (!busy && !recording) status = result.optJSONArray("accounts").length() > 0 ? "Hazır · Groq Whisper Large v3" : "Groq hesapları eklenmeli";
            }
            publish();
        });
    }

    void record() {
        if (closed || recording || capturing || busy) return;
        if (runtime.context.checkSelfPermission(Manifest.permission.RECORD_AUDIO) != PackageManager.PERMISSION_GRANTED) { status = "Mikrofon izni gerekiyor"; publish(); return; }
        discard = false;
        paused = false;
        recording = true;
        capturing = true;
        frames = 0;
        level = 0;
        started = android.os.SystemClock.elapsedRealtime();
        status = "Dinleniyor";
        warning = "";
        publish();
        main.post(clock);
        new Thread(() -> capture(), "dikte-audio-capture").start();
    }

    private void capture() {
        File directory = new File(runtime.root, "root/.local/share/dikte/recordings");
        directory.mkdirs();
        File file = new File(directory, "dictation-" + System.currentTimeMillis() + ".wav");
        String error = null;
        AudioRecord device = null;
        try {
            int minimum = AudioRecord.getMinBufferSize(16000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT);
            device = new AudioRecord(MediaRecorder.AudioSource.MIC, 16000, AudioFormat.CHANNEL_IN_MONO, AudioFormat.ENCODING_PCM_16BIT, Math.max(8192, minimum * 2));
            if (device.getState() != AudioRecord.STATE_INITIALIZED) throw new IllegalStateException("Mikrofon açılamadı");
            microphone = device;
            short[] samples = new short[1024];
            byte[] bytes = new byte[2048];
            try (RandomAccessFile output = new RandomAccessFile(file, "rw")) {
                output.setLength(0);
                output.write(new byte[44]);
                device.startRecording();
                while (recording && !closed) {
                    int count = device.read(samples, 0, samples.length);
                    if (count < 0) { if (!recording) break; throw new IllegalStateException("Mikrofon okuma hatası " + count); }
                    if (paused || count == 0) { level = 0; continue; }
                    double sum = 0;
                    for (int i = 0; i < count; i++) {
                        bytes[i * 2] = (byte) samples[i];
                        bytes[i * 2 + 1] = (byte) (samples[i] >> 8);
                        sum += (double) samples[i] * samples[i];
                    }
                    output.write(bytes, 0, count * 2);
                    frames += count;
                    level = (float) Math.sqrt(sum / count) / 32768;
                    if (frames >= 16000L * 300) recording = false;
                }
                output.seek(0);
                output.writeBytes("RIFF"); little(output, frames * 2 + 36, 4);
                output.writeBytes("WAVEfmt "); little(output, 16, 4); little(output, 1, 2); little(output, 1, 2);
                little(output, 16000, 4); little(output, 32000, 4); little(output, 2, 2); little(output, 16, 2);
                output.writeBytes("data"); little(output, frames * 2, 4);
            }
        } catch (Exception failure) { error = failure.getMessage(); }
        finally {
            if (device != null) { try { device.stop(); } catch (Exception ignored) { } device.release(); }
            microphone = null;
        }
        final String failure = error;
        main.post(() -> {
            recording = false;
            capturing = false;
            paused = false;
            main.removeCallbacks(clock);
            if (closed || discard) { file.delete(); status = "Kayıt iptal edildi"; publish(); return; }
            if (failure != null) { status = failure; publish(); return; }
            if (frames < 4000) { file.delete(); status = "Kayıt çok kısa"; publish(); return; }
            transcribe("/root/.local/share/dikte/recordings/" + file.getName(), false);
        });
    }

    static void little(RandomAccessFile file, long value, int length) throws Exception { for (int i = 0; i < length; i++) file.write((int) (value >> (i * 8)) & 255); }

    void stopRecording(boolean cancel) {
        if (!recording) return;
        discard = cancel;
        recording = false;
        status = cancel ? "Kayıt iptal ediliyor…" : "Kayıt tamamlanıyor…";
        AudioRecord device = microphone;
        if (device != null) { try { device.stop(); } catch (Exception ignored) { } }
        publish();
    }

    void pause() { if (!recording) return; paused = !paused; status = paused ? "Kayıt duraklatıldı" : "Dinleniyor"; publish(); }

    void transcribe(String path, boolean subtitles) {
        if (closed || busy || recording) return;
        discard = false;
        busy = true;
        status = "Groq · konuşma çözümleniyor…";
        publish();
        JSONObject params = new JSONObject();
        try { params.put("path", path).put("subtitles", subtitles); } catch (Exception ignored) { }
        request("transcribe", params, (result, error) -> {
            busy = false;
            if (error != null) status = error;
            else {
                text = result.optString("text");
                raw = result.optString("raw");
                warning = result.optString("cleanup_error");
                status = warning.isEmpty() ? "Tamamlandı · " + result.optDouble("elapsed") + " sn" : "Ham metin korundu";
                if (result.has("srt")) status += " · " + result.optString("srt");
            }
            publish();
            request("status", new JSONObject(), (value, failure) -> { if (failure == null) snapshot = value; publish(); });
        });
    }

    void cancel() {
        if (recording) { stopRecording(true); return; }
        if (!busy) return;
        discard = true;
        Process owner = process;
        if (owner != null) owner.destroy();
        status = "İptal ediliyor…";
        publish();
    }

    void settings(JSONObject params) {
        request("settings", params, (result, error) -> { if (error == null) { snapshot = result; status = "Ayarlar kaydedildi"; } else status = error; publish(); });
    }

    void close() {
        closed = true;
        stopRecording(true);
        main.removeCallbacks(clock);
        Process owner = process;
        if (owner != null) owner.destroy();
        work.shutdownNow();
        observers.clear();
    }
}
