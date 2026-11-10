.class public Lorg/mozilla/geckoview/ContentBlocking$CookieBehavior;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlocking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CookieBehavior"
.end annotation


# static fields
.field public static final ACCEPT_ALL:I = 0x0

.field public static final ACCEPT_FIRST_PARTY:I = 0x1

.field public static final ACCEPT_FIRST_PARTY_AND_ISOLATE_OTHERS:I = 0x5

.field public static final ACCEPT_NONE:I = 0x2

.field public static final ACCEPT_NON_TRACKERS:I = 0x4

.field public static final ACCEPT_VISITED:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
