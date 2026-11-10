.class public interface abstract Lorg/mozilla/gecko/WakeLockDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOCKS_COUNT:I = 0x2

.field public static final LOCK_AUDIO_PLAYING:Ljava/lang/String; = "audio-playing"

.field public static final LOCK_CPU:Ljava/lang/String; = "cpu"

.field public static final LOCK_SCREEN:Ljava/lang/String; = "screen"

.field public static final LOCK_VIDEO_PLAYING:Ljava/lang/String; = "video-playing"

.field public static final STATE_LOCKED_BACKGROUND:I = 0x2

.field public static final STATE_LOCKED_FOREGROUND:I = 0x1

.field public static final STATE_UNLOCKED:I


# virtual methods
.method public abstract setWakeLockState(Ljava/lang/String;I)V
.end method
