.class public final Lk3/a;
.super Lk3/c;
.source "SourceFile"


# static fields
.field public static final d:[C

.field public static final e:[C


# instance fields
.field public final b:Z

.field public final c:[Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    sput-object v0, Lk3/a;->d:[C

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lk3/a;->e:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lk3/c;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ".*[0-9A-Za-z].*"

    .line 5
    .line 6
    const-string v1, "-_.!~*\'()@:$&,;=[]/"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_5

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-boolean v0, p0, Lk3/a;->b:Z

    .line 16
    .line 17
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    array-length v2, v1

    .line 22
    const/16 v3, 0x7a

    .line 23
    .line 24
    move v4, v0

    .line 25
    move v5, v3

    .line 26
    :goto_0
    if-ge v4, v2, :cond_0

    .line 27
    .line 28
    aget-char v6, v1, v4

    .line 29
    .line 30
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/lit8 v4, v4, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 v2, 0x1

    .line 38
    add-int/2addr v5, v2

    .line 39
    new-array v4, v5, [Z

    .line 40
    .line 41
    const/16 v5, 0x30

    .line 42
    .line 43
    :goto_1
    const/16 v6, 0x39

    .line 44
    .line 45
    if-gt v5, v6, :cond_1

    .line 46
    .line 47
    aput-boolean v2, v4, v5

    .line 48
    .line 49
    add-int/lit8 v5, v5, 0x1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/16 v5, 0x41

    .line 53
    .line 54
    :goto_2
    const/16 v6, 0x5a

    .line 55
    .line 56
    if-gt v5, v6, :cond_2

    .line 57
    .line 58
    aput-boolean v2, v4, v5

    .line 59
    .line 60
    add-int/lit8 v5, v5, 0x1

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    const/16 v5, 0x61

    .line 64
    .line 65
    :goto_3
    if-gt v5, v3, :cond_3

    .line 66
    .line 67
    aput-boolean v2, v4, v5

    .line 68
    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_3
    array-length v3, v1

    .line 73
    :goto_4
    if-ge v0, v3, :cond_4

    .line 74
    .line 75
    aget-char v5, v1, v0

    .line 76
    .line 77
    aput-boolean v2, v4, v5

    .line 78
    .line 79
    add-int/lit8 v0, v0, 0x1

    .line 80
    .line 81
    goto :goto_4

    .line 82
    :cond_4
    iput-object v4, p0, Lk3/a;->c:[Z

    .line 83
    .line 84
    return-void

    .line 85
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 86
    .line 87
    const-string v1, "Alphanumeric characters are always \'safe\' and should not be explicitly specified"

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0
.end method
