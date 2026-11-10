.class public final synthetic Ln0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Ljava/lang/Object;

.field public final synthetic h:Ljava/lang/Object;

.field public final synthetic i:Ljava/lang/Object;

.field public final synthetic j:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p5, p0, Ln0/a;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Ln0/a;->g:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p2, p0, Ln0/a;->h:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Ln0/a;->i:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p4, p0, Ln0/a;->j:Ljava/lang/Object;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget v0, p0, Ln0/a;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Ln0/a;->j:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Ln0/a;->i:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Ln0/a;->h:Ljava/lang/Object;

    .line 8
    .line 9
    iget-object v4, p0, Ln0/a;->g:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    goto :goto_2

    .line 15
    :pswitch_0
    check-cast v4, Lorg/mozilla/geckoview/GeckoResult;

    .line 16
    .line 17
    check-cast v3, Lorg/mozilla/geckoview/GeckoResult;

    .line 18
    .line 19
    check-cast v2, Lorg/mozilla/geckoview/GeckoResult$OnValueListener;

    .line 20
    .line 21
    check-cast v1, Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;

    .line 22
    .line 23
    invoke-static {v4, v3, v2, v1}, Lorg/mozilla/geckoview/GeckoResult;->f(Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult;Lorg/mozilla/geckoview/GeckoResult$OnValueListener;Lorg/mozilla/geckoview/GeckoResult$OnExceptionListener;)V

    .line 24
    .line 25
    .line 26
    return-void

    .line 27
    :pswitch_1
    check-cast v4, Ln0/c;

    .line 28
    .line 29
    check-cast v3, Lj0/k;

    .line 30
    .line 31
    check-cast v2, Lh0/c;

    .line 32
    .line 33
    check-cast v1, Lj0/i;

    .line 34
    .line 35
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    sget-object v0, Ln0/c;->f:Ljava/util/logging/Logger;

    .line 39
    .line 40
    :try_start_0
    iget-object v5, v4, Ln0/c;->c:Lk0/g;

    .line 41
    .line 42
    iget-object v6, v3, Lj0/k;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v5, v6}, Lk0/g;->a(Ljava/lang/String;)Lk0/h;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    const/4 v6, 0x0

    .line 49
    if-nez v5, :cond_0

    .line 50
    .line 51
    const-string v1, "Transport backend \'%s\' is not registered"

    .line 52
    .line 53
    const/4 v4, 0x1

    .line 54
    new-array v4, v4, [Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v3, v3, Lj0/k;->a:Ljava/lang/String;

    .line 57
    .line 58
    aput-object v3, v4, v6

    .line 59
    .line 60
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v3, Ljava/lang/IllegalArgumentException;

    .line 68
    .line 69
    invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    check-cast v5, Lh0/f;

    .line 74
    .line 75
    invoke-virtual {v5, v1}, Lh0/f;->a(Lj0/i;)Lj0/i;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    iget-object v5, v4, Ln0/c;->e:Lq0/c;

    .line 80
    .line 81
    new-instance v7, Ln0/b;

    .line 82
    .line 83
    invoke-direct {v7, v4, v3, v1, v6}, Ln0/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    check-cast v5, Lp0/k;

    .line 87
    .line 88
    invoke-virtual {v5, v7}, Lp0/k;->e(Lq0/b;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    new-instance v3, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    const-string v4, "Error scheduling event "

    .line 99
    .line 100
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 118
    .line 119
    .line 120
    :goto_1
    return-void

    .line 121
    :goto_2
    check-cast v4, Lorg/mozilla/geckoview/GeckoSession;

    .line 122
    .line 123
    check-cast v3, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;

    .line 124
    .line 125
    check-cast v2, Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;

    .line 126
    .line 127
    check-cast v1, Lorg/mozilla/geckoview/GeckoResult;

    .line 128
    .line 129
    invoke-static {v4, v3, v2, v1}, Lorg/mozilla/geckoview/GeckoSession;->f(Lorg/mozilla/geckoview/GeckoSession;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate;Lorg/mozilla/geckoview/GeckoSession$NavigationDelegate$LoadRequest;Lorg/mozilla/geckoview/GeckoResult;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
