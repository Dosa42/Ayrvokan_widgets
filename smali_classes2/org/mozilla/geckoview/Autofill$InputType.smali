.class public final Lorg/mozilla/geckoview/Autofill$InputType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autofill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputType"
.end annotation


# static fields
.field public static final NONE:I = -0x1

.field public static final NUMBER:I = 0x1

.field public static final PHONE:I = 0x2

.field public static final TEXT:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 4

    add-int/lit8 p0, p0, 0x1

    const-string v0, "NUMBER"

    const-string v1, "PHONE"

    const-string v2, "NONE"

    const-string v3, "TEXT"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    if-ltz p0, :cond_1

    const/4 v1, 0x4

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
