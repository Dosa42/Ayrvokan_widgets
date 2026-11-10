.class public final Lj/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/util/ArrayList;

.field public final c:Ljava/util/ArrayList;

.field public d:Ljava/lang/CharSequence;

.field public e:Ljava/lang/CharSequence;

.field public f:Landroid/app/PendingIntent;

.field public g:I

.field public final h:Z

.field public i:Lj/d;

.field public j:Z

.field public k:Landroid/os/Bundle;

.field public l:Ljava/lang/String;

.field public final m:Z

.field public final n:Landroid/app/Notification;

.field public final o:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lj/e;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lj/e;->c:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lj/e;->h:Z

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-boolean v1, p0, Lj/e;->j:Z

    .line 23
    .line 24
    new-instance v2, Landroid/app/Notification;

    .line 25
    .line 26
    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lj/e;->n:Landroid/app/Notification;

    .line 30
    .line 31
    iput-object p1, p0, Lj/e;->a:Landroid/content/Context;

    .line 32
    .line 33
    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lj/e;->l:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    iput-wide v3, v2, Landroid/app/Notification;->when:J

    .line 41
    .line 42
    const/4 p1, -0x1

    .line 43
    iput p1, v2, Landroid/app/Notification;->audioStreamType:I

    .line 44
    .line 45
    iput v1, p0, Lj/e;->g:I

    .line 46
    .line 47
    new-instance p1, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p1, p0, Lj/e;->o:Ljava/util/ArrayList;

    .line 53
    .line 54
    iput-boolean v0, p0, Lj/e;->m:Z

    .line 55
    .line 56
    return-void
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 2

    .line 1
    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1400

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lj/e;->k:Landroid/os/Bundle;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lj/e;->k:Landroid/os/Bundle;

    :cond_0
    iget-object v0, p0, Lj/e;->k:Landroid/os/Bundle;

    return-object v0
.end method
