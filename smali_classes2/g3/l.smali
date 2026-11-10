.class public final Lg3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg3/d;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg3/m;


# direct methods
.method public synthetic constructor <init>(Lg3/m;I)V
    .locals 0

    .line 1
    iput p2, p0, Lg3/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lg3/l;->b:Lg3/m;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Lm3/d;)V
    .locals 2

    .line 1
    iget v0, p0, Lg3/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lg3/l;->b:Lg3/m;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-boolean v0, p2, Lm3/d;->e:Z

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    check-cast p2, Lm3/h;

    .line 14
    .line 15
    check-cast p1, Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {v1, p2, p1}, Lg3/c;->d(Lm3/h;Ljava/util/Collection;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance p1, Lh3/c;

    .line 22
    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string v1, "Unexpected recursive sequence structure. Node: "

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-direct {p1, p2}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :pswitch_1
    iget-boolean v0, p2, Lm3/d;->e:Z

    .line 42
    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    check-cast p2, Lm3/c;

    .line 46
    .line 47
    check-cast p1, Ljava/util/Map;

    .line 48
    .line 49
    invoke-virtual {v1, p2, p1}, Lg3/m;->k(Lm3/c;Ljava/util/Map;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    new-instance p1, Lh3/c;

    .line 54
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "Unexpected recursive mapping structure. Node: "

    .line 58
    .line 59
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p2

    .line 69
    invoke-direct {p1, p2}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :goto_0
    iget-boolean v0, p2, Lm3/d;->e:Z

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    check-cast p2, Lm3/c;

    .line 78
    .line 79
    check-cast p1, Ljava/util/Set;

    .line 80
    .line 81
    invoke-virtual {v1, p2, p1}, Lg3/m;->l(Lm3/c;Ljava/util/Set;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    new-instance p1, Lh3/c;

    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    const-string v1, "Unexpected recursive set structure. Node: "

    .line 90
    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    invoke-direct {p1, p2}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lm3/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lg3/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lg3/l;->b:Lg3/m;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_3

    .line 9
    :pswitch_0
    move-object v0, p1

    .line 10
    check-cast v0, Lm3/h;

    .line 11
    .line 12
    iget-boolean p1, p1, Lm3/d;->e:Z

    .line 13
    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, v0}, Lg3/c;->h(Lm3/h;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {v1, v0}, Lg3/c;->h(Lm3/h;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {v1, v0, p1}, Lg3/c;->d(Lm3/h;Ljava/util/Collection;)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-object p1

    .line 29
    :pswitch_1
    move-object v0, p1

    .line 30
    check-cast v0, Lm3/c;

    .line 31
    .line 32
    iget-boolean p1, p1, Lm3/d;->e:Z

    .line 33
    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    iget-object p1, v0, Lm3/c;->h:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 48
    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    :try_start_0
    const-class p1, Ljava/util/Map;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-virtual {v1, p1, v0, v2}, Lg3/c;->g(Ljava/lang/Class;Lm3/d;Z)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    check-cast p1, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :catch_0
    iget-object p1, v0, Lm3/c;->h:Ljava/util/List;

    .line 65
    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 71
    .line 72
    invoke-direct {v2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 73
    .line 74
    .line 75
    move-object p1, v2

    .line 76
    :goto_1
    invoke-virtual {v1, v0, p1}, Lg3/m;->k(Lm3/c;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    move-object v0, p1

    .line 80
    :goto_2
    return-object v0

    .line 81
    :goto_3
    iget-boolean v0, p1, Lm3/d;->e:Z

    .line 82
    .line 83
    if-eqz v0, :cond_3

    .line 84
    .line 85
    iget-object v0, v1, Lg3/c;->d:Ljava/util/HashMap;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    if-eqz v0, :cond_2

    .line 92
    .line 93
    iget-object v0, v1, Lg3/c;->d:Ljava/util/HashMap;

    .line 94
    .line 95
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    goto :goto_5

    .line 100
    :cond_2
    check-cast p1, Lm3/c;

    .line 101
    .line 102
    iget-object p1, p1, Lm3/c;->h:Ljava/util/List;

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 109
    .line 110
    invoke-direct {v0, p1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :cond_3
    check-cast p1, Lm3/c;

    .line 115
    .line 116
    invoke-virtual {v1, p1}, Lg3/c;->i(Lm3/b;)Ljava/util/Set;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, p1, v0}, Lg3/m;->l(Lm3/c;Ljava/util/Set;)V

    .line 121
    .line 122
    .line 123
    :goto_4
    move-object p1, v0

    .line 124
    :goto_5
    return-object p1

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
