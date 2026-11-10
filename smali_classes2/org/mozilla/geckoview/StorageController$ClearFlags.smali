.class public Lorg/mozilla/geckoview/StorageController$ClearFlags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/StorageController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClearFlags"
.end annotation


# static fields
.field public static final ALL:J = 0x200L

.field public static final ALL_CACHES:J = 0x6L

.field public static final AUTH_SESSIONS:J = 0x20L

.field public static final COOKIES:J = 0x1L

.field public static final DOM_STORAGES:J = 0x10L

.field public static final IMAGE_CACHE:J = 0x4L

.field public static final NETWORK_CACHE:J = 0x2L

.field public static final PERMISSIONS:J = 0x40L

.field public static final SITE_DATA:J = 0x1d7L

.field public static final SITE_SETTINGS:J = 0xc0L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
