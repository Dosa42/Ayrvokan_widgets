.class public abstract Lorg/mozilla/gecko/PrefsHelper$PrefHandlerBase;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/PrefsHelper$PrefHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/PrefsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PrefHandlerBase"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    return-void
.end method

.method public prefValue(Ljava/lang/String;I)V
    .locals 2

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unhandled int pref "

    const-string v1, "; wrong type?"

    .line 1
    invoke-static {v0, p1, v1}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public prefValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unhandled String pref "

    const-string v1, "; wrong type?"

    .line 13
    invoke-static {v0, p1, v1}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public prefValue(Ljava/lang/String;Z)V
    .locals 2

    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unhandled boolean pref "

    const-string v1, "; wrong type?"

    .line 25
    invoke-static {v0, p1, v1}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
