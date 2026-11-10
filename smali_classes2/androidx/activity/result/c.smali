.class public final Landroidx/activity/result/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/io/Serializable;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/activity/result/f;Ljava/lang/String;ILc/a;)V
    .locals 0

    iput-object p1, p0, Landroidx/activity/result/c;->d:Ljava/lang/Object;

    iput-object p2, p0, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    iput p3, p0, Landroidx/activity/result/c;->a:I

    iput-object p4, p0, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([Lf2/g0;[Lz2/p;Lz2/m;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    new-instance v0, Lz2/q;

    invoke-direct {v0, p2}, Lz2/q;-><init>([Lz2/p;)V

    iput-object v0, p0, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    iput-object p3, p0, Landroidx/activity/result/c;->d:Ljava/lang/Object;

    array-length p1, p1

    iput p1, p0, Landroidx/activity/result/c;->a:I

    return-void
.end method


# virtual methods
.method public final a(Landroidx/activity/result/c;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget-object v1, p0, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    .line 6
    .line 7
    check-cast v1, [Lf2/g0;

    .line 8
    .line 9
    aget-object v1, v1, p2

    .line 10
    .line 11
    iget-object v2, p1, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    .line 12
    .line 13
    check-cast v2, [Lf2/g0;

    .line 14
    .line 15
    aget-object v2, v2, p2

    .line 16
    .line 17
    invoke-static {v1, v2}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 24
    .line 25
    check-cast v1, Lz2/q;

    .line 26
    .line 27
    iget-object v1, v1, Lz2/q;->b:[Lz2/p;

    .line 28
    .line 29
    aget-object v1, v1, p2

    .line 30
    .line 31
    iget-object p1, p1, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 32
    .line 33
    check-cast p1, Lz2/q;

    .line 34
    .line 35
    iget-object p1, p1, Lz2/q;->b:[Lz2/p;

    .line 36
    .line 37
    aget-object p1, p1, p2

    .line 38
    .line 39
    invoke-static {v1, p1}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    const/4 v0, 0x1

    .line 46
    :cond_1
    return v0
.end method

.method public final b(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    check-cast v0, [Lf2/g0;

    aget-object p1, v0, p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final c(Landroidx/activity/result/g;)V
    .locals 11

    .line 1
    iget-object v0, p0, Landroidx/activity/result/c;->d:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/activity/result/f;

    .line 4
    .line 5
    iget-object v1, v0, Landroidx/activity/result/f;->e:Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/activity/result/c;->b:Ljava/io/Serializable;

    .line 8
    .line 9
    check-cast v2, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    iget v1, p0, Landroidx/activity/result/c;->a:I

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/activity/result/c;->c:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v2, Lc/a;

    .line 19
    .line 20
    check-cast v0, Landroidx/activity/b;

    .line 21
    .line 22
    iget-object v3, v0, Landroidx/activity/b;->i:Landroidx/activity/d;

    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    new-instance v2, Landroid/content/Intent;

    .line 28
    .line 29
    const-string v4, "androidx.activity.result.contract.action.INTENT_SENDER_REQUEST"

    .line 30
    .line 31
    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    const-string v5, "androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST"

    .line 35
    .line 36
    invoke-virtual {v2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-nez v2, :cond_0

    .line 55
    .line 56
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 61
    .line 62
    .line 63
    :cond_0
    const-string v2, "androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE"

    .line 64
    .line 65
    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    move-object v10, v6

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    const/4 v2, 0x0

    .line 81
    move-object v10, v2

    .line 82
    :goto_0
    const-string v2, "androidx.activity.result.contract.action.REQUEST_PERMISSIONS"

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v6

    .line 88
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    const-string v0, "androidx.activity.result.contract.extra.PERMISSIONS"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_2

    .line 101
    .line 102
    const/4 p1, 0x0

    .line 103
    new-array p1, p1, [Ljava/lang/String;

    .line 104
    .line 105
    :cond_2
    sget v0, Lj/a;->b:I

    .line 106
    .line 107
    invoke-virtual {v3, p1, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_3
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v2

    .line 119
    if-eqz v2, :cond_4

    .line 120
    .line 121
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 122
    .line 123
    .line 124
    move-result-object p1

    .line 125
    check-cast p1, Landroidx/activity/result/g;

    .line 126
    .line 127
    :try_start_0
    iget-object v4, p1, Landroidx/activity/result/g;->a:Landroid/content/IntentSender;

    .line 128
    .line 129
    iget-object v6, p1, Landroidx/activity/result/g;->b:Landroid/content/Intent;

    .line 130
    .line 131
    iget v7, p1, Landroidx/activity/result/g;->c:I

    .line 132
    .line 133
    iget v8, p1, Landroidx/activity/result/g;->d:I

    .line 134
    .line 135
    const/4 v9, 0x0

    .line 136
    sget p1, Lj/a;->b:I

    .line 137
    .line 138
    move v5, v1

    .line 139
    invoke-virtual/range {v3 .. v10}, Landroidx/activity/d;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :catch_0
    move-exception p1

    .line 144
    new-instance v2, Landroid/os/Handler;

    .line 145
    .line 146
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 151
    .line 152
    .line 153
    new-instance v3, La/d;

    .line 154
    .line 155
    invoke-direct {v3, v1, v0, p1}, La/d;-><init>(ILandroidx/activity/b;Landroid/content/IntentSender$SendIntentException;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    sget v0, Lj/a;->b:I

    .line 163
    .line 164
    invoke-virtual {v3, p1, v1, v10}, Landroidx/activity/d;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 165
    .line 166
    .line 167
    :goto_1
    return-void
.end method
