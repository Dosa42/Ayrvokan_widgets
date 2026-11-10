.class public final La/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f:I

.field public final g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILandroidx/activity/b;Landroid/content/IntentSender$SendIntentException;)V
    .locals 0

    .line 1
    iput-object p2, p0, La/d;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iput p1, p0, La/d;->f:I

    .line 4
    .line 5
    iput-object p3, p0, La/d;->g:Ljava/lang/Object;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, La/d;->h:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/activity/b;

    .line 4
    .line 5
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, La/d;->g:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Landroid/content/IntentSender$SendIntentException;

    .line 19
    .line 20
    const-string v3, "androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION"

    .line 21
    .line 22
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iget v2, p0, La/d;->f:I

    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {v0, v2, v3, v1}, Landroidx/activity/result/f;->a(IILandroid/content/Intent;)Z

    .line 30
    .line 31
    .line 32
    return-void
.end method
