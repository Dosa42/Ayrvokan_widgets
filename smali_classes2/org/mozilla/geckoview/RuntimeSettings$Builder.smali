.class public abstract Lorg/mozilla/geckoview/RuntimeSettings$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/RuntimeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Settings:",
        "Lorg/mozilla/geckoview/RuntimeSettings;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mSettings:Lorg/mozilla/geckoview/RuntimeSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSettings;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->newSettings(Lorg/mozilla/geckoview/RuntimeSettings;)Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->mSettings:Lorg/mozilla/geckoview/RuntimeSettings;

    return-void
.end method


# virtual methods
.method public build()Lorg/mozilla/geckoview/RuntimeSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSettings;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->mSettings:Lorg/mozilla/geckoview/RuntimeSettings;

    invoke-virtual {p0, v0}, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->newSettings(Lorg/mozilla/geckoview/RuntimeSettings;)Lorg/mozilla/geckoview/RuntimeSettings;

    move-result-object v0

    return-object v0
.end method

.method public getSettings()Lorg/mozilla/geckoview/RuntimeSettings;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TSettings;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/geckoview/RuntimeSettings$Builder;->mSettings:Lorg/mozilla/geckoview/RuntimeSettings;

    return-object v0
.end method

.method public abstract newSettings(Lorg/mozilla/geckoview/RuntimeSettings;)Lorg/mozilla/geckoview/RuntimeSettings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSettings;)TSettings;"
        }
    .end annotation
.end method
