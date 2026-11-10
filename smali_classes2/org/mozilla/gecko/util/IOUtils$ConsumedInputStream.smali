.class public Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/util/IOUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConsumedInputStream"
.end annotation


# instance fields
.field public final consumedLength:I

.field private mConsumedData:[B


# direct methods
.method public constructor <init>(I[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;->consumedLength:I

    iput-object p2, p0, Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;->mConsumedData:[B

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;->mConsumedData:[B

    return-object v0
.end method

.method public getTruncatedData()[B
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;->mConsumedData:[B

    array-length v1, v0

    iget v2, p0, Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;->consumedLength:I

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0, v2}, Lorg/mozilla/gecko/util/IOUtils;->truncateBytes([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/gecko/util/IOUtils$ConsumedInputStream;->mConsumedData:[B

    return-object v0
.end method
