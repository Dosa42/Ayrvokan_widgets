.class public abstract Ld3/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    new-instance v2, Ld3/l0;

    move-object v1, v2

    const/16 v3, 0x78

    const/16 v4, 0xa0

    invoke-direct {v2, v4, v3}, Ld3/l0;-><init>(II)V

    new-instance v3, Ld3/l0;

    move-object v2, v3

    const/16 v5, 0xf0

    invoke-direct {v3, v5, v4}, Ld3/l0;-><init>(II)V

    new-instance v4, Ld3/l0;

    move-object v3, v4

    const/16 v6, 0x140

    invoke-direct {v4, v6, v5}, Ld3/l0;-><init>(II)V

    new-instance v7, Ld3/l0;

    move-object v4, v7

    const/16 v8, 0x190

    invoke-direct {v7, v8, v5}, Ld3/l0;-><init>(II)V

    new-instance v7, Ld3/l0;

    move-object v5, v7

    const/16 v10, 0x1e0

    invoke-direct {v7, v10, v6}, Ld3/l0;-><init>(II)V

    new-instance v7, Ld3/l0;

    move-object v6, v7

    const/16 v8, 0x168

    const/16 v13, 0x280

    invoke-direct {v7, v13, v8}, Ld3/l0;-><init>(II)V

    new-instance v8, Ld3/l0;

    move-object v7, v8

    invoke-direct {v8, v13, v10}, Ld3/l0;-><init>(II)V

    new-instance v9, Ld3/l0;

    move-object v8, v9

    const/16 v11, 0x300

    invoke-direct {v9, v11, v10}, Ld3/l0;-><init>(II)V

    new-instance v11, Ld3/l0;

    move-object v9, v11

    const/16 v12, 0x356

    invoke-direct {v11, v12, v10}, Ld3/l0;-><init>(II)V

    new-instance v11, Ld3/l0;

    move-object v10, v11

    const/16 v12, 0x320

    const/16 v15, 0x258

    invoke-direct {v11, v12, v15}, Ld3/l0;-><init>(II)V

    new-instance v12, Ld3/l0;

    move-object v11, v12

    const/16 v14, 0x21c

    const/16 v15, 0x3c0

    invoke-direct {v12, v15, v14}, Ld3/l0;-><init>(II)V

    new-instance v14, Ld3/l0;

    move-object v12, v14

    invoke-direct {v14, v15, v13}, Ld3/l0;-><init>(II)V

    new-instance v14, Ld3/l0;

    move-object v13, v14

    const/16 v15, 0x240

    move-object/from16 v21, v0

    const/16 v0, 0x400

    invoke-direct {v14, v0, v15}, Ld3/l0;-><init>(II)V

    new-instance v15, Ld3/l0;

    move-object v14, v15

    move-object/from16 v22, v1

    const/16 v1, 0x258

    invoke-direct {v15, v0, v1}, Ld3/l0;-><init>(II)V

    new-instance v1, Ld3/l0;

    move-object v15, v1

    const/16 v0, 0x2d0

    move-object/from16 v23, v2

    const/16 v2, 0x500

    invoke-direct {v1, v2, v0}, Ld3/l0;-><init>(II)V

    new-instance v0, Ld3/l0;

    move-object/from16 v16, v0

    const/16 v1, 0x400

    invoke-direct {v0, v2, v1}, Ld3/l0;-><init>(II)V

    new-instance v0, Ld3/l0;

    move-object/from16 v17, v0

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-direct {v0, v2, v1}, Ld3/l0;-><init>(II)V

    new-instance v0, Ld3/l0;

    move-object/from16 v18, v0

    const/16 v1, 0x5a0

    invoke-direct {v0, v2, v1}, Ld3/l0;-><init>(II)V

    new-instance v0, Ld3/l0;

    move-object/from16 v19, v0

    const/16 v2, 0xa00

    invoke-direct {v0, v2, v1}, Ld3/l0;-><init>(II)V

    new-instance v0, Ld3/l0;

    move-object/from16 v20, v0

    const/16 v1, 0xf00

    const/16 v2, 0x870

    invoke-direct {v0, v1, v2}, Ld3/l0;-><init>(II)V

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    filled-new-array/range {v1 .. v20}, [Ld3/l0;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, v21

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Ld3/v;->a:Ljava/util/ArrayList;

    return-void
.end method
