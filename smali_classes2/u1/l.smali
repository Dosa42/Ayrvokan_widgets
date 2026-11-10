.class public final synthetic Lu1/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu1/n;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lu1/o;


# direct methods
.method public synthetic constructor <init>(Lu1/o;I)V
    .locals 0

    .line 1
    iput p2, p0, Lu1/l;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lu1/l;->b:Lu1/o;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Lz1/e;
    .locals 2

    .line 1
    iget v0, p0, Lu1/l;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lu1/l;->b:Lu1/o;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, v1, Lu1/o;->c:Lz1/e;

    .line 10
    .line 11
    return-object v0

    .line 12
    :goto_0
    iget-object v0, v1, Lu1/o;->c:Lz1/e;

    .line 13
    .line 14
    return-object v0

    .line 15
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
