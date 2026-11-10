.class public final Lq3/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/regex/Pattern;

.field public static final c:Ljava/util/regex/Pattern;

.field public static final d:Ljava/util/regex/Pattern;

.field public static final e:Ljava/util/regex/Pattern;

.field public static final f:Ljava/util/regex/Pattern;

.field public static final g:Ljava/util/regex/Pattern;

.field public static final h:Ljava/util/regex/Pattern;

.field public static final i:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "^(?:yes|Yes|YES|no|No|NO|true|True|TRUE|false|False|FALSE|on|On|ON|off|Off|OFF)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq3/a;->b:Ljava/util/regex/Pattern;

    const-string v0, "^([-+]?(\\.[0-9]+|[0-9_]+(\\.[0-9_]*)?)([eE][-+]?[0-9]+)?|[-+]?[0-9][0-9_]*(?::[0-5]?[0-9])+\\.[0-9_]*|[-+]?\\.(?:inf|Inf|INF)|\\.(?:nan|NaN|NAN))$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq3/a;->c:Ljava/util/regex/Pattern;

    const-string v0, "^(?:[-+]?0b[0-1_]+|[-+]?0[0-7_]+|[-+]?(?:0|[1-9][0-9_]*)|[-+]?0x[0-9a-fA-F_]+|[-+]?[1-9][0-9_]*(?::[0-5]?[0-9])+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq3/a;->d:Ljava/util/regex/Pattern;

    const-string v0, "^(?:<<)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq3/a;->e:Ljava/util/regex/Pattern;

    const-string v0, "^(?:~|null|Null|NULL| )$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq3/a;->f:Ljava/util/regex/Pattern;

    const-string v0, "^$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq3/a;->g:Ljava/util/regex/Pattern;

    const-string v0, "^(?:[0-9][0-9][0-9][0-9]-[0-9][0-9]-[0-9][0-9]|[0-9][0-9][0-9][0-9]-[0-9][0-9]?-[0-9][0-9]?(?:[Tt]|[ \t]+)[0-9][0-9]?:[0-9][0-9]:[0-9][0-9](?:\\.[0-9]*)?(?:[ \t]*(?:Z|[-+][0-9][0-9]?(?::[0-9][0-9])?))?)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq3/a;->h:Ljava/util/regex/Pattern;

    const-string v0, "^(?:=)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    const-string v0, "^(?:!|&|\\*)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lq3/a;->i:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lq3/a;->a:Ljava/util/HashMap;

    .line 10
    .line 11
    sget-object v0, Lm3/i;->l:Lm3/i;

    .line 12
    .line 13
    sget-object v1, Lq3/a;->b:Ljava/util/regex/Pattern;

    .line 14
    .line 15
    const-string v2, "yYnNtTfFoO"

    .line 16
    .line 17
    invoke-virtual {p0, v0, v1, v2}, Lq3/a;->a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object v0, Lm3/i;->i:Lm3/i;

    .line 21
    .line 22
    sget-object v1, Lq3/a;->d:Ljava/util/regex/Pattern;

    .line 23
    .line 24
    const-string v2, "-+0123456789"

    .line 25
    .line 26
    invoke-virtual {p0, v0, v1, v2}, Lq3/a;->a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lm3/i;->j:Lm3/i;

    .line 30
    .line 31
    sget-object v1, Lq3/a;->c:Ljava/util/regex/Pattern;

    .line 32
    .line 33
    const-string v2, "-+0123456789."

    .line 34
    .line 35
    invoke-virtual {p0, v0, v1, v2}, Lq3/a;->a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Lm3/i;->d:Lm3/i;

    .line 39
    .line 40
    sget-object v1, Lq3/a;->e:Ljava/util/regex/Pattern;

    .line 41
    .line 42
    const-string v2, "<"

    .line 43
    .line 44
    invoke-virtual {p0, v0, v1, v2}, Lq3/a;->a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object v0, Lm3/i;->m:Lm3/i;

    .line 48
    .line 49
    sget-object v1, Lq3/a;->f:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    const-string v2, "~nN\u0000"

    .line 52
    .line 53
    invoke-virtual {p0, v0, v1, v2}, Lq3/a;->a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v1, Lq3/a;->g:Ljava/util/regex/Pattern;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {p0, v0, v1, v2}, Lq3/a;->a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sget-object v0, Lm3/i;->k:Lm3/i;

    .line 63
    .line 64
    sget-object v1, Lq3/a;->h:Ljava/util/regex/Pattern;

    .line 65
    .line 66
    const-string v2, "0123456789"

    .line 67
    .line 68
    invoke-virtual {p0, v0, v1, v2}, Lq3/a;->a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    sget-object v0, Lm3/i;->c:Lm3/i;

    .line 72
    .line 73
    sget-object v1, Lq3/a;->i:Ljava/util/regex/Pattern;

    .line 74
    .line 75
    const-string v2, "!&*"

    .line 76
    .line 77
    invoke-virtual {p0, v0, v1, v2}, Lq3/a;->a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method


