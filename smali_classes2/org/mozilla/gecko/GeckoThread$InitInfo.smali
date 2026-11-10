.class public Lorg/mozilla/gecko/GeckoThread$InitInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/GeckoThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitInfo"
.end annotation


# instance fields
.field public args:[Ljava/lang/String;

.field public crashAnnotationFd:I

.field public crashFd:I

.field public extras:Landroid/os/Bundle;

.field public flags:I

.field public ipcFd:I

.field public prefMapFd:I

.field public prefs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public prefsFd:I

.field public profile:Lorg/mozilla/gecko/GeckoProfile;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
