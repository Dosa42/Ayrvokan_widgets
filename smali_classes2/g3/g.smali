.class public final Lg3/g;
.super Lg3/m;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v0, Le3/e;

    .line 2
    .line 3
    const-class v1, Lorg/mozilla/gecko/util/DebugConfig;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v2}, Le3/e;-><init>(Ljava/lang/Class;Lm3/i;Ljava/lang/Class;)V

    .line 7
    .line 8
    .line 9
    new-instance v1, Ld3/c0;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v1, v3}, Ld3/c0;-><init>(I)V

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v1}, Lg3/m;-><init>(Ld3/c0;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lg3/c;->b:Ljava/util/HashMap;

    .line 19
    .line 20
    new-instance v4, Lg3/e;

    .line 21
    .line 22
    const/4 v5, 0x2

    .line 23
    invoke-direct {v4, p0, v5}, Lg3/e;-><init>(Lg3/g;I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-class v1, Ljava/lang/Object;

    .line 30
    .line 31
    iget-object v2, v0, Le3/e;->a:Ljava/lang/Class;

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    new-instance v1, Lm3/i;

    .line 40
    .line 41
    invoke-direct {v1, v2}, Lm3/i;-><init>(Ljava/lang/Class;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lg3/c;->h:Lm3/i;

    .line 45
    .line 46
    :cond_0
    iget-object v1, p0, Lg3/c;->a:Ljava/util/EnumMap;

    .line 47
    .line 48
    sget-object v2, Lm3/e;->a:Lm3/e;

    .line 49
    .line 50
    new-instance v4, Lg3/f;

    .line 51
    .line 52
    invoke-direct {v4, p0}, Lg3/f;-><init>(Lg3/g;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lg3/c;->a:Ljava/util/EnumMap;

    .line 59
    .line 60
    sget-object v2, Lm3/e;->c:Lm3/e;

    .line 61
    .line 62
    new-instance v4, Lg3/e;

    .line 63
    .line 64
    const/4 v5, 0x0

    .line 65
    invoke-direct {v4, p0, v5}, Lg3/e;-><init>(Lg3/g;I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lg3/c;->a:Ljava/util/EnumMap;

    .line 72
    .line 73
    sget-object v2, Lm3/e;->b:Lm3/e;

    .line 74
    .line 75
    new-instance v4, Lg3/e;

    .line 76
    .line 77
    invoke-direct {v4, p0, v3}, Lg3/e;-><init>(Lg3/g;I)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2, v4}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v0}, Lg3/c;->a(Le3/e;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
