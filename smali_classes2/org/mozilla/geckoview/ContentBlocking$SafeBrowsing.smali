.class public Lorg/mozilla/geckoview/ContentBlocking$SafeBrowsing;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlocking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SafeBrowsing"
.end annotation


# static fields
.field public static final DEFAULT:I = 0x3c00

.field public static final HARMFUL:I = 0x1000

.field public static final MALWARE:I = 0x400

.field public static final NONE:I = 0x0

.field public static final PHISHING:I = 0x2000

.field public static final UNWANTED:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
