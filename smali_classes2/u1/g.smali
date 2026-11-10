.class public final Lu1/g;
.super Landroid/media/session/MediaSession$Callback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lu1/i;


# direct methods
.method public constructor <init>(Lu1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu1/g;->a:Lu1/i;

    invoke-direct {p0}, Landroid/media/session/MediaSession$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMediaButtonEvent(Landroid/content/Intent;)Z
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MEDIA_BUTTON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lu1/g;->a:Lu1/i;

    iget-object v1, p1, Lu1/i;->p:Lu1/k;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v1 .. v7}, Lu1/k;->a(IIIZZZ)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1}, Landroid/media/session/MediaSession$Callback;->onMediaButtonEvent(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
