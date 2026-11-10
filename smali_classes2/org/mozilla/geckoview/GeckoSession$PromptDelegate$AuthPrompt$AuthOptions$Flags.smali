.class public Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions$Flags;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/GeckoSession$PromptDelegate$AuthPrompt$AuthOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Flags"
.end annotation


# static fields
.field public static final CROSS_ORIGIN_SUB_RESOURCE:I = 0x20

.field public static final HOST:I = 0x1

.field public static final ONLY_PASSWORD:I = 0x8

.field public static final PREVIOUS_FAILED:I = 0x10

.field public static final PROXY:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
