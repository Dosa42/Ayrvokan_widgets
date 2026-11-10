.class public abstract Lo2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/regex/Pattern;

.field public static final b:Ljava/util/HashMap;

.field public static final c:Landroid/util/SparseIntArray;

.field public static final d:Landroid/util/SparseIntArray;

.field public static final e:Landroid/util/SparseIntArray;

.field public static final f:Landroid/util/SparseIntArray;

.field public static final g:Ljava/util/HashMap;

.field public static final h:Ljava/util/HashMap;

.field public static final i:Ljava/util/HashMap;

.field public static final j:Landroid/util/SparseIntArray;

.field public static final k:Landroid/util/SparseIntArray;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    const-string v0, "^\\D?(\\d+)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lo2/g;->a:Ljava/util/regex/Pattern;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo2/g;->b:Ljava/util/HashMap;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo2/g;->c:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x42

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x4d

    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0x58

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v9, 0x64

    invoke-virtual {v0, v9, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v9, 0x10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x6e

    invoke-virtual {v0, v11, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v11, 0x20

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/16 v13, 0x7a

    invoke-virtual {v0, v13, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v13, 0x40

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/16 v15, 0xf4

    invoke-virtual {v0, v15, v13}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo2/g;->d:Landroid/util/SparseIntArray;

    const/16 v15, 0xa

    invoke-virtual {v0, v15, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0xb

    invoke-virtual {v0, v15, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0xc

    invoke-virtual {v0, v15, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0xd

    invoke-virtual {v0, v15, v9}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0x14

    invoke-virtual {v0, v15, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v9, 0x15

    invoke-virtual {v0, v9, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v13, 0x80

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v15, 0x16

    invoke-virtual {v0, v15, v13}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v15, 0x100

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/16 v7, 0x1e

    invoke-virtual {v0, v7, v15}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v7, 0x200

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v5, 0x1f

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x400

    invoke-virtual {v0, v11, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x28

    const/16 v7, 0x800

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x29

    const/16 v7, 0x1000

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x2a

    const/16 v7, 0x2000

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x32

    const/16 v7, 0x4000

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x33

    const v7, 0x8000

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x34

    const/high16 v7, 0x10000

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo2/g;->e:Landroid/util/SparseIntArray;

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v7, 0x3

    const/16 v11, 0x8

    invoke-virtual {v0, v7, v11}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo2/g;->f:Landroid/util/SparseIntArray;

    const/16 v7, 0xa

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v7, 0xb

    invoke-virtual {v0, v7, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v7, 0x14

    invoke-virtual {v0, v7, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x15

    invoke-virtual {v0, v5, v11}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x1e

    const/16 v7, 0x10

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x1f

    const/16 v7, 0x20

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x28

    const/16 v7, 0x40

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x29

    const/16 v7, 0x80

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x32

    const/16 v7, 0x100

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x33

    const/16 v7, 0x200

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x3c

    const/16 v7, 0x800

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x3d

    const/16 v7, 0x1000

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x3e

    const/16 v7, 0x2000

    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo2/g;->g:Ljava/util/HashMap;

    const-string v5, "L30"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "L60"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "L63"

    invoke-virtual {v0, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "L90"

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "L93"

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "L120"

    const/16 v7, 0x400

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "L123"

    const/16 v7, 0x1000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "L150"

    const/16 v7, 0x4000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x10000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v5, "L153"

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x40000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "L156"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x100000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "L180"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x400000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "L183"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x1000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "L186"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "H30"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "H60"

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "H63"

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "H90"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "H93"

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "H120"

    const/16 v7, 0x800

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "H123"

    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "H150"

    const v7, 0x8000

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x20000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "H153"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x80000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "H156"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x200000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "H180"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x800000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "H183"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/high16 v5, 0x2000000

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "H186"

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo2/g;->h:Ljava/util/HashMap;

    const-string v5, "00"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "01"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "02"

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "03"

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "04"

    invoke-virtual {v0, v5, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "05"

    invoke-virtual {v0, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "06"

    invoke-virtual {v0, v5, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "07"

    invoke-virtual {v0, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "08"

    invoke-virtual {v0, v5, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "09"

    invoke-virtual {v0, v5, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lo2/g;->i:Ljava/util/HashMap;

    const-string v5, "01"

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "02"

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "03"

    invoke-virtual {v0, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "04"

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "05"

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "06"

    invoke-virtual {v0, v2, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "07"

    invoke-virtual {v0, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "08"

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "09"

    invoke-virtual {v0, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo2/g;->j:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x8

    const/4 v5, 0x3

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v5, 0x10

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v2, 0x5

    const/16 v5, 0x20

    invoke-virtual {v0, v2, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v5, 0x6

    const/16 v6, 0x40

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v6, 0x7

    const/16 v7, 0x80

    invoke-virtual {v0, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v6, 0x100

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x9

    const/16 v6, 0x200

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xa

    const/16 v6, 0x400

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xb

    const/16 v6, 0x800

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xc

    const/16 v6, 0x1000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xd

    const/16 v6, 0x2000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xe

    const/16 v6, 0x4000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0xf

    const v6, 0x8000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x10

    const/high16 v6, 0x10000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x11

    const/high16 v6, 0x20000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x12

    const/high16 v6, 0x40000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x13

    const/high16 v6, 0x80000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v4, 0x100000

    const/16 v6, 0x14

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/high16 v4, 0x200000

    const/16 v6, 0x15

    invoke-virtual {v0, v6, v4}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x16

    const/high16 v6, 0x400000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v4, 0x17

    const/high16 v6, 0x800000

    invoke-virtual {v0, v4, v6}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo2/g;->k:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v3, v3}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v2, v2}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v0, v5, v5}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x11

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x14

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x17

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x1d

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x27

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 10

    .line 1
    const-string v0, "audio/raw"

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p0, :cond_1

    .line 10
    .line 11
    sget p0, Lb3/n;->a:I

    .line 12
    .line 13
    const/16 v2, 0x1a

    .line 14
    .line 15
    if-ge p0, v2, :cond_0

    .line 16
    .line 17
    sget-object p0, Lb3/n;->b:Ljava/lang/String;

    .line 18
    .line 19
    const-string v2, "R9"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-ne p0, v0, :cond_0

    .line 32
    .line 33
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    check-cast p0, Lo2/a;

    .line 38
    .line 39
    iget-object p0, p0, Lo2/a;->a:Ljava/lang/String;

    .line 40
    .line 41
    const-string v2, "OMX.MTK.AUDIO.DECODER.RAW"

    .line 42
    .line 43
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-eqz p0, :cond_0

    .line 48
    .line 49
    const-string v2, "OMX.google.raw.decoder"

    .line 50
    .line 51
    const-string v3, "audio/raw"

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    const/4 v6, 0x1

    .line 56
    const/4 v7, 0x0

    .line 57
    const/4 v8, 0x0

    .line 58
    const/4 v9, 0x0

    .line 59
    invoke-static/range {v2 .. v9}, Lo2/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lo2/a;

    .line 60
    .line 61
    .line 62
    move-result-object p0

    .line 63
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    :cond_0
    new-instance p0, Lh0/c;

    .line 67
    .line 68
    const/16 v2, 0x16

    .line 69
    .line 70
    invoke-direct {p0, v2}, Lh0/c;-><init>(I)V

    .line 71
    .line 72
    .line 73
    new-instance v2, Lo2/b;

    .line 74
    .line 75
    invoke-direct {v2, p0}, Lo2/b;-><init>(Lh0/c;)V

    .line 76
    .line 77
    .line 78
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    .line 80
    .line 81
    :cond_1
    sget p0, Lb3/n;->a:I

    .line 82
    .line 83
    const/16 v2, 0x15

    .line 84
    .line 85
    if-ge p0, v2, :cond_3

    .line 86
    .line 87
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 88
    .line 89
    .line 90
    move-result v2

    .line 91
    if-le v2, v0, :cond_3

    .line 92
    .line 93
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    check-cast v2, Lo2/a;

    .line 98
    .line 99
    iget-object v2, v2, Lo2/a;->a:Ljava/lang/String;

    .line 100
    .line 101
    const-string v3, "OMX.SEC.mp3.dec"

    .line 102
    .line 103
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-nez v3, :cond_2

    .line 108
    .line 109
    const-string v3, "OMX.SEC.MP3.Decoder"

    .line 110
    .line 111
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    if-nez v3, :cond_2

    .line 116
    .line 117
    const-string v3, "OMX.brcm.audio.mp3.decoder"

    .line 118
    .line 119
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_3

    .line 124
    .line 125
    :cond_2
    new-instance v2, Lh0/c;

    .line 126
    .line 127
    const/16 v3, 0x17

    .line 128
    .line 129
    invoke-direct {v2, v3}, Lh0/c;-><init>(I)V

    .line 130
    .line 131
    .line 132
    new-instance v3, Lo2/b;

    .line 133
    .line 134
    invoke-direct {v3, v2}, Lo2/b;-><init>(Lh0/c;)V

    .line 135
    .line 136
    .line 137
    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    const/16 v2, 0x1e

    .line 141
    .line 142
    if-ge p0, v2, :cond_4

    .line 143
    .line 144
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    if-le p0, v0, :cond_4

    .line 149
    .line 150
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p0

    .line 154
    check-cast p0, Lo2/a;

    .line 155
    .line 156
    iget-object p0, p0, Lo2/a;->a:Ljava/lang/String;

    .line 157
    .line 158
    const-string v0, "OMX.qti.audio.decoder.flac"

    .line 159
    .line 160
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    move-result p0

    .line 164
    if-eqz p0, :cond_4

    .line 165
    .line 166
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p0

    .line 170
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_4
    return-void
.end method

.method public static b(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getSupportedTypes()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "video/dolby-vision"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "OMX.MS.HEVCDV.Decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "video/hevcdv"

    return-object p0

    :cond_2
    const-string p0, "OMX.RTK.video.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, "OMX.realtek.video.decoder.tunneled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    :cond_3
    const-string p0, "video/dv_hevc"

    return-object p0

    :cond_4
    const-string p0, "audio/alac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "OMX.lge.alac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "audio/x-lg-alac"

    return-object p0

    :cond_5
    const-string p0, "audio/flac"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "OMX.lge.flac.decoder"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "audio/x-lg-flac"

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method

.method public static declared-synchronized c(Ljava/lang/String;)Ljava/util/List;
    .locals 5

    .line 1
    const-class v0, Lo2/g;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lo2/c;

    invoke-direct {v1, p0}, Lo2/c;-><init>(Ljava/lang/String;)V

    sget-object v2, Lo2/g;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v3

    :cond_0
    :try_start_1
    sget v3, Lb3/n;->a:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    new-instance v3, Lo/a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lo/a;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance v3, Lc/a;

    invoke-direct {v3}, Lc/a;-><init>()V

    :goto_0
    invoke-static {v1, v3}, Lo2/g;->d(Lo2/c;Lo2/e;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {p0, v3}, Lo2/g;->a(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static d(Lo2/c;Lo2/e;)Ljava/util/ArrayList;
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "secure-playback"

    .line 6
    .line 7
    const-string v4, "tunneled-playback"

    .line 8
    .line 9
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v14, v1, Lo2/c;->a:Ljava/lang/String;

    .line 15
    .line 16
    invoke-interface/range {p1 .. p1}, Lo2/e;->c()I

    .line 17
    .line 18
    .line 19
    move-result v15

    .line 20
    invoke-interface/range {p1 .. p1}, Lo2/e;->F()Z

    .line 21
    .line 22
    .line 23
    move-result v13

    .line 24
    const/16 v16, 0x0

    .line 25
    .line 26
    move/from16 v12, v16

    .line 27
    .line 28
    :goto_0
    if-ge v12, v15, :cond_14

    .line 29
    .line 30
    invoke-interface {v2, v12}, Lo2/e;->h(I)Landroid/media/MediaCodecInfo;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sget v6, Lb3/n;->a:I

    .line 35
    .line 36
    const/16 v7, 0x1d

    .line 37
    .line 38
    if-lt v6, v7, :cond_0

    .line 39
    .line 40
    invoke-static {v0}, Landroidx/lifecycle/v;->l(Landroid/media/MediaCodecInfo;)Z

    .line 41
    .line 42
    .line 43
    move-result v9

    .line 44
    if-eqz v9, :cond_0

    .line 45
    .line 46
    const/4 v9, 0x1

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    move/from16 v9, v16

    .line 49
    .line 50
    :goto_1
    if-eqz v9, :cond_1

    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    invoke-static {v0, v9, v13, v14}, Lo2/g;->e(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v10

    .line 61
    if-nez v10, :cond_2

    .line 62
    .line 63
    goto :goto_2

    .line 64
    :cond_2
    invoke-static {v0, v9, v14}, Lo2/g;->b(Landroid/media/MediaCodecInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 68
    if-nez v10, :cond_3

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_3
    :try_start_1
    invoke-virtual {v0, v10}, Landroid/media/MediaCodecInfo;->getCapabilitiesForType(Ljava/lang/String;)Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 72
    .line 73
    .line 74
    move-result-object v11

    .line 75
    invoke-interface {v2, v4, v10, v11}, Lo2/e;->x(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 76
    .line 77
    .line 78
    move-result v17

    .line 79
    invoke-interface {v2, v4, v11}, Lo2/e;->b(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 80
    .line 81
    .line 82
    move-result v18

    .line 83
    iget-boolean v8, v1, Lo2/c;->c:Z

    .line 84
    .line 85
    if-nez v8, :cond_4

    .line 86
    .line 87
    if-nez v18, :cond_7

    .line 88
    .line 89
    :cond_4
    if-eqz v8, :cond_5

    .line 90
    .line 91
    if-nez v17, :cond_5

    .line 92
    .line 93
    goto :goto_2

    .line 94
    :cond_5
    invoke-interface {v2, v3, v10, v11}, Lo2/e;->x(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 95
    .line 96
    .line 97
    move-result v8

    .line 98
    invoke-interface {v2, v3, v11}, Lo2/e;->b(Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;)Z

    .line 99
    .line 100
    .line 101
    move-result v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    iget-boolean v7, v1, Lo2/c;->b:Z

    .line 103
    .line 104
    if-nez v7, :cond_6

    .line 105
    .line 106
    if-nez v10, :cond_7

    .line 107
    .line 108
    :cond_6
    if-eqz v7, :cond_8

    .line 109
    .line 110
    if-nez v8, :cond_8

    .line 111
    .line 112
    :cond_7
    :goto_2
    move/from16 v17, v12

    .line 113
    .line 114
    move/from16 v20, v13

    .line 115
    .line 116
    goto/16 :goto_7

    .line 117
    .line 118
    :cond_8
    const/16 v10, 0x1d

    .line 119
    .line 120
    if-lt v6, v10, :cond_9

    .line 121
    .line 122
    :try_start_2
    invoke-static {v0}, Landroidx/lifecycle/v;->n(Landroid/media/MediaCodecInfo;)Z

    .line 123
    .line 124
    .line 125
    move-result v10

    .line 126
    const/16 v18, 0x1

    .line 127
    .line 128
    goto :goto_3

    .line 129
    :cond_9
    invoke-static {v0}, Lo2/g;->f(Landroid/media/MediaCodecInfo;)Z

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    const/16 v18, 0x1

    .line 134
    .line 135
    xor-int/lit8 v10, v10, 0x1

    .line 136
    .line 137
    :goto_3
    invoke-static {v0}, Lo2/g;->f(Landroid/media/MediaCodecInfo;)Z

    .line 138
    .line 139
    .line 140
    move-result v19

    .line 141
    const/16 v1, 0x1d

    .line 142
    .line 143
    if-lt v6, v1, :cond_a

    .line 144
    .line 145
    invoke-static {v0}, Landroidx/lifecycle/v;->p(Landroid/media/MediaCodecInfo;)Z

    .line 146
    .line 147
    .line 148
    move-result v0

    .line 149
    goto :goto_4

    .line 150
    :cond_a
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v0

    .line 154
    invoke-static {v0}, Lb3/n;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    const-string v1, "omx.google."

    .line 159
    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_b

    .line 165
    .line 166
    const-string v1, "c2.android."

    .line 167
    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_b

    .line 173
    .line 174
    const-string v1, "c2.google."

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 177
    .line 178
    .line 179
    move-result v0

    .line 180
    if-nez v0, :cond_b

    .line 181
    .line 182
    move/from16 v0, v18

    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_b
    move/from16 v0, v16

    .line 186
    .line 187
    :goto_4
    const/16 v1, 0x16

    .line 188
    .line 189
    if-gt v6, v1, :cond_d

    .line 190
    .line 191
    sget-object v1, Lb3/n;->d:Ljava/lang/String;

    .line 192
    .line 193
    const-string v6, "ODROID-XU3"

    .line 194
    .line 195
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    if-nez v6, :cond_c

    .line 200
    .line 201
    const-string v6, "Nexus 10"

    .line 202
    .line 203
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-eqz v1, :cond_d

    .line 208
    .line 209
    :cond_c
    const-string v1, "OMX.Exynos.AVC.Decoder"

    .line 210
    .line 211
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-nez v1, :cond_e

    .line 216
    .line 217
    const-string v1, "OMX.Exynos.AVC.Decoder.secure"

    .line 218
    .line 219
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 223
    if-eqz v1, :cond_d

    .line 224
    .line 225
    goto :goto_5

    .line 226
    :cond_d
    move/from16 v18, v16

    .line 227
    .line 228
    :cond_e
    :goto_5
    if-eqz v13, :cond_f

    .line 229
    .line 230
    if-eq v7, v8, :cond_10

    .line 231
    .line 232
    :cond_f
    if-nez v13, :cond_11

    .line 233
    .line 234
    if-nez v7, :cond_11

    .line 235
    .line 236
    :cond_10
    const/4 v1, 0x0

    .line 237
    move-object v6, v9

    .line 238
    move-object v7, v14

    .line 239
    move-object v8, v11

    .line 240
    move v9, v10

    .line 241
    move/from16 v10, v19

    .line 242
    .line 243
    move v11, v0

    .line 244
    move/from16 v17, v12

    .line 245
    .line 246
    move/from16 v12, v18

    .line 247
    .line 248
    move/from16 v20, v13

    .line 249
    .line 250
    move v13, v1

    .line 251
    :try_start_3
    invoke-static/range {v6 .. v13}, Lo2/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lo2/a;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 256
    .line 257
    .line 258
    goto :goto_7

    .line 259
    :catch_0
    move-exception v0

    .line 260
    goto :goto_6

    .line 261
    :cond_11
    move/from16 v17, v12

    .line 262
    .line 263
    move/from16 v20, v13

    .line 264
    .line 265
    if-nez v20, :cond_12

    .line 266
    .line 267
    if-eqz v8, :cond_12

    .line 268
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    const-string v6, ".secure"

    .line 278
    .line 279
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    .line 281
    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 283
    .line 284
    .line 285
    move-result-object v6

    .line 286
    const/4 v13, 0x1

    .line 287
    move-object v7, v14

    .line 288
    move-object v8, v11

    .line 289
    move v9, v10

    .line 290
    move/from16 v10, v19

    .line 291
    .line 292
    move v11, v0

    .line 293
    move/from16 v12, v18

    .line 294
    .line 295
    invoke-static/range {v6 .. v13}, Lo2/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaCodecInfo$CodecCapabilities;ZZZZZ)Lo2/a;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 300
    .line 301
    .line 302
    return-object v5

    .line 303
    :catch_1
    move-exception v0

    .line 304
    move/from16 v17, v12

    .line 305
    .line 306
    move/from16 v20, v13

    .line 307
    .line 308
    :goto_6
    :try_start_4
    sget v1, Lb3/n;->a:I

    .line 309
    .line 310
    const/16 v6, 0x17

    .line 311
    .line 312
    if-gt v1, v6, :cond_13

    .line 313
    .line 314
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    .line 315
    .line 316
    .line 317
    move-result v1

    .line 318
    if-nez v1, :cond_13

    .line 319
    .line 320
    :cond_12
    :goto_7
    add-int/lit8 v12, v17, 0x1

    .line 321
    .line 322
    move-object/from16 v1, p0

    .line 323
    .line 324
    move/from16 v13, v20

    .line 325
    .line 326
    goto/16 :goto_0

    .line 327
    .line 328
    :cond_13
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 329
    :cond_14
    return-object v5

    .line 330
    :catch_2
    move-exception v0

    .line 331
    new-instance v1, Lo2/d;

    .line 332
    .line 333
    invoke-direct {v1, v0}, Lo2/d;-><init>(Ljava/lang/Exception;)V

    .line 334
    .line 335
    .line 336
    throw v1
.end method

.method public static e(Landroid/media/MediaCodecInfo;Ljava/lang/String;ZLjava/lang/String;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->isEncoder()Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_10

    if-nez p2, :cond_0

    const-string p0, ".secure"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto/16 :goto_0

    :cond_0
    sget p0, Lb3/n;->a:I

    const/16 p2, 0x15

    if-ge p0, p2, :cond_2

    const-string p2, "CIPAACDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPMP3Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPVorbisDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "CIPAMRNBDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "AACDecoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "MP3Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    :cond_1
    return v0

    :cond_2
    const/16 p2, 0x12

    if-ge p0, p2, :cond_4

    const-string p2, "OMX.MTK.AUDIO.DECODER.AAC"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lb3/n;->b:Ljava/lang/String;

    const-string v1, "a70"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Xiaomi"

    sget-object v2, Lb3/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "HM"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    return v0

    :cond_4
    const/16 p2, 0x10

    if-ne p0, p2, :cond_6

    const-string v1, "OMX.qcom.audio.decoder.mp3"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lb3/n;->b:Ljava/lang/String;

    const-string v2, "dlxu"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "protou"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "ville"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "villeplus"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "villec2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "gee"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6602"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6603"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6606"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "C6616"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "L36h"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "SO-02E"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_5
    return v0

    :cond_6
    if-ne p0, p2, :cond_8

    const-string p2, "OMX.qcom.audio.decoder.aac"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lb3/n;->b:Ljava/lang/String;

    const-string v1, "C1504"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1505"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1604"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "C1605"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    return v0

    :cond_8
    const/16 p2, 0x18

    const-string v1, "samsung"

    if-ge p0, p2, :cond_b

    const-string p2, "OMX.SEC.aac.dec"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_9

    const-string p2, "OMX.Exynos.AAC.Decoder"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_9
    sget-object p2, Lb3/n;->c:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    sget-object p2, Lb3/n;->b:Ljava/lang/String;

    const-string v2, "zeroflte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "zerolte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "zenlte"

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SC-05G"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "marinelteatt"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "404SC"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SC-04G"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "SCV31"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    :cond_a
    return v0

    :cond_b
    const-string p2, "jflte"

    const/16 v2, 0x13

    if-gt p0, v2, :cond_d

    const-string v3, "OMX.SEC.vp8.dec"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Lb3/n;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lb3/n;->b:Ljava/lang/String;

    const-string v3, "d2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "serrano"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "santos"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    const-string v3, "t0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    return v0

    :cond_d
    if-gt p0, v2, :cond_e

    sget-object p0, Lb3/n;->b:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "OMX.qcom.video.decoder.vp8"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    return v0

    :cond_e
    const-string p0, "audio/eac3-joc"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    const-string p0, "OMX.MTK.AUDIO.DECODER.DSPAC3"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    return v0

    :cond_f
    const/4 p0, 0x1

    return p0

    :cond_10
    :goto_0
    return v0
.end method

.method public static f(Landroid/media/MediaCodecInfo;)Z
    .locals 2

    .line 1
    sget v0, Lb3/n;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Landroidx/lifecycle/v;->r(Landroid/media/MediaCodecInfo;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/media/MediaCodecInfo;->getName()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lb3/n;->k(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    const-string v0, "arc."

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    const/4 v1, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    return v1

    .line 30
    :cond_1
    const-string v0, "omx.google."

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-nez v0, :cond_3

    .line 37
    .line 38
    const-string v0, "omx.ffmpeg."

    .line 39
    .line 40
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_3

    .line 45
    .line 46
    const-string v0, "omx.sec."

    .line 47
    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const-string v0, ".sw."

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    :cond_2
    const-string v0, "omx.qcom.video.decoder.hevcswvdec"

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    const-string v0, "c2.android."

    .line 71
    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_3

    .line 77
    .line 78
    const-string v0, "c2.google."

    .line 79
    .line 80
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-nez v0, :cond_3

    .line 85
    .line 86
    const-string v0, "omx."

    .line 87
    .line 88
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 93
    .line 94
    const-string v0, "c2."

    .line 95
    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 97
    .line 98
    .line 99
    move-result p0

    .line 100
    if-nez p0, :cond_4

    .line 101
    .line 102
    :cond_3
    const/4 v1, 0x1

    .line 103
    :cond_4
    return v1
.end method
