.class public final Lz2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Lt2/x;


# direct methods
.method public constructor <init>([I[Lt2/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/m;->b:[I

    iput-object p2, p0, Lz2/m;->c:[Lt2/x;

    array-length p1, p1

    iput p1, p0, Lz2/m;->a:I

    return-void
.end method
