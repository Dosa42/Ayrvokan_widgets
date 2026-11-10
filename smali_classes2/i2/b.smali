.class public final Li2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[B

.field public b:[I

.field public c:[I

.field public final d:Landroid/media/MediaCodec$CryptoInfo;

.field public final e:Landroidx/fragment/app/h;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/media/MediaCodec$CryptoInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$CryptoInfo;-><init>()V

    iput-object v0, p0, Li2/b;->d:Landroid/media/MediaCodec$CryptoInfo;

    sget v1, Lb3/n;->a:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    new-instance v1, Landroidx/fragment/app/h;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/fragment/app/h;-><init>(Landroid/media/MediaCodec$CryptoInfo;I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Li2/b;->e:Landroidx/fragment/app/h;

    return-void
.end method