# virtual methods
.method public final a(Lm3/i;Ljava/util/regex/Pattern;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lq3/a;->a:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez p3, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    if-nez p3, :cond_0

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Lq3/b;

    invoke-direct {v0, p1, p2}, Lq3/b;-><init>(Lm3/i;Ljava/util/regex/Pattern;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object p3

    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    aget-char v4, p3, v3

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v5

    if-nez v5, :cond_2

    move-object v4, v1

    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    new-instance v4, Lq3/b;

    invoke-direct {v4, p1, p2}, Lq3/b;-><init>(Lm3/i;Ljava/util/regex/Pattern;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public final b(Lm3/e;Ljava/lang/String;Z)Lm3/i;
    .locals 3

    .line 1
    sget-object v0, Lm3/e;->a:Lm3/e;

    .line 2
    .line 3
    if-ne p1, v0, :cond_4

    .line 4
    .line 5
    if-eqz p3, :cond_4

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    iget-object v0, p0, Lq3/a;->a:Ljava/util/HashMap;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-nez p3, :cond_0

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 17
    .line 18
    .line 19
    move-result-object p3

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    .line 22
    .line 23
    .line 24
    move-result p3

    .line 25
    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    :goto_0
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    check-cast p3, Ljava/util/List;

    .line 34
    .line 35
    if-eqz p3, :cond_2

    .line 36
    .line 37
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p3

    .line 41
    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_2

    .line 46
    .line 47
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lq3/b;

    .line 52
    .line 53
    iget-object v2, v1, Lq3/b;->a:Lm3/i;

    .line 54
    .line 55
    iget-object v1, v1, Lq3/b;->b:Ljava/util/regex/Pattern;

    .line 56
    .line 57
    invoke-virtual {v1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-eqz v1, :cond_1

    .line 66
    .line 67
    return-object v2

    .line 68
    :cond_2
    const/4 p3, 0x0

    .line 69
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_4

    .line 74
    .line 75
    invoke-virtual {v0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p3

    .line 79
    check-cast p3, Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 82
    .line 83
    .line 84
    move-result-object p3

    .line 85
    :cond_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lq3/b;

    .line 96
    .line 97
    iget-object v1, v0, Lq3/b;->a:Lm3/i;

    .line 98
    .line 99
    iget-object v0, v0, Lq3/b;->b:Ljava/util/regex/Pattern;

    .line 100
    .line 101
    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_3

    .line 110
    .line 111
    return-object v1

    .line 112
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_6

    .line 117
    .line 118
    const/4 p2, 0x1

    .line 119
    if-eq p1, p2, :cond_5

    .line 120
    .line 121
    sget-object p1, Lm3/i;->p:Lm3/i;

    .line 122
    .line 123
    return-object p1

    .line 124
    :cond_5
    sget-object p1, Lm3/i;->o:Lm3/i;

    .line 125
    .line 126
    return-object p1

    .line 127
    :cond_6
    sget-object p1, Lm3/i;->n:Lm3/i;

    .line 128
    .line 129
    return-object p1
.end method
