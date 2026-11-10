.class public final Ld3/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld3/i0;


# static fields
.field public static final e:[F

.field public static final f:[F

.field public static final g:[F


# instance fields
.field public a:I

.field public b:I

.field public c:[F

.field public d:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Ld3/x0;->e:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Ld3/x0;->f:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Ld3/x0;->g:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x3e8379b7
        0x3f010e99
        0x3dc882e3
        0x3d808081
    .end array-data

    :array_1
    .array-data 4
        -0x41e8383b
        -0x416b02f7
        0x3ee0e0eb
        0x3f008084
    .end array-data

    :array_2
    .array-data 4
        0x3ee0e0eb
        -0x4143b14b
        -0x426db779
        0x3f008084
    .end array-data
.end method
