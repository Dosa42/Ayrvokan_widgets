.class public Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;
.super Lc2/e;
.source "SourceFile"


# static fields
.field public static a0:Lq1/c0;

.field public static b0:I


# instance fields
.field public final T:Ls1/o;

.field public U:Z

.field public V:Z

.field public W:Z

.field public X:I

.field public Y:I

.field public Z:F


# direct methods
.method public constructor <init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lq1/f;Lz1/c;IIZLs1/f;)V
    .locals 11

    .line 1
    move-object v8, p0

    .line 2
    move-object v9, p2

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lc2/e;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/LinuxApplication;Lq1/f;Lz1/c;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    iput v0, v8, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->X:I

    .line 8
    .line 9
    const/16 v1, 0x64

    .line 10
    .line 11
    iput v1, v8, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->Y:I

    .line 12
    .line 13
    iput-boolean v0, v8, La2/v;->n:Z

    .line 14
    .line 15
    iget-object v1, v9, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 16
    .line 17
    sget-object v2, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/google/android/gms/internal/play_billing/i0;->R(Landroid/content/Context;)J

    .line 20
    .line 21
    .line 22
    move-result-wide v1

    .line 23
    const-wide v3, 0x12a05f200L

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    cmp-long v1, v1, v3

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    if-gez v1, :cond_0

    .line 32
    .line 33
    move v0, v2

    .line 34
    :cond_0
    sput v0, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->b0:I

    .line 35
    .line 36
    invoke-static {}, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->i()Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    iput-boolean v0, v8, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->U:Z

    .line 41
    .line 42
    new-instance v0, Ls1/o;

    .line 43
    .line 44
    invoke-direct {v0, p0, v2}, Ls1/o;-><init>(La2/a;I)V

    .line 45
    .line 46
    .line 47
    iput-object v0, v8, Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;->T:Ls1/o;

    .line 48
    .line 49
    const-string v1, "Settings_Linux_Sharpen"

    .line 50
    .line 51
    invoke-static {v1, v0}, Lo1/y;->d(Ljava/lang/String;Lo1/b;)V

    .line 52
    .line 53
    .line 54
    new-instance v10, Ls1/s;

    .line 55
    .line 56
    move-object v0, v10

    .line 57
    move-object v1, p0

    .line 58
    move v2, p4

    .line 59
    move/from16 v3, p5

    .line 60
    .line 61
    move/from16 v4, p6

    .line 62
    .line 63
    move-object v5, p2

    .line 64
    move-object/from16 v6, p7

    .line 65
    .line 66
    move-object v7, p3

    .line 67
    invoke-direct/range {v0 .. v7}, Ls1/s;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;IIZLq1/f;Ls1/f;Lz1/c;)V

    .line 68
    .line 69
    .line 70
    iput-object v10, v8, La2/v;->j:La2/u;

    .line 71
    .line 72
    iput-object v10, v8, Lc2/e;->t:Lc2/c;

    .line 73
    .line 74
    new-instance v0, Ls1/t;

    .line 75
    .line 76
    invoke-direct {v0, p0, p2}, Ls1/t;-><init>(Lcom/nomone/vr_desktop/Applications/Linux/XvfbWindow;Lq1/f;)V

    .line 77
    .line 78
    .line 79
    sget-object v1, Lq1/f;->L:Lo1/j0;

    .line 80
    .line 81
    invoke-virtual {v1, v0}, Lo1/j0;->c(Ljava/lang/Runnable;)V

    .line 82
    .line 83
    .line 84
    return-void
.end method

.method public static native nativeUpdateTextureFromMemoryMappedFile(IIZ)Z
.end method
