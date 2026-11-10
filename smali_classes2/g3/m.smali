.class public abstract Lg3/m;
.super Lg3/c;
.source "SourceFile"


# static fields
.field public static final p:Lg3/j;

.field public static final q:Ljava/util/HashMap;

.field public static final r:[[I

.field public static final s:Ljava/util/regex/Pattern;

.field public static final t:Ljava/util/regex/Pattern;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lg3/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lg3/j;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lg3/m;->p:Lg3/j;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lg3/m;->q:Ljava/util/HashMap;

    .line 14
    .line 15
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 16
    .line 17
    const-string v2, "yes"

    .line 18
    .line 19
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 23
    .line 24
    const-string v3, "no"

    .line 25
    .line 26
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    const-string v3, "true"

    .line 30
    .line 31
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v3, "false"

    .line 35
    .line 36
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    const-string v3, "on"

    .line 40
    .line 41
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-string v1, "off"

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    const/16 v0, 0x11

    .line 50
    .line 51
    const/4 v1, 0x2

    .line 52
    filled-new-array {v0, v1}, [I

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 57
    .line 58
    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, [[I

    .line 63
    .line 64
    sput-object v0, Lg3/m;->r:[[I

    .line 65
    .line 66
    const/16 v0, 0x10

    .line 67
    .line 68
    const/16 v2, 0x8

    .line 69
    .line 70
    const/16 v3, 0xa

    .line 71
    .line 72
    filled-new-array {v1, v2, v3, v0}, [I

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const/4 v1, 0x0

    .line 77
    :goto_0
    const/4 v2, 0x4

    .line 78
    if-ge v1, v2, :cond_0

    .line 79
    .line 80
    aget v2, v0, v1

    .line 81
    .line 82
    sget-object v3, Lg3/m;->r:[[I

    .line 83
    .line 84
    const v4, 0x7fffffff

    .line 85
    .line 86
    .line 87
    invoke-static {v4, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    const-wide v5, 0x7fffffffffffffffL

    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    invoke-static {v5, v6, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    filled-new-array {v4, v5}, [I

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    aput-object v4, v3, v2

    .line 113
    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_0
    const-string v0, "^([0-9][0-9][0-9][0-9])-([0-9][0-9]?)-([0-9][0-9]?)(?:(?:[Tt]|[ \t]+)([0-9][0-9]?):([0-9][0-9]):([0-9][0-9])(?:\\.([0-9]*))?(?:[ \t]*(?:Z|([-+][0-9][0-9]?)(?::([0-9][0-9])?)?))?)?$"

    .line 118
    .line 119
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    sput-object v0, Lg3/m;->s:Ljava/util/regex/Pattern;

    .line 124
    .line 125
    const-string v0, "^([0-9][0-9][0-9][0-9])-([0-9][0-9]?)-([0-9][0-9]?)$"

    .line 126
    .line 127
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    sput-object v0, Lg3/m;->t:Ljava/util/regex/Pattern;

    .line 132
    .line 133
    return-void
.end method

.method public constructor <init>(Ld3/c0;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Lg3/c;-><init>(Ld3/c0;)V

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->m:Lm3/i;

    new-instance v1, Lg3/k;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lg3/k;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->l:Lm3/i;

    new-instance v1, Lg3/k;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg3/k;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->i:Lm3/i;

    new-instance v1, Lg3/k;

    const/4 v3, 0x3

    invoke-direct {v1, p0, v3}, Lg3/k;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->j:Lm3/i;

    new-instance v1, Lg3/k;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lg3/k;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->h:Lm3/i;

    new-instance v1, Lg3/k;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lg3/k;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->k:Lm3/i;

    new-instance v1, Lg3/f;

    invoke-direct {v1}, Lg3/f;-><init>()V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->g:Lm3/i;

    new-instance v1, Lg3/k;

    const/4 v5, 0x5

    invoke-direct {v1, p0, v5}, Lg3/k;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->f:Lm3/i;

    new-instance v1, Lg3/k;

    const/4 v5, 0x6

    invoke-direct {v1, p0, v5}, Lg3/k;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->e:Lm3/i;

    new-instance v1, Lg3/l;

    invoke-direct {v1, p0, v3}, Lg3/l;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->n:Lm3/i;

    new-instance v1, Lg3/k;

    const/4 v3, 0x7

    invoke-direct {v1, p0, v3}, Lg3/k;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->o:Lm3/i;

    new-instance v1, Lg3/l;

    invoke-direct {v1, p0, v2}, Lg3/l;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lm3/i;->p:Lm3/i;

    new-instance v1, Lg3/l;

    invoke-direct {v1, p0, v4}, Lg3/l;-><init>(Lg3/m;I)V

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->b:Ljava/util/HashMap;

    sget-object v0, Lg3/m;->p:Lg3/j;

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->a:Ljava/util/EnumMap;

    sget-object v1, Lm3/e;->a:Lm3/e;

    invoke-virtual {p1, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->a:Ljava/util/EnumMap;

    sget-object v1, Lm3/e;->b:Lm3/e;

    invoke-virtual {p1, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lg3/c;->a:Ljava/util/EnumMap;

    sget-object v1, Lm3/e;->c:Lm3/e;

    invoke-virtual {p1, v1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static j(Lg3/m;ILjava/lang/String;I)Ljava/lang/Number;
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x0

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, p0

    .line 13
    :goto_0
    if-gez p1, :cond_1

    .line 14
    .line 15
    const-string p1, "-"

    .line 16
    .line 17
    invoke-static {p1, p2}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    :cond_1
    sget-object p1, Lg3/m;->r:[[I

    .line 22
    .line 23
    array-length v1, p1

    .line 24
    if-ge p3, v1, :cond_2

    .line 25
    .line 26
    aget-object p1, p1, p3

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_2
    const/4 p1, 0x0

    .line 30
    :goto_1
    if-eqz p1, :cond_4

    .line 31
    .line 32
    aget v1, p1, p0

    .line 33
    .line 34
    const/4 v2, 0x1

    .line 35
    if-le v0, v1, :cond_3

    .line 36
    .line 37
    move p0, v2

    .line 38
    :cond_3
    if-eqz p0, :cond_4

    .line 39
    .line 40
    aget p0, p1, v2

    .line 41
    .line 42
    if-le v0, p0, :cond_5

    .line 43
    .line 44
    new-instance p0, Ljava/math/BigInteger;

    .line 45
    .line 46
    invoke-direct {p0, p2, p3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_2

    .line 50
    :cond_4
    :try_start_0
    invoke-static {p2, p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    goto :goto_2

    .line 55
    :catch_0
    :cond_5
    invoke-static {p3, p2}, Lg3/m;->m(ILjava/lang/String;)Ljava/lang/Number;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    :goto_2
    return-object p0
.end method

.method public static m(ILjava/lang/String;)Ljava/lang/Number;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1, p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;I)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance v0, Ljava/math/BigInteger;

    invoke-direct {v0, p1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method


# virtual methods
.method public final k(Lm3/c;Ljava/util/Map;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lg3/m;->n(Lm3/c;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lm3/c;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_3

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lm3/f;

    .line 21
    .line 22
    iget-object v2, v1, Lm3/f;->a:Lm3/d;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v9

    .line 35
    new-instance p2, Lg3/h;

    .line 36
    .line 37
    const-string v5, "while constructing a mapping"

    .line 38
    .line 39
    iget-object v6, p1, Lm3/d;->b:Lh3/a;

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "found unacceptable key "

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget-object p1, v1, Lm3/f;->a:Lm3/d;

    .line 56
    .line 57
    iget-object v8, p1, Lm3/d;->b:Lh3/a;

    .line 58
    .line 59
    move-object v4, p2

    .line 60
    invoke-direct/range {v4 .. v9}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    throw p2

    .line 64
    :cond_0
    :goto_1
    iget-object v1, v1, Lm3/f;->b:Lm3/d;

    .line 65
    .line 66
    invoke-virtual {p0, v1}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    iget-boolean v2, v2, Lm3/d;->e:Z

    .line 71
    .line 72
    if-eqz v2, :cond_2

    .line 73
    .line 74
    iget-object v2, p0, Lg3/c;->o:Ld3/c0;

    .line 75
    .line 76
    iget-boolean v2, v2, Ld3/c0;->d:Z

    .line 77
    .line 78
    if-eqz v2, :cond_1

    .line 79
    .line 80
    iget-object v2, p0, Lg3/c;->f:Ljava/util/ArrayList;

    .line 81
    .line 82
    new-instance v4, Lg3/b;

    .line 83
    .line 84
    new-instance v5, Lg3/b;

    .line 85
    .line 86
    invoke-direct {v5, v3, v1}, Lg3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v4, p2, v5}, Lg3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_1
    new-instance p1, Lh3/c;

    .line 98
    .line 99
    const-string p2, "Recursive key for mapping is detected but it is not configured to be allowed."

    .line 100
    .line 101
    invoke-direct {p1, p2}, Lh3/c;-><init>(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    throw p1

    .line 105
    :cond_2
    invoke-interface {p2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_3
    return-void
.end method

.method public final l(Lm3/c;Ljava/util/Set;)V
    .locals 10

    .line 1
    invoke-virtual {p0, p1}, Lg3/m;->n(Lm3/c;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lm3/c;->h:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lm3/f;

    .line 21
    .line 22
    iget-object v2, v1, Lm3/f;->a:Lm3/d;

    .line 23
    .line 24
    invoke-virtual {p0, v2}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v9

    .line 35
    new-instance p2, Lg3/h;

    .line 36
    .line 37
    const-string v5, "while constructing a Set"

    .line 38
    .line 39
    iget-object v6, p1, Lm3/d;->b:Lh3/a;

    .line 40
    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    const-string v0, "found unacceptable key "

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    iget-object p1, v1, Lm3/f;->a:Lm3/d;

    .line 56
    .line 57
    iget-object v8, p1, Lm3/d;->b:Lh3/a;

    .line 58
    .line 59
    move-object v4, p2

    .line 60
    invoke-direct/range {v4 .. v9}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;Ljava/lang/Exception;)V

    .line 61
    .line 62
    .line 63
    throw p2

    .line 64
    :cond_0
    :goto_1
    iget-boolean v1, v2, Lm3/d;->e:Z

    .line 65
    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    iget-object v1, p0, Lg3/c;->g:Ljava/util/ArrayList;

    .line 69
    .line 70
    new-instance v2, Lg3/b;

    .line 71
    .line 72
    invoke-direct {v2, p2, v3}, Lg3/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    invoke-virtual {v1, v3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_2
    return-void
.end method

.method public final n(Lm3/c;)V
    .locals 13

    .line 1
    iget-object v0, p1, Lm3/c;->h:Ljava/util/List;

    .line 2
    .line 3
    new-instance v1, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/util/TreeSet;

    .line 13
    .line 14
    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    const/4 v4, 0x0

    .line 22
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    if-eqz v5, :cond_3

    .line 27
    .line 28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    check-cast v5, Lm3/f;

    .line 33
    .line 34
    iget-object v6, v5, Lm3/f;->a:Lm3/d;

    .line 35
    .line 36
    iget-object v7, v6, Lm3/d;->a:Lm3/i;

    .line 37
    .line 38
    sget-object v8, Lm3/i;->d:Lm3/i;

    .line 39
    .line 40
    invoke-virtual {v7, v8}, Lm3/i;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-nez v7, :cond_2

    .line 45
    .line 46
    invoke-virtual {p0, v6}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    iget-object v5, v5, Lm3/f;->a:Lm3/d;

    .line 51
    .line 52
    if-eqz v6, :cond_0

    .line 53
    .line 54
    :try_start_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catch_0
    move-exception v12

    .line 59
    new-instance v0, Lg3/h;

    .line 60
    .line 61
    const-string v8, "while constructing a mapping"

    .line 62
    .line 63
    iget-object v9, p1, Lm3/d;->b:Lh3/a;

    .line 64
    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "found unacceptable key "

    .line 68
    .line 69
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v10

    .line 79
    iget-object v11, v5, Lm3/d;->b:Lh3/a;

    .line 80
    .line 81
    move-object v7, v0

    .line 82
    invoke-direct/range {v7 .. v12}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;Ljava/lang/Exception;)V

    .line 83
    .line 84
    .line 85
    throw v0

    .line 86
    :cond_0
    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    invoke-virtual {v1, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v7

    .line 94
    check-cast v7, Ljava/lang/Integer;

    .line 95
    .line 96
    if-eqz v7, :cond_2

    .line 97
    .line 98
    iget-boolean v8, p0, Lg3/c;->k:Z

    .line 99
    .line 100
    if-eqz v8, :cond_1

    .line 101
    .line 102
    invoke-virtual {v2, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_2

    .line 106
    :cond_1
    new-instance v0, Lg3/i;

    .line 107
    .line 108
    iget-object v1, v5, Lm3/d;->b:Lh3/a;

    .line 109
    .line 110
    iget-object p1, p1, Lm3/d;->b:Lh3/a;

    .line 111
    .line 112
    invoke-direct {v0, p1, v6, v1}, Lg3/i;-><init>(Lh3/a;Ljava/lang/Object;Lh3/a;)V

    .line 113
    .line 114
    .line 115
    throw v0

    .line 116
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_3
    invoke-virtual {v2}, Ljava/util/TreeSet;->descendingIterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_4

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v2

    .line 139
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    goto :goto_3

    .line 143
    :cond_4
    iget-boolean v0, p1, Lm3/c;->i:Z

    .line 144
    .line 145
    if-eqz v0, :cond_5

    .line 146
    .line 147
    new-instance v0, Ljava/util/HashMap;

    .line 148
    .line 149
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .line 151
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 155
    .line 156
    .line 157
    const/4 v2, 0x1

    .line 158
    invoke-virtual {p0, p1, v2, v0, v1}, Lg3/m;->o(Lm3/c;ZLjava/util/HashMap;Ljava/util/ArrayList;)V

    .line 159
    .line 160
    .line 161
    iput-object v1, p1, Lm3/c;->h:Ljava/util/List;

    .line 162
    .line 163
    :cond_5
    return-void
.end method

.method public final o(Lm3/c;ZLjava/util/HashMap;Ljava/util/ArrayList;)V
    .locals 7

    .line 1
    iget-object v0, p1, Lm3/c;->h:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_6

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lm3/f;

    .line 18
    .line 19
    iget-object v2, v1, Lm3/f;->a:Lm3/d;

    .line 20
    .line 21
    iget-object v3, v2, Lm3/d;->a:Lm3/i;

    .line 22
    .line 23
    sget-object v4, Lm3/i;->d:Lm3/i;

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Lm3/i;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    const/4 v4, 0x1

    .line 30
    if-eqz v3, :cond_4

    .line 31
    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 33
    .line 34
    .line 35
    iget-object v1, v1, Lm3/f;->b:Lm3/d;

    .line 36
    .line 37
    invoke-virtual {v1}, Lm3/d;->a()Lm3/e;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    const-string v3, "while constructing a mapping"

    .line 46
    .line 47
    const/4 v5, 0x0

    .line 48
    iget-object v6, p1, Lm3/d;->b:Lh3/a;

    .line 49
    .line 50
    if-eq v2, v4, :cond_2

    .line 51
    .line 52
    const/4 v4, 0x2

    .line 53
    if-ne v2, v4, :cond_1

    .line 54
    .line 55
    check-cast v1, Lm3/c;

    .line 56
    .line 57
    invoke-virtual {p0, v1, v5, p3, p4}, Lg3/m;->o(Lm3/c;ZLjava/util/HashMap;Ljava/util/ArrayList;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance p1, Lg3/h;

    .line 62
    .line 63
    new-instance p2, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    const-string p3, "expected a mapping or list of mappings for merging, but found "

    .line 66
    .line 67
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Lm3/d;->a()Lm3/e;

    .line 71
    .line 72
    .line 73
    move-result-object p3

    .line 74
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    iget-object p3, v1, Lm3/d;->b:Lh3/a;

    .line 82
    .line 83
    invoke-direct {p1, v3, v6, p2, p3}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_2
    check-cast v1, Lm3/h;

    .line 88
    .line 89
    iget-object v1, v1, Lm3/h;->h:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_0

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    check-cast v2, Lm3/d;

    .line 106
    .line 107
    instance-of v4, v2, Lm3/c;

    .line 108
    .line 109
    if-eqz v4, :cond_3

    .line 110
    .line 111
    check-cast v2, Lm3/c;

    .line 112
    .line 113
    invoke-virtual {p0, v2, v5, p3, p4}, Lg3/m;->o(Lm3/c;ZLjava/util/HashMap;Ljava/util/ArrayList;)V

    .line 114
    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_3
    new-instance p1, Lg3/h;

    .line 118
    .line 119
    new-instance p2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    const-string p3, "expected a mapping for merging, but found "

    .line 122
    .line 123
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {v2}, Lm3/d;->a()Lm3/e;

    .line 127
    .line 128
    .line 129
    move-result-object p3

    .line 130
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    iget-object p3, v2, Lm3/d;->b:Lh3/a;

    .line 138
    .line 139
    invoke-direct {p1, v3, v6, p2, p3}, Lg3/h;-><init>(Ljava/lang/String;Lh3/a;Ljava/lang/String;Lh3/a;)V

    .line 140
    .line 141
    .line 142
    throw p1

    .line 143
    :cond_4
    invoke-virtual {p0, v2}, Lg3/c;->c(Lm3/d;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-nez v3, :cond_5

    .line 152
    .line 153
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    sub-int/2addr v1, v4

    .line 161
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {p3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    goto/16 :goto_0

    .line 169
    .line 170
    :cond_5
    if-eqz p2, :cond_0

    .line 171
    .line 172
    invoke-virtual {p3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    check-cast v2, Ljava/lang/Integer;

    .line 177
    .line 178
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 179
    .line 180
    .line 181
    move-result v2

    .line 182
    invoke-virtual {p4, v2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 183
    .line 184
    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_6
    return-void
.end method
