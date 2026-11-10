.class public final Lz2/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lt2/w;

.field public final b:[I

.field public final c:I

.field public final d:Ljava/lang/Object;


# direct methods
.method public varargs constructor <init>(Lt2/w;[I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lz2/o;-><init>(Lt2/w;[IILjava/lang/Integer;)V

    return-void
.end method

.method public constructor <init>(Lt2/w;[IILjava/lang/Integer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/o;->a:Lt2/w;

    iput-object p2, p0, Lz2/o;->b:[I

    iput p3, p0, Lz2/o;->c:I

    iput-object p4, p0, Lz2/o;->d:Ljava/lang/Object;

    return-void
.end method
