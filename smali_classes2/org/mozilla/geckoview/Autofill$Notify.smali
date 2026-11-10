.class public final Lorg/mozilla/geckoview/Autofill$Notify;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autofill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Notify"
.end annotation


# static fields
.field public static final NODE_ADDED:I = 0x3

.field public static final NODE_BLURRED:I = 0x7

.field public static final NODE_FOCUSED:I = 0x6

.field public static final NODE_REMOVED:I = 0x4

.field public static final NODE_UPDATED:I = 0x5

.field public static final SESSION_CANCELED:I = 0x2

.field public static final SESSION_COMMITTED:I = 0x1

.field public static final SESSION_STARTED:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 8

    const-string v0, "SESSION_STARTED"

    const-string v1, "SESSION_COMMITTED"

    const-string v2, "SESSION_CANCELED"

    const-string v3, "NODE_ADDED"

    const-string v4, "NODE_REMOVED"

    const-string v5, "NODE_UPDATED"

    const-string v6, "NODE_FOCUSED"

    const-string v7, "NODE_BLURRED"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    if-ltz p0, :cond_1

    const/16 v1, 0x8

    if-lt p0, v1, :cond_0

    goto :goto_0

    :cond_0
    aget-object p0, v0, p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
