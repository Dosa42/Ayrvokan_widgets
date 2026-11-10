.class public final Ld3/g;
.super Ld3/p;
.source "SourceFile"


# instance fields
.field public final v:Landroid/hardware/camera2/CameraManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ld3/y;)V
    .locals 1

    .line 1
    new-instance v0, Ld3/h;

    invoke-direct {v0, p1}, Ld3/h;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p2, p3, v0}, Ld3/p;-><init>(Ljava/lang/String;Ld3/y;Ld3/w;)V

    const-string p2, "camera"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Ld3/g;->v:Landroid/hardware/camera2/CameraManager;

    return-void
.end method


# virtual methods
.method public final c(Ld3/m;Ld3/m;Landroid/content/Context;Ld3/p0;Ljava/lang/String;III)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v5, v0, Ld3/g;->v:Landroid/hardware/camera2/CameraManager;

    .line 3
    .line 4
    new-instance v1, Ld3/l;

    .line 5
    .line 6
    move-object v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-object v4, p3

    .line 9
    move-object v6, p4

    .line 10
    move-object/from16 v7, p5

    .line 11
    .line 12
    move/from16 v8, p6

    .line 13
    .line 14
    move/from16 v9, p7

    .line 15
    .line 16
    move/from16 v10, p8

    .line 17
    .line 18
    invoke-direct/range {v1 .. v10}, Ld3/l;-><init>(Ld3/m;Ld3/m;Landroid/content/Context;Landroid/hardware/camera2/CameraManager;Ld3/p0;Ljava/lang/String;III)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
