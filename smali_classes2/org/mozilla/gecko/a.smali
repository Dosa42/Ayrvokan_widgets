.class public final synthetic Lorg/mozilla/gecko/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final synthetic a:Lorg/mozilla/gecko/GeckoThread$2;


# direct methods
.method public synthetic constructor <init>(Lorg/mozilla/gecko/GeckoThread$2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/a;->a:Lorg/mozilla/gecko/GeckoThread$2;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/a;->a:Lorg/mozilla/gecko/GeckoThread$2;

    invoke-static {v0, p1, p2}, Lorg/mozilla/gecko/GeckoThread;->a(Lorg/mozilla/gecko/GeckoThread$2;Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
