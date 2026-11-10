.class public final Lf2/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lf2/t;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A:Ljava/lang/String;

.field public final B:I

.field public final C:Ljava/lang/Class;

.field public D:I

.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Ljava/lang/String;

.field public final g:Lp2/b;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:I

.field public final k:Ljava/util/List;

.field public final l:Lj2/b;

.field public final m:J

.field public final n:I

.field public final o:I

.field public final p:F

.field public final q:I

.field public final r:F

.field public final s:I

.field public final t:[B

.field public final u:Lc3/a;

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lv0/l;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lv0/l;-><init>(I)V

    sput-object v0, Lf2/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf2/t;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf2/t;->b:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf2/t;->c:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf2/t;->d:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf2/t;->e:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf2/t;->f:Ljava/lang/String;

    const-class v0, Lp2/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lp2/b;

    iput-object v0, p0, Lf2/t;->g:Lp2/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf2/t;->h:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lf2/t;->i:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf2/t;->j:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lf2/t;->k:Ljava/util/List;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lf2/t;->k:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-class v0, Lj2/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lj2/b;

    iput-object v0, p0, Lf2/t;->l:Lj2/b;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lf2/t;->m:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf2/t;->n:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf2/t;->o:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lf2/t;->p:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lf2/t;->q:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lf2/t;->r:F

    sget v0, Lb3/n;->a:I

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    const/4 v0, 0x0

    if-eqz v1, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lf2/t;->t:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lf2/t;->s:I

    const-class v1, Lc3/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lc3/a;

    iput-object v1, p0, Lf2/t;->u:Lc3/a;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lf2/t;->v:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lf2/t;->w:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lf2/t;->x:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lf2/t;->y:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lf2/t;->z:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lf2/t;->A:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lf2/t;->B:I

    iput-object v0, p0, Lf2/t;->C:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V
    .locals 4

    .line 3
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lf2/t;->a:Ljava/lang/String;

    move-object v1, p2

    iput-object v1, v0, Lf2/t;->b:Ljava/lang/String;

    move v1, p3

    iput v1, v0, Lf2/t;->c:I

    move v1, p4

    iput v1, v0, Lf2/t;->d:I

    move v1, p5

    iput v1, v0, Lf2/t;->e:I

    move-object v1, p6

    iput-object v1, v0, Lf2/t;->f:Ljava/lang/String;

    move-object v1, p7

    iput-object v1, v0, Lf2/t;->g:Lp2/b;

    move-object v1, p8

    iput-object v1, v0, Lf2/t;->h:Ljava/lang/String;

    move-object v1, p9

    iput-object v1, v0, Lf2/t;->i:Ljava/lang/String;

    move v1, p10

    iput v1, v0, Lf2/t;->j:I

    if-nez p11, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, p11

    :goto_0
    iput-object v1, v0, Lf2/t;->k:Ljava/util/List;

    move-object/from16 v1, p12

    iput-object v1, v0, Lf2/t;->l:Lj2/b;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lf2/t;->m:J

    move/from16 v1, p15

    iput v1, v0, Lf2/t;->n:I

    move/from16 v1, p16

    iput v1, v0, Lf2/t;->o:I

    move/from16 v1, p17

    iput v1, v0, Lf2/t;->p:F

    const/4 v1, 0x0

    const/4 v2, -0x1

    move/from16 v3, p18

    if-ne v3, v2, :cond_1

    move v3, v1

    :cond_1
    iput v3, v0, Lf2/t;->q:I

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v3, p19, v3

    if-nez v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    move/from16 v3, p19

    :goto_1
    iput v3, v0, Lf2/t;->r:F

    move-object/from16 v3, p20

    iput-object v3, v0, Lf2/t;->t:[B

    move/from16 v3, p21

    iput v3, v0, Lf2/t;->s:I

    move-object/from16 v3, p22

    iput-object v3, v0, Lf2/t;->u:Lc3/a;

    move/from16 v3, p23

    iput v3, v0, Lf2/t;->v:I

    move/from16 v3, p24

    iput v3, v0, Lf2/t;->w:I

    move/from16 v3, p25

    iput v3, v0, Lf2/t;->x:I

    move/from16 v3, p26

    if-ne v3, v2, :cond_3

    move v3, v1

    :cond_3
    iput v3, v0, Lf2/t;->y:I

    move/from16 v3, p27

    if-ne v3, v2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    iput v1, v0, Lf2/t;->z:I

    invoke-static/range {p28 .. p28}, Lb3/n;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lf2/t;->A:Ljava/lang/String;

    move/from16 v1, p29

    iput v1, v0, Lf2/t;->B:I

    move-object/from16 v1, p30

    iput-object v1, v0, Lf2/t;->C:Ljava/lang/Class;

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp2/b;IIIILjava/lang/String;)Lf2/t;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v5, p6

    move/from16 v23, p7

    move/from16 v3, p8

    move/from16 v4, p9

    move-object/from16 v28, p10

    const/16 v24, -0x1

    const/4 v11, 0x0

    new-instance v31, Lf2/t;

    move-object/from16 v0, v31

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lj2/b;Ljava/lang/String;Lp2/b;)Lf2/t;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v5, p2

    move/from16 v10, p3

    move/from16 v23, p4

    move/from16 v24, p5

    move/from16 v25, p6

    move/from16 v26, p7

    move/from16 v27, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v28, p11

    move-object/from16 v7, p12

    const/4 v6, 0x0

    const/4 v3, 0x0

    new-instance v31, Lf2/t;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static f(Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;
    .locals 13

    .line 1
    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-static/range {v0 .. v12}, Lf2/t;->e(Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Lj2/b;Ljava/lang/String;Lp2/b;)Lf2/t;

    move-result-object v0

    return-object v0
.end method

.method public static g(Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;
    .locals 10

    .line 1
    const/4 v6, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-static/range {v0 .. v9}, Lf2/t;->f(Ljava/lang/String;Ljava/lang/String;IIIIILjava/util/List;Lj2/b;Ljava/lang/String;)Lf2/t;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;J)Lf2/t;
    .locals 32

    .line 1
    move-object/from16 v9, p0

    move-wide/from16 v13, p1

    const/4 v1, 0x0

    new-instance v31, Lf2/t;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)Lf2/t;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v12, 0x0

    new-instance v31, Lf2/t;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;I)Lf2/t;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v28, p7

    move/from16 v29, p8

    const/4 v5, -0x1

    new-instance v31, Lf2/t;

    move-object/from16 v0, v31

    const/4 v7, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static k(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IJLjava/util/List;)Lf2/t;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move/from16 v3, p2

    move-object/from16 v28, p3

    move/from16 v29, p4

    move-wide/from16 v13, p5

    move-object/from16 v11, p7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v12, 0x0

    new-instance v31, Lf2/t;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lp2/b;IIIFII)Lf2/t;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v5, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v3, p10

    move/from16 v4, p11

    const/4 v11, 0x0

    new-instance v31, Lf2/t;

    move-object/from16 v0, v31

    const/4 v10, -0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v18, -0x1

    const/high16 v19, -0x40800000    # -1.0f

    const/16 v20, 0x0

    const/16 v21, -0x1

    const/16 v22, 0x0

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method

