.class public final Lz2/l;
.super Lz2/d;
.source "SourceFile"


# instance fields
.field public final g:I

.field public final h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lt2/w;IILjava/lang/Object;)V
    .locals 0

    .line 1
    filled-new-array {p2}, [I

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lz2/d;-><init>(Lt2/w;[I)V

    iput p3, p0, Lz2/l;->g:I

    iput-object p4, p0, Lz2/l;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    iget v0, p0, Lz2/l;->g:I

    return v0
.end method

.method public final b()I
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public final c(JJ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lz2/l;->h:Ljava/lang/Object;

    return-object v0
.end method
