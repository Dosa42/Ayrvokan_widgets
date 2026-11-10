.class public interface abstract Ld3/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:[I

.field public static final c:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Ld3/h0;->a:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-static {}, Ld3/h0;->b()Ld3/c0;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Ld3/c0;->a()[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Ld3/h0;->b:[I

    .line 17
    .line 18
    invoke-static {}, Ld3/h0;->b()Ld3/c0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, v0, Ld3/c0;->a:Z

    .line 24
    .line 25
    invoke-virtual {v0}, Ld3/c0;->a()[I

    .line 26
    .line 27
    .line 28
    invoke-static {}, Ld3/h0;->b()Ld3/c0;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-boolean v1, v0, Ld3/c0;->b:Z

    .line 33
    .line 34
    invoke-virtual {v0}, Ld3/c0;->a()[I

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Ld3/h0;->c:[I

    .line 39
    .line 40
    invoke-static {}, Ld3/h0;->b()Ld3/c0;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-boolean v1, v0, Ld3/c0;->a:Z

    .line 45
    .line 46
    iput-boolean v1, v0, Ld3/c0;->b:Z

    .line 47
    .line 48
    invoke-virtual {v0}, Ld3/c0;->a()[I

    .line 49
    .line 50
    .line 51
    invoke-static {}, Ld3/h0;->b()Ld3/c0;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-boolean v1, v0, Ld3/c0;->d:Z

    .line 56
    .line 57
    invoke-virtual {v0}, Ld3/c0;->a()[I

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public static a(Ld3/d0;[I)Ld3/h0;
    .locals 5

    .line 1
    if-nez p0, :cond_3

    .line 2
    .line 3
    sget p0, Ld3/g0;->h:I

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string v0, "SDK version: "

    .line 8
    .line 9
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sget v0, Ld3/g0;->h:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ". isEGL14Supported: "

    .line 18
    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    const/4 v2, 0x0

    .line 24
    const/16 v3, 0x12

    .line 25
    .line 26
    if-lt v0, v3, :cond_0

    .line 27
    .line 28
    move v4, v1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move v4, v2

    .line 31
    :goto_0
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const-string v4, "EglBase14Impl"

    .line 39
    .line 40
    invoke-static {v4, p0}, Lorg/webrtc/Logging;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    if-lt v0, v3, :cond_1

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    move v1, v2

    .line 47
    :goto_1
    const/4 p0, 0x0

    .line 48
    if-eqz v1, :cond_2

    .line 49
    .line 50
    new-instance v0, Ld3/g0;

    .line 51
    .line 52
    invoke-direct {v0, p0, p1}, Ld3/g0;-><init>(Landroid/opengl/EGLContext;[I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    new-instance v0, Lj0/j;

    .line 57
    .line 58
    invoke-direct {v0, p0, p1}, Lj0/j;-><init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V

    .line 59
    .line 60
    .line 61
    :goto_2
    return-object v0

    .line 62
    :cond_3
    instance-of v0, p0, Ld3/f0;

    .line 63
    .line 64
    if-eqz v0, :cond_4

    .line 65
    .line 66
    check-cast p0, Ld3/f0;

    .line 67
    .line 68
    new-instance v0, Ld3/g0;

    .line 69
    .line 70
    iget-object p0, p0, Ld3/f0;->a:Landroid/opengl/EGLContext;

    .line 71
    .line 72
    invoke-direct {v0, p0, p1}, Ld3/g0;-><init>(Landroid/opengl/EGLContext;[I)V

    .line 73
    .line 74
    .line 75
    return-object v0

    .line 76
    :cond_4
    instance-of v0, p0, Ld3/e0;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    check-cast p0, Ld3/e0;

    .line 81
    .line 82
    new-instance v0, Lj0/j;

    .line 83
    .line 84
    iget-object p0, p0, Ld3/e0;->a:Ljavax/microedition/khronos/egl/EGLContext;

    .line 85
    .line 86
    invoke-direct {v0, p0, p1}, Lj0/j;-><init>(Ljavax/microedition/khronos/egl/EGLContext;[I)V

    .line 87
    .line 88
    .line 89
    return-object v0

    .line 90
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 91
    .line 92
    const-string p1, "Unrecognized Context"

    .line 93
    .line 94
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p0
.end method

.method public static b()Ld3/c0;
    .locals 2

    .line 1
    new-instance v0, Ld3/c0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ld3/c0;-><init>(I)V

    return-object v0
.end method

.method public static c([I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    aget v1, p0, v0

    const/16 v3, 0x3040

    if-ne v1, v3, :cond_2

    add-int/2addr v0, v2

    aget p0, p0, v0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x40

    if-eq p0, v0, :cond_0

    return v2

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 p0, 0x2

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method


# virtual methods
.method public abstract d()V
.end method

.method public abstract e()V
.end method

.method public abstract f()Ld3/d0;
.end method

.method public abstract release()V
.end method