.method public static m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;F)Lf2/t;
    .locals 11

    .line 1
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move/from16 v7, p6

    invoke-static/range {v0 .. v10}, Lf2/t;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IF[BILj2/b;)Lf2/t;

    move-result-object v0

    return-object v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/util/List;IF[BILj2/b;)Lf2/t;
    .locals 32

    .line 1
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v11, p5

    move/from16 v18, p6

    move/from16 v19, p7

    move-object/from16 v20, p8

    move/from16 v21, p9

    move-object/from16 v12, p10

    const/4 v5, -0x1

    const/4 v10, -0x1

    const/high16 v17, -0x40800000    # -1.0f

    const/16 v22, 0x0

    new-instance v31, Lf2/t;

    move-object/from16 v0, v31

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide v13, 0x7fffffffffffffffL

    const/16 v23, -0x1

    const/16 v24, -0x1

    const/16 v25, -0x1

    const/16 v26, -0x1

    const/16 v27, -0x1

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x0

    invoke-direct/range {v0 .. v30}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v31
.end method


# virtual methods
.method public final a(Lj2/b;Lp2/b;)Lf2/t;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    iget-object v1, v0, Lf2/t;->l:Lj2/b;

    move-object/from16 v14, p1

    if-ne v14, v1, :cond_0

    iget-object v1, v0, Lf2/t;->g:Lp2/b;

    move-object/from16 v9, p2

    if-ne v9, v1, :cond_1

    return-object v0

    :cond_0
    move-object/from16 v9, p2

    :cond_1
    new-instance v1, Lf2/t;

    move-object v2, v1

    iget-object v3, v0, Lf2/t;->a:Ljava/lang/String;

    iget-object v4, v0, Lf2/t;->b:Ljava/lang/String;

    iget v5, v0, Lf2/t;->c:I

    iget v6, v0, Lf2/t;->d:I

    iget v7, v0, Lf2/t;->e:I

    iget-object v8, v0, Lf2/t;->f:Ljava/lang/String;

    iget-object v10, v0, Lf2/t;->h:Ljava/lang/String;

    iget-object v11, v0, Lf2/t;->i:Ljava/lang/String;

    iget v12, v0, Lf2/t;->j:I

    iget-object v13, v0, Lf2/t;->k:Ljava/util/List;

    iget-wide v14, v0, Lf2/t;->m:J

    move-wide v15, v14

    iget v14, v0, Lf2/t;->n:I

    move/from16 v17, v14

    iget v14, v0, Lf2/t;->o:I

    move/from16 v18, v14

    iget v14, v0, Lf2/t;->p:F

    move/from16 v19, v14

    iget v14, v0, Lf2/t;->q:I

    move/from16 v20, v14

    iget v14, v0, Lf2/t;->r:F

    move/from16 v21, v14

    iget-object v14, v0, Lf2/t;->t:[B

    move-object/from16 v22, v14

    iget v14, v0, Lf2/t;->s:I

    move/from16 v23, v14

    iget-object v14, v0, Lf2/t;->u:Lc3/a;

    move-object/from16 v24, v14

    iget v14, v0, Lf2/t;->v:I

    move/from16 v25, v14

    iget v14, v0, Lf2/t;->w:I

    move/from16 v26, v14

    iget v14, v0, Lf2/t;->x:I

    move/from16 v27, v14

    iget v14, v0, Lf2/t;->y:I

    move/from16 v28, v14

    iget v14, v0, Lf2/t;->z:I

    move/from16 v29, v14

    iget-object v14, v0, Lf2/t;->A:Ljava/lang/String;

    move-object/from16 v30, v14

    iget v14, v0, Lf2/t;->B:I

    move/from16 v31, v14

    iget-object v14, v0, Lf2/t;->C:Ljava/lang/Class;

    move-object/from16 v32, v14

    move-object/from16 v9, p2

    move-object/from16 v14, p1

    invoke-direct/range {v2 .. v32}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v1
.end method

.method public final b(Lf2/t;)Lf2/t;
    .locals 35

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v2, v0, Lf2/t;->i:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2}, Lb3/c;->d(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    iget-object v4, v1, Lf2/t;->a:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v3, v1, Lf2/t;->b:Ljava/lang/String;

    .line 17
    .line 18
    if-eqz v3, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-object v3, v0, Lf2/t;->b:Ljava/lang/String;

    .line 22
    .line 23
    :goto_0
    move-object v5, v3

    .line 24
    const/4 v3, 0x3

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eq v2, v3, :cond_2

    .line 27
    .line 28
    if-ne v2, v6, :cond_3

    .line 29
    .line 30
    :cond_2
    iget-object v3, v1, Lf2/t;->A:Ljava/lang/String;

    .line 31
    .line 32
    if-eqz v3, :cond_3

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_3
    iget-object v3, v0, Lf2/t;->A:Ljava/lang/String;

    .line 36
    .line 37
    :goto_1
    move-object/from16 v31, v3

    .line 38
    .line 39
    const/4 v3, -0x1

    .line 40
    iget v7, v0, Lf2/t;->e:I

    .line 41
    .line 42
    if-ne v7, v3, :cond_4

    .line 43
    .line 44
    iget v3, v1, Lf2/t;->e:I

    .line 45
    .line 46
    move v8, v3

    .line 47
    goto :goto_2

    .line 48
    :cond_4
    move v8, v7

    .line 49
    :goto_2
    iget-object v3, v0, Lf2/t;->f:Ljava/lang/String;

    .line 50
    .line 51
    if-nez v3, :cond_5

    .line 52
    .line 53
    iget-object v7, v1, Lf2/t;->f:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2, v7}, Lb3/n;->d(ILjava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v7

    .line 59
    invoke-static {v7}, Lb3/n;->i(Ljava/lang/String;)[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v9

    .line 63
    array-length v9, v9

    .line 64
    if-ne v9, v6, :cond_5

    .line 65
    .line 66
    move-object v9, v7

    .line 67
    goto :goto_3

    .line 68
    :cond_5
    move-object v9, v3

    .line 69
    :goto_3
    const/4 v3, 0x0

    .line 70
    iget-object v7, v1, Lf2/t;->g:Lp2/b;

    .line 71
    .line 72
    iget-object v10, v0, Lf2/t;->g:Lp2/b;

    .line 73
    .line 74
    if-nez v10, :cond_6

    .line 75
    .line 76
    move-object v10, v7

    .line 77
    goto :goto_4

    .line 78
    :cond_6
    if-nez v7, :cond_7

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_7
    iget-object v7, v7, Lp2/b;->a:[Lp2/a;

    .line 82
    .line 83
    array-length v11, v7

    .line 84
    if-nez v11, :cond_8

    .line 85
    .line 86
    goto :goto_4

    .line 87
    :cond_8
    new-instance v11, Lp2/b;

    .line 88
    .line 89
    sget v12, Lb3/n;->a:I

    .line 90
    .line 91
    iget-object v10, v10, Lp2/b;->a:[Lp2/a;

    .line 92
    .line 93
    array-length v12, v10

    .line 94
    array-length v13, v7

    .line 95
    add-int/2addr v12, v13

    .line 96
    invoke-static {v10, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v12

    .line 100
    array-length v10, v10

    .line 101
    array-length v13, v7

    .line 102
    invoke-static {v7, v3, v12, v10, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    .line 104
    .line 105
    check-cast v12, [Lp2/a;

    .line 106
    .line 107
    invoke-direct {v11, v12}, Lp2/b;-><init>([Lp2/a;)V

    .line 108
    .line 109
    .line 110
    move-object v10, v11

    .line 111
    :goto_4
    iget v7, v0, Lf2/t;->p:F

    .line 112
    .line 113
    const/high16 v11, -0x40800000    # -1.0f

    .line 114
    .line 115
    cmpl-float v11, v7, v11

    .line 116
    .line 117
    if-nez v11, :cond_9

    .line 118
    .line 119
    const/4 v11, 0x2

    .line 120
    if-ne v2, v11, :cond_9

    .line 121
    .line 122
    iget v2, v1, Lf2/t;->p:F

    .line 123
    .line 124
    move/from16 v20, v2

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_9
    move/from16 v20, v7

    .line 128
    .line 129
    :goto_5
    iget v2, v0, Lf2/t;->c:I

    .line 130
    .line 131
    iget v7, v1, Lf2/t;->c:I

    .line 132
    .line 133
    or-int/2addr v2, v7

    .line 134
    iget v7, v0, Lf2/t;->d:I

    .line 135
    .line 136
    iget v11, v1, Lf2/t;->d:I

    .line 137
    .line 138
    or-int/2addr v7, v11

    .line 139
    new-instance v11, Ljava/util/ArrayList;

    .line 140
    .line 141
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .line 143
    .line 144
    iget-object v1, v1, Lf2/t;->l:Lj2/b;

    .line 145
    .line 146
    if-eqz v1, :cond_d

    .line 147
    .line 148
    iget-object v13, v1, Lj2/b;->a:[Lj2/a;

    .line 149
    .line 150
    array-length v14, v13

    .line 151
    move v15, v3

    .line 152
    :goto_6
    if-ge v15, v14, :cond_c

    .line 153
    .line 154
    aget-object v6, v13, v15

    .line 155
    .line 156
    iget-object v12, v6, Lj2/a;->e:[B

    .line 157
    .line 158
    if-eqz v12, :cond_a

    .line 159
    .line 160
    const/4 v12, 0x1

    .line 161
    goto :goto_7

    .line 162
    :cond_a
    move v12, v3

    .line 163
    :goto_7
    if-eqz v12, :cond_b

    .line 164
    .line 165
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    .line 167
    .line 168
    :cond_b
    add-int/lit8 v15, v15, 0x1

    .line 169
    .line 170
    const/4 v6, 0x1

    .line 171
    goto :goto_6

    .line 172
    :cond_c
    iget-object v1, v1, Lj2/b;->c:Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_8

    .line 175
    :cond_d
    const/4 v1, 0x0

    .line 176
    :goto_8
    iget-object v6, v0, Lf2/t;->l:Lj2/b;

    .line 177
    .line 178
    if-eqz v6, :cond_15

    .line 179
    .line 180
    if-nez v1, :cond_e

    .line 181
    .line 182
    iget-object v1, v6, Lj2/b;->c:Ljava/lang/String;

    .line 183
    .line 184
    :cond_e
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    .line 185
    .line 186
    .line 187
    move-result v12

    .line 188
    iget-object v6, v6, Lj2/b;->a:[Lj2/a;

    .line 189
    .line 190
    array-length v13, v6

    .line 191
    move v14, v3

    .line 192
    :goto_9
    if-ge v14, v13, :cond_14

    .line 193
    .line 194
    aget-object v15, v6, v14

    .line 195
    .line 196
    iget-object v3, v15, Lj2/a;->e:[B

    .line 197
    .line 198
    if-eqz v3, :cond_f

    .line 199
    .line 200
    const/4 v3, 0x1

    .line 201
    goto :goto_a

    .line 202
    :cond_f
    const/4 v3, 0x0

    .line 203
    :goto_a
    if-eqz v3, :cond_12

    .line 204
    .line 205
    const/4 v3, 0x0

    .line 206
    :goto_b
    if-ge v3, v12, :cond_11

    .line 207
    .line 208
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v19

    .line 212
    move-object/from16 p1, v1

    .line 213
    .line 214
    move-object/from16 v1, v19

    .line 215
    .line 216
    check-cast v1, Lj2/a;

    .line 217
    .line 218
    iget-object v1, v1, Lj2/a;->b:Ljava/util/UUID;

    .line 219
    .line 220
    move-object/from16 v19, v6

    .line 221
    .line 222
    iget-object v6, v15, Lj2/a;->b:Ljava/util/UUID;

    .line 223
    .line 224
    invoke-virtual {v1, v6}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_10

    .line 229
    .line 230
    const/4 v1, 0x1

    .line 231
    goto :goto_c

    .line 232
    :cond_10
    add-int/lit8 v3, v3, 0x1

    .line 233
    .line 234
    move-object/from16 v1, p1

    .line 235
    .line 236
    move-object/from16 v6, v19

    .line 237
    .line 238
    goto :goto_b

    .line 239
    :cond_11
    move-object/from16 p1, v1

    .line 240
    .line 241
    move-object/from16 v19, v6

    .line 242
    .line 243
    const/4 v1, 0x0

    .line 244
    :goto_c
    if-nez v1, :cond_13

    .line 245
    .line 246
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    .line 248
    .line 249
    goto :goto_d

    .line 250
    :cond_12
    move-object/from16 p1, v1

    .line 251
    .line 252
    move-object/from16 v19, v6

    .line 253
    .line 254
    :cond_13
    :goto_d
    add-int/lit8 v14, v14, 0x1

    .line 255
    .line 256
    move-object/from16 v1, p1

    .line 257
    .line 258
    move-object/from16 v6, v19

    .line 259
    .line 260
    const/4 v3, 0x0

    .line 261
    goto :goto_9

    .line 262
    :cond_14
    move-object/from16 p1, v1

    .line 263
    .line 264
    :cond_15
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    if-eqz v3, :cond_16

    .line 269
    .line 270
    const/4 v15, 0x0

    .line 271
    goto :goto_e

    .line 272
    :cond_16
    new-instance v3, Lj2/b;

    .line 273
    .line 274
    const/4 v6, 0x0

    .line 275
    new-array v12, v6, [Lj2/a;

    .line 276
    .line 277
    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 278
    .line 279
    .line 280
    move-result-object v11

    .line 281
    check-cast v11, [Lj2/a;

    .line 282
    .line 283
    invoke-direct {v3, v1, v6, v11}, Lj2/b;-><init>(Ljava/lang/String;Z[Lj2/a;)V

    .line 284
    .line 285
    .line 286
    move-object v15, v3

    .line 287
    :goto_e
    new-instance v1, Lf2/t;

    .line 288
    .line 289
    move-object v3, v1

    .line 290
    iget-object v11, v0, Lf2/t;->h:Ljava/lang/String;

    .line 291
    .line 292
    iget-object v12, v0, Lf2/t;->i:Ljava/lang/String;

    .line 293
    .line 294
    iget v13, v0, Lf2/t;->j:I

    .line 295
    .line 296
    iget-object v14, v0, Lf2/t;->k:Ljava/util/List;

    .line 297
    .line 298
    move-object/from16 p1, v11

    .line 299
    .line 300
    move-object/from16 v34, v12

    .line 301
    .line 302
    iget-wide v11, v0, Lf2/t;->m:J

    .line 303
    .line 304
    move-wide/from16 v16, v11

    .line 305
    .line 306
    iget v6, v0, Lf2/t;->n:I

    .line 307
    .line 308
    move/from16 v18, v6

    .line 309
    .line 310
    iget v6, v0, Lf2/t;->o:I

    .line 311
    .line 312
    move/from16 v19, v6

    .line 313
    .line 314
    iget v6, v0, Lf2/t;->q:I

    .line 315
    .line 316
    move/from16 v21, v6

    .line 317
    .line 318
    iget v6, v0, Lf2/t;->r:F

    .line 319
    .line 320
    move/from16 v22, v6

    .line 321
    .line 322
    iget-object v6, v0, Lf2/t;->t:[B

    .line 323
    .line 324
    move-object/from16 v23, v6

    .line 325
    .line 326
    iget v6, v0, Lf2/t;->s:I

    .line 327
    .line 328
    move/from16 v24, v6

    .line 329
    .line 330
    iget-object v6, v0, Lf2/t;->u:Lc3/a;

    .line 331
    .line 332
    move-object/from16 v25, v6

    .line 333
    .line 334
    iget v6, v0, Lf2/t;->v:I

    .line 335
    .line 336
    move/from16 v26, v6

    .line 337
    .line 338
    iget v6, v0, Lf2/t;->w:I

    .line 339
    .line 340
    move/from16 v27, v6

    .line 341
    .line 342
    iget v6, v0, Lf2/t;->x:I

    .line 343
    .line 344
    move/from16 v28, v6

    .line 345
    .line 346
    iget v6, v0, Lf2/t;->y:I

    .line 347
    .line 348
    move/from16 v29, v6

    .line 349
    .line 350
    iget v6, v0, Lf2/t;->z:I

    .line 351
    .line 352
    move/from16 v30, v6

    .line 353
    .line 354
    iget v6, v0, Lf2/t;->B:I

    .line 355
    .line 356
    move/from16 v32, v6

    .line 357
    .line 358
    iget-object v6, v0, Lf2/t;->C:Ljava/lang/Class;

    .line 359
    .line 360
    move-object/from16 v33, v6

    .line 361
    .line 362
    move v6, v2

    .line 363
    move-object/from16 v11, p1

    .line 364
    .line 365
    move-object/from16 v12, v34

    .line 366
    .line 367
    invoke-direct/range {v3 .. v33}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    .line 368
    .line 369
    .line 370
    return-object v1
.end method

.method public final c(J)Lf2/t;
    .locals 33

    .line 1
    move-object/from16 v0, p0

    move-wide/from16 v14, p1

    new-instance v32, Lf2/t;

    move-object/from16 v1, v32

    iget-object v2, v0, Lf2/t;->a:Ljava/lang/String;

    iget-object v3, v0, Lf2/t;->b:Ljava/lang/String;

    iget v4, v0, Lf2/t;->c:I

    iget v5, v0, Lf2/t;->d:I

    iget v6, v0, Lf2/t;->e:I

    iget-object v7, v0, Lf2/t;->f:Ljava/lang/String;

    iget-object v8, v0, Lf2/t;->g:Lp2/b;

    iget-object v9, v0, Lf2/t;->h:Ljava/lang/String;

    iget-object v10, v0, Lf2/t;->i:Ljava/lang/String;

    iget v11, v0, Lf2/t;->j:I

    iget-object v12, v0, Lf2/t;->k:Ljava/util/List;

    iget-object v13, v0, Lf2/t;->l:Lj2/b;

    move-object/from16 p1, v1

    iget v1, v0, Lf2/t;->n:I

    move/from16 v16, v1

    iget v1, v0, Lf2/t;->o:I

    move/from16 v17, v1

    iget v1, v0, Lf2/t;->p:F

    move/from16 v18, v1

    iget v1, v0, Lf2/t;->q:I

    move/from16 v19, v1

    iget v1, v0, Lf2/t;->r:F

    move/from16 v20, v1

    iget-object v1, v0, Lf2/t;->t:[B

    move-object/from16 v21, v1

    iget v1, v0, Lf2/t;->s:I

    move/from16 v22, v1

    iget-object v1, v0, Lf2/t;->u:Lc3/a;

    move-object/from16 v23, v1

    iget v1, v0, Lf2/t;->v:I

    move/from16 v24, v1

    iget v1, v0, Lf2/t;->w:I

    move/from16 v25, v1

    iget v1, v0, Lf2/t;->x:I

    move/from16 v26, v1

    iget v1, v0, Lf2/t;->y:I

    move/from16 v27, v1

    iget v1, v0, Lf2/t;->z:I

    move/from16 v28, v1

    iget-object v1, v0, Lf2/t;->A:Ljava/lang/String;

    move-object/from16 v29, v1

    iget v1, v0, Lf2/t;->B:I

    move/from16 v30, v1

    iget-object v1, v0, Lf2/t;->C:Ljava/lang/Class;

    move-object/from16 v31, v1

    move-object/from16 v1, p1

    invoke-direct/range {v1 .. v31}, Lf2/t;-><init>(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;Lp2/b;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lj2/b;JIIFIF[BILc3/a;IIIIILjava/lang/String;ILjava/lang/Class;)V

    return-object v32
.end method

.method public final describeContents()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_7

    .line 7
    .line 8
    const-class v2, Lf2/t;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    .line 16
    goto/16 :goto_4

    .line 17
    .line 18
    :cond_1
    check-cast p1, Lf2/t;

    .line 19
    .line 20
    iget v2, p0, Lf2/t;->D:I

    .line 21
    .line 22
    if-eqz v2, :cond_2

    .line 23
    .line 24
    iget v3, p1, Lf2/t;->D:I

    .line 25
    .line 26
    if-eqz v3, :cond_2

    .line 27
    .line 28
    if-eq v2, v3, :cond_2

    .line 29
    .line 30
    return v1

    .line 31
    :cond_2
    iget v2, p0, Lf2/t;->c:I

    .line 32
    .line 33
    iget v3, p1, Lf2/t;->c:I

    .line 34
    .line 35
    if-ne v2, v3, :cond_6

    .line 36
    .line 37
    iget v2, p0, Lf2/t;->d:I

    .line 38
    .line 39
    iget v3, p1, Lf2/t;->d:I

    .line 40
    .line 41
    if-ne v2, v3, :cond_6

    .line 42
    .line 43
    iget v2, p0, Lf2/t;->e:I

    .line 44
    .line 45
    iget v3, p1, Lf2/t;->e:I

    .line 46
    .line 47
    if-ne v2, v3, :cond_6

    .line 48
    .line 49
    iget v2, p0, Lf2/t;->j:I

    .line 50
    .line 51
    iget v3, p1, Lf2/t;->j:I

    .line 52
    .line 53
    if-ne v2, v3, :cond_6

    .line 54
    .line 55
    iget-wide v2, p0, Lf2/t;->m:J

    .line 56
    .line 57
    iget-wide v4, p1, Lf2/t;->m:J

    .line 58
    .line 59
    cmp-long v2, v2, v4

    .line 60
    .line 61
    if-nez v2, :cond_6

    .line 62
    .line 63
    iget v2, p0, Lf2/t;->n:I

    .line 64
    .line 65
    iget v3, p1, Lf2/t;->n:I

    .line 66
    .line 67
    if-ne v2, v3, :cond_6

    .line 68
    .line 69
    iget v2, p0, Lf2/t;->o:I

    .line 70
    .line 71
    iget v3, p1, Lf2/t;->o:I

    .line 72
    .line 73
    if-ne v2, v3, :cond_6

    .line 74
    .line 75
    iget v2, p0, Lf2/t;->q:I

    .line 76
    .line 77
    iget v3, p1, Lf2/t;->q:I

    .line 78
    .line 79
    if-ne v2, v3, :cond_6

    .line 80
    .line 81
    iget v2, p0, Lf2/t;->s:I

    .line 82
    .line 83
    iget v3, p1, Lf2/t;->s:I

    .line 84
    .line 85
    if-ne v2, v3, :cond_6

    .line 86
    .line 87
    iget v2, p0, Lf2/t;->v:I

    .line 88
    .line 89
    iget v3, p1, Lf2/t;->v:I

    .line 90
    .line 91
    if-ne v2, v3, :cond_6

    .line 92
    .line 93
    iget v2, p0, Lf2/t;->w:I

    .line 94
    .line 95
    iget v3, p1, Lf2/t;->w:I

    .line 96
    .line 97
    if-ne v2, v3, :cond_6

    .line 98
    .line 99
    iget v2, p0, Lf2/t;->x:I

    .line 100
    .line 101
    iget v3, p1, Lf2/t;->x:I

    .line 102
    .line 103
    if-ne v2, v3, :cond_6

    .line 104
    .line 105
    iget v2, p0, Lf2/t;->y:I

    .line 106
    .line 107
    iget v3, p1, Lf2/t;->y:I

    .line 108
    .line 109
    if-ne v2, v3, :cond_6

    .line 110
    .line 111
    iget v2, p0, Lf2/t;->z:I

    .line 112
    .line 113
    iget v3, p1, Lf2/t;->z:I

    .line 114
    .line 115
    if-ne v2, v3, :cond_6

    .line 116
    .line 117
    iget v2, p0, Lf2/t;->B:I

    .line 118
    .line 119
    iget v3, p1, Lf2/t;->B:I

    .line 120
    .line 121
    if-ne v2, v3, :cond_6

    .line 122
    .line 123
    iget v2, p0, Lf2/t;->p:F

    .line 124
    .line 125
    iget v3, p1, Lf2/t;->p:F

    .line 126
    .line 127
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    if-nez v2, :cond_6

    .line 132
    .line 133
    iget v2, p0, Lf2/t;->r:F

    .line 134
    .line 135
    iget v3, p1, Lf2/t;->r:F

    .line 136
    .line 137
    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-nez v2, :cond_6

    .line 142
    .line 143
    iget-object v2, p0, Lf2/t;->C:Ljava/lang/Class;

    .line 144
    .line 145
    iget-object v3, p1, Lf2/t;->C:Ljava/lang/Class;

    .line 146
    .line 147
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    move-result v2

    .line 151
    if-eqz v2, :cond_6

    .line 152
    .line 153
    iget-object v2, p0, Lf2/t;->a:Ljava/lang/String;

    .line 154
    .line 155
    iget-object v3, p1, Lf2/t;->a:Ljava/lang/String;

    .line 156
    .line 157
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-eqz v2, :cond_6

    .line 162
    .line 163
    iget-object v2, p0, Lf2/t;->b:Ljava/lang/String;

    .line 164
    .line 165
    iget-object v3, p1, Lf2/t;->b:Ljava/lang/String;

    .line 166
    .line 167
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    if-eqz v2, :cond_6

    .line 172
    .line 173
    iget-object v2, p0, Lf2/t;->f:Ljava/lang/String;

    .line 174
    .line 175
    iget-object v3, p1, Lf2/t;->f:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    if-eqz v2, :cond_6

    .line 182
    .line 183
    iget-object v2, p0, Lf2/t;->h:Ljava/lang/String;

    .line 184
    .line 185
    iget-object v3, p1, Lf2/t;->h:Ljava/lang/String;

    .line 186
    .line 187
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v2

    .line 191
    if-eqz v2, :cond_6

    .line 192
    .line 193
    iget-object v2, p0, Lf2/t;->i:Ljava/lang/String;

    .line 194
    .line 195
    iget-object v3, p1, Lf2/t;->i:Ljava/lang/String;

    .line 196
    .line 197
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_6

    .line 202
    .line 203
    iget-object v2, p0, Lf2/t;->A:Ljava/lang/String;

    .line 204
    .line 205
    iget-object v3, p1, Lf2/t;->A:Ljava/lang/String;

    .line 206
    .line 207
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_6

    .line 212
    .line 213
    iget-object v2, p0, Lf2/t;->t:[B

    .line 214
    .line 215
    iget-object v3, p1, Lf2/t;->t:[B

    .line 216
    .line 217
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    .line 218
    .line 219
    .line 220
    move-result v2

    .line 221
    if-eqz v2, :cond_6

    .line 222
    .line 223
    iget-object v2, p0, Lf2/t;->g:Lp2/b;

    .line 224
    .line 225
    iget-object v3, p1, Lf2/t;->g:Lp2/b;

    .line 226
    .line 227
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 228
    .line 229
    .line 230
    move-result v2

    .line 231
    if-eqz v2, :cond_6

    .line 232
    .line 233
    iget-object v2, p0, Lf2/t;->u:Lc3/a;

    .line 234
    .line 235
    iget-object v3, p1, Lf2/t;->u:Lc3/a;

    .line 236
    .line 237
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 238
    .line 239
    .line 240
    move-result v2

    .line 241
    if-eqz v2, :cond_6

    .line 242
    .line 243
    iget-object v2, p0, Lf2/t;->l:Lj2/b;

    .line 244
    .line 245
    iget-object v3, p1, Lf2/t;->l:Lj2/b;

    .line 246
    .line 247
    invoke-static {v2, v3}, Lb3/n;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    move-result v2

    .line 251
    if-eqz v2, :cond_6

    .line 252
    .line 253
    iget-object v2, p0, Lf2/t;->k:Ljava/util/List;

    .line 254
    .line 255
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 256
    .line 257
    .line 258
    move-result v3

    .line 259
    iget-object p1, p1, Lf2/t;->k:Ljava/util/List;

    .line 260
    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 262
    .line 263
    .line 264
    move-result v4

    .line 265
    if-eq v3, v4, :cond_3

    .line 266
    .line 267
    :goto_0
    move p1, v1

    .line 268
    goto :goto_2

    .line 269
    :cond_3
    move v3, v1

    .line 270
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 271
    .line 272
    .line 273
    move-result v4

    .line 274
    if-ge v3, v4, :cond_5

    .line 275
    .line 276
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    move-result-object v4

    .line 280
    check-cast v4, [B

    .line 281
    .line 282
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v5

    .line 286
    check-cast v5, [B

    .line 287
    .line 288
    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    if-nez v4, :cond_4

    .line 293
    .line 294
    goto :goto_0

    .line 295
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 296
    .line 297
    goto :goto_1

    .line 298
    :cond_5
    move p1, v0

    .line 299
    :goto_2
    if-eqz p1, :cond_6

    .line 300
    .line 301
    goto :goto_3

    .line 302
    :cond_6
    move v0, v1

    .line 303
    :goto_3
    return v0

    .line 304
    :cond_7
    :goto_4
    return v1
.end method

.method public final hashCode()I
    .locals 5

    .line 1
    iget v0, p0, Lf2/t;->D:I

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iget-object v1, p0, Lf2/t;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    const/16 v2, 0x20f

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lf2/t;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->c:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->d:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->e:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lf2/t;->f:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lf2/t;->g:Lp2/b;

    if-nez v1, :cond_3

    move v1, v0

    goto :goto_3

    :cond_3
    invoke-virtual {v1}, Lp2/b;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lf2/t;->h:Ljava/lang/String;

    if-nez v1, :cond_4

    move v1, v0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lf2/t;->i:Ljava/lang/String;

    if-nez v1, :cond_5

    move v1, v0

    goto :goto_5

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_5
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->j:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-wide v3, p0, Lf2/t;->m:J

    long-to-int v1, v3

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->n:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->o:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->p:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lf2/t;->q:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lf2/t;->r:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->s:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->v:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->w:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->x:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->y:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->z:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lf2/t;->A:Ljava/lang/String;

    if-nez v1, :cond_6

    move v1, v0

    goto :goto_6

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_6
    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget v1, p0, Lf2/t;->B:I

    add-int/2addr v2, v1

    mul-int/lit8 v2, v2, 0x1f

    iget-object v1, p0, Lf2/t;->C:Ljava/lang/Class;

    if-nez v1, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v2, v0

    iput v2, p0, Lf2/t;->D:I

    :cond_8
    iget v0, p0, Lf2/t;->D:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Format("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf2/t;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf2/t;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf2/t;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf2/t;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf2/t;->f:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf2/t;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lf2/t;->A:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf2/t;->n:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf2/t;->o:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf2/t;->p:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lf2/t;->v:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lf2/t;->w:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lf2/t;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lf2/t;->b:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lf2/t;->c:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lf2/t;->d:I

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget v0, p0, Lf2/t;->e:I

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lf2/t;->f:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lf2/t;->g:Lp2/b;

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lf2/t;->h:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lf2/t;->i:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget v0, p0, Lf2/t;->j:I

    .line 48
    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lf2/t;->k:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    .line 60
    .line 61
    move v3, v1

    .line 62
    :goto_0
    if-ge v3, v2, :cond_0

    .line 63
    .line 64
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    check-cast v4, [B

    .line 69
    .line 70
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 71
    .line 72
    .line 73
    add-int/lit8 v3, v3, 0x1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lf2/t;->l:Lj2/b;

    .line 77
    .line 78
    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 79
    .line 80
    .line 81
    iget-wide v2, p0, Lf2/t;->m:J

    .line 82
    .line 83
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 84
    .line 85
    .line 86
    iget v0, p0, Lf2/t;->n:I

    .line 87
    .line 88
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    .line 90
    .line 91
    iget v0, p0, Lf2/t;->o:I

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    .line 95
    .line 96
    iget v0, p0, Lf2/t;->p:F

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 99
    .line 100
    .line 101
    iget v0, p0, Lf2/t;->q:I

    .line 102
    .line 103
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    .line 105
    .line 106
    iget v0, p0, Lf2/t;->r:F

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lf2/t;->t:[B

    .line 112
    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    const/4 v1, 0x1

    .line 116
    :cond_1
    sget v2, Lb3/n;->a:I

    .line 117
    .line 118
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    .line 120
    .line 121
    if-eqz v0, :cond_2

    .line 122
    .line 123
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 124
    .line 125
    .line 126
    :cond_2
    iget v0, p0, Lf2/t;->s:I

    .line 127
    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lf2/t;->u:Lc3/a;

    .line 132
    .line 133
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    .line 135
    .line 136
    iget p2, p0, Lf2/t;->v:I

    .line 137
    .line 138
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    .line 140
    .line 141
    iget p2, p0, Lf2/t;->w:I

    .line 142
    .line 143
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    .line 145
    .line 146
    iget p2, p0, Lf2/t;->x:I

    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    .line 150
    .line 151
    iget p2, p0, Lf2/t;->y:I

    .line 152
    .line 153
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    .line 155
    .line 156
    iget p2, p0, Lf2/t;->z:I

    .line 157
    .line 158
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    .line 160
    .line 161
    iget-object p2, p0, Lf2/t;->A:Ljava/lang/String;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    iget p2, p0, Lf2/t;->B:I

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    .line 170
    .line 171
    return-void
.end method
