.class public Lorg/mozilla/geckoview/WebExtension$InstallException$ErrorCodes;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension$InstallException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorCodes"
.end annotation


# static fields
.field public static final ERROR_CORRUPT_FILE:I = -0x3

.field public static final ERROR_FILE_ACCESS:I = -0x4

.field public static final ERROR_INCORRECT_HASH:I = -0x2

.field public static final ERROR_INCORRECT_ID:I = -0x7

.field public static final ERROR_NETWORK_FAILURE:I = -0x1

.field public static final ERROR_POSTPONED:I = -0x65

.field public static final ERROR_SIGNEDSTATE_REQUIRED:I = -0x5

.field public static final ERROR_UNEXPECTED_ADDON_TYPE:I = -0x6

.field public static final ERROR_USER_CANCELED:I = -0x64


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
