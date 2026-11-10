.class public final Lorg/mozilla/geckoview/Autofill$Hint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autofill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hint"
.end annotation


# static fields
.field public static final EMAIL_ADDRESS:I = 0x0

.field public static final NONE:I = -0x1

.field public static final PASSWORD:I = 0x1

.field public static final URI:I = 0x2

.field public static final USERNAME:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 5

    add-int/lit8 p0, p0, 0x1

    const-string v0, "URI"

    const-string v1, "USERNAME"

    const-string v2, "NONE"

    const-string v3, "EMAIL"

    const-string v4, "PASSWORD"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    if-ltz p0, :cond_1

    const/4 v1, 0x5

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
