.class public Lorg/mozilla/geckoview/ContentBlocking$AntiTracking;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlocking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AntiTracking"
.end annotation


# static fields
.field public static final AD:I = 0x2

.field public static final ANALYTIC:I = 0x4

.field public static final CONTENT:I = 0x10

.field public static final CRYPTOMINING:I = 0x40

.field public static final DEFAULT:I = 0x2e

.field public static final FINGERPRINTING:I = 0x80

.field public static final NONE:I = 0x0

.field public static final SOCIAL:I = 0x8

.field public static final STP:I = 0x100

.field public static final STRICT:I = 0xfe

.field public static final TEST:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
