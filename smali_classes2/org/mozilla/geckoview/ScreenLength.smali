.class public Lorg/mozilla/geckoview/ScreenLength;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DOCUMENT_HEIGHT:I = 0x4

.field public static final DOCUMENT_WIDTH:I = 0x3

.field public static final PIXEL:I = 0x0

.field public static final VISUAL_VIEWPORT_HEIGHT:I = 0x2

.field public static final VISUAL_VIEWPORT_WIDTH:I = 0x1


# instance fields
.field private final mType:I

.field private final mValue:D


# direct methods
.method public constructor <init>(DI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lorg/mozilla/geckoview/ScreenLength;->mValue:D

    iput p3, p0, Lorg/mozilla/geckoview/ScreenLength;->mType:I

    return-void
.end method

.method public static bottom()Lorg/mozilla/geckoview/ScreenLength;
    .locals 4

    new-instance v0, Lorg/mozilla/geckoview/ScreenLength;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/geckoview/ScreenLength;-><init>(DI)V

    return-object v0
.end method

.method public static fromPixels(D)Lorg/mozilla/geckoview/ScreenLength;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/ScreenLength;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/mozilla/geckoview/ScreenLength;-><init>(DI)V

    return-object v0
.end method

.method public static fromVisualViewportHeight(D)Lorg/mozilla/geckoview/ScreenLength;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/ScreenLength;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lorg/mozilla/geckoview/ScreenLength;-><init>(DI)V

    return-object v0
.end method

.method public static fromVisualViewportWidth(D)Lorg/mozilla/geckoview/ScreenLength;
    .locals 2

    new-instance v0, Lorg/mozilla/geckoview/ScreenLength;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/mozilla/geckoview/ScreenLength;-><init>(DI)V

    return-object v0
.end method

.method public static top()Lorg/mozilla/geckoview/ScreenLength;
    .locals 1

    invoke-static {}, Lorg/mozilla/geckoview/ScreenLength;->zero()Lorg/mozilla/geckoview/ScreenLength;

    move-result-object v0

    return-object v0
.end method

.method public static zero()Lorg/mozilla/geckoview/ScreenLength;
    .locals 4

    new-instance v0, Lorg/mozilla/geckoview/ScreenLength;

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/mozilla/geckoview/ScreenLength;-><init>(DI)V

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    iget v0, p0, Lorg/mozilla/geckoview/ScreenLength;->mType:I

    return v0
.end method

.method public getValue()D
    .locals 2

    iget-wide v0, p0, Lorg/mozilla/geckoview/ScreenLength;->mValue:D

    return-wide v0
.end method
