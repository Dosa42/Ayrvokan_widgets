.class public final Lv0/o;
.super Lv0/n;
.source "SourceFile"


# instance fields
.field public final b:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/16 v1, 0x19

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lv0/n;-><init>([B)V

    iput-object p1, p0, Lv0/o;->b:[B

    return-void
.end method


# virtual methods
.method public final c()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lv0/o;->b:[B

    return-object v0
.end method
