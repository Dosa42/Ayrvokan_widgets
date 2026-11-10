.class public final Ll3/b;
.super Ll3/d;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/reflect/Type;

.field public d:Z

.field public e:[Ljava/lang/Class;

.field public final f:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-direct {p0, v1, v0}, Ll3/d;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object v2, p0, Ll3/b;->c:Ljava/lang/reflect/Type;

    .line 17
    .line 18
    const/4 v0, 0x1

    .line 19
    if-nez v2, :cond_0

    .line 20
    .line 21
    move v1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x0

    .line 24
    :goto_0
    iput-boolean v1, p0, Ll3/b;->d:Z

    .line 25
    .line 26
    iput-object p1, p0, Ll3/b;->f:Ljava/lang/reflect/Field;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final a()[Ljava/lang/Class;
    .locals 6

    .line 1
    iget-boolean v0, p0, Ll3/b;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Ll3/b;->c:Ljava/lang/reflect/Type;

    .line 6
    .line 7
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    array-length v1, v0

    .line 20
    if-lez v1, :cond_5

    .line 21
    .line 22
    array-length v1, v0

    .line 23
    new-array v1, v1, [Ljava/lang/Class;

    .line 24
    .line 25
    iput-object v1, p0, Ll3/b;->e:[Ljava/lang/Class;

    .line 26
    .line 27
    move v1, v3

    .line 28
    :goto_0
    array-length v4, v0

    .line 29
    if-ge v1, v4, :cond_5

    .line 30
    .line 31
    aget-object v4, v0, v1

    .line 32
    .line 33
    instance-of v5, v4, Ljava/lang/Class;

    .line 34
    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    iget-object v5, p0, Ll3/b;->e:[Ljava/lang/Class;

    .line 38
    .line 39
    check-cast v4, Ljava/lang/Class;

    .line 40
    .line 41
    aput-object v4, v5, v1

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    .line 45
    .line 46
    if-eqz v5, :cond_1

    .line 47
    .line 48
    iget-object v5, p0, Ll3/b;->e:[Ljava/lang/Class;

    .line 49
    .line 50
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 51
    .line 52
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Ljava/lang/Class;

    .line 57
    .line 58
    aput-object v4, v5, v1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    instance-of v5, v4, Ljava/lang/reflect/GenericArrayType;

    .line 62
    .line 63
    if-eqz v5, :cond_2

    .line 64
    .line 65
    check-cast v4, Ljava/lang/reflect/GenericArrayType;

    .line 66
    .line 67
    invoke-interface {v4}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    instance-of v5, v4, Ljava/lang/Class;

    .line 72
    .line 73
    if-eqz v5, :cond_2

    .line 74
    .line 75
    iget-object v5, p0, Ll3/b;->e:[Ljava/lang/Class;

    .line 76
    .line 77
    check-cast v4, Ljava/lang/Class;

    .line 78
    .line 79
    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v4

    .line 83
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    aput-object v4, v5, v1

    .line 88
    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Ll3/b;->e:[Ljava/lang/Class;

    .line 94
    .line 95
    goto :goto_2

    .line 96
    :cond_3
    instance-of v1, v0, Ljava/lang/reflect/GenericArrayType;

    .line 97
    .line 98
    if-eqz v1, :cond_4

    .line 99
    .line 100
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    instance-of v1, v0, Ljava/lang/Class;

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    .line 110
    new-array v1, v2, [Ljava/lang/Class;

    .line 111
    .line 112
    check-cast v0, Ljava/lang/Class;

    .line 113
    .line 114
    aput-object v0, v1, v3

    .line 115
    .line 116
    iput-object v1, p0, Ll3/b;->e:[Ljava/lang/Class;

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_4
    instance-of v1, v0, Ljava/lang/Class;

    .line 120
    .line 121
    if-eqz v1, :cond_5

    .line 122
    .line 123
    check-cast v0, Ljava/lang/Class;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    if-eqz v0, :cond_5

    .line 130
    .line 131
    new-array v0, v2, [Ljava/lang/Class;

    .line 132
    .line 133
    iput-object v0, p0, Ll3/b;->e:[Ljava/lang/Class;

    .line 134
    .line 135
    iget-object v1, p0, Ll3/d;->b:Ljava/lang/Class;

    .line 136
    .line 137
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    aput-object v1, v0, v3

    .line 142
    .line 143
    :cond_5
    :goto_2
    iput-boolean v2, p0, Ll3/b;->d:Z

    .line 144
    .line 145
    :cond_6
    iget-object v0, p0, Ll3/b;->e:[Ljava/lang/Class;

    .line 146
    .line 147
    return-object v0
.end method

.method public final e(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ll3/b;->f:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
