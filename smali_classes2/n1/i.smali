.class public final Ln1/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Lq1/f;

.field public final synthetic b:Lcom/nomone/GeckoView/MyGeckoView;


# direct methods
.method public constructor <init>(Lcom/nomone/GeckoView/MyGeckoView;Lq1/f;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ln1/i;->a:Lq1/f;

    iput-object p1, p0, Ln1/i;->b:Lcom/nomone/GeckoView/MyGeckoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Ln1/i;->a:Lq1/f;

    .line 4
    .line 5
    iget-object p1, p1, Lq1/f;->G:Lu1/o;

    .line 6
    .line 7
    iget-object p2, p0, Ln1/i;->b:Lcom/nomone/GeckoView/MyGeckoView;

    .line 8
    .line 9
    iget-object p2, p2, Lcom/nomone/GeckoView/MyGeckoView;->l:Ljava/lang/String;

    .line 10
    .line 11
    const/16 v0, 0x64

    .line 12
    .line 13
    invoke-virtual {p1, v0, p2}, Lu1/o;->a(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
