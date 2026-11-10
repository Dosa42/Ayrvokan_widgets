.class public final Lorg/mozilla/gecko/util/GeckoBundle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final EMPTY_BOOLEAN_ARRAY:[Z
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation
.end field

.field private static final EMPTY_BUNDLE_ARRAY:[Lorg/mozilla/gecko/util/GeckoBundle;

.field private static final EMPTY_DOUBLE_ARRAY:[D

.field private static final EMPTY_INT_ARRAY:[I

.field private static final EMPTY_LONG_ARRAY:[J

.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final LOGTAG:Ljava/lang/String; = "GeckoBundle"


# instance fields
.field private mMap:Lf/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lf/i;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Z

    sput-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_BOOLEAN_ARRAY:[Z

    new-array v1, v0, [I

    sput-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_INT_ARRAY:[I

    new-array v1, v0, [J

    sput-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_LONG_ARRAY:[J

    new-array v1, v0, [D

    sput-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_DOUBLE_ARRAY:[D

    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    new-array v0, v0, [Lorg/mozilla/gecko/util/GeckoBundle;

    sput-object v0, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_BUNDLE_ARRAY:[Lorg/mozilla/gecko/util/GeckoBundle;

    new-instance v0, Lorg/mozilla/gecko/util/GeckoBundle$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/util/GeckoBundle$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/util/GeckoBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/i;

    invoke-direct {v0}, Lf/i;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/i;

    invoke-direct {v0, p1}, Lf/i;-><init>(I)V

    iput-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lf/i;

    iget-object p1, p1, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 3
    invoke-direct {v0}, Lf/i;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    iget v1, p1, Lf/i;->c:I

    iget v2, v0, Lf/i;->c:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lf/i;->b(I)V

    iget v2, v0, Lf/i;->c:I

    const/4 v3, 0x0

    if-nez v2, :cond_0

    if-lez v1, :cond_1

    iget-object v2, p1, Lf/i;->a:[I

    iget-object v4, v0, Lf/i;->a:[I

    invoke-static {v2, v3, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p1, Lf/i;->b:[Ljava/lang/Object;

    iget-object v2, v0, Lf/i;->b:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    invoke-static {p1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v1, v0, Lf/i;->c:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p1, v3}, Lf/i;->h(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v3}, Lf/i;->j(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    iput-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-instance v1, Lf/i;

    invoke-direct {v1, v0}, Lf/i;-><init>(I)V

    iput-object v1, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    aget-object v3, p1, v1

    aget-object v4, p2, v1

    invoke-virtual {v2, v3, v4}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromBundle(Landroid/os/Bundle;)Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, v5}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    aput-object v5, v0, v4

    instance-of v5, v6, Landroid/os/Bundle;

    if-nez v5, :cond_c

    if-nez v6, :cond_1

    goto/16 :goto_6

    :cond_1
    instance-of v5, v6, [Landroid/os/Parcelable;

    if-eqz v5, :cond_3

    check-cast v6, [Landroid/os/Parcelable;

    check-cast v6, [Landroid/os/Parcelable;

    array-length v5, v6

    new-array v5, v5, [Lorg/mozilla/gecko/util/GeckoBundle;

    move v7, v3

    :goto_1
    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget-object v8, v6, v7

    check-cast v8, Landroid/os/Bundle;

    invoke-static {v8}, Lorg/mozilla/gecko/util/GeckoBundle;->fromBundle(Landroid/os/Bundle;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v8

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    aput-object v5, v1, v4

    goto/16 :goto_7

    :cond_3
    instance-of v5, v6, Ljava/lang/Boolean;

    if-nez v5, :cond_b

    instance-of v5, v6, Ljava/lang/Integer;

    if-nez v5, :cond_b

    instance-of v5, v6, Ljava/lang/Double;

    if-nez v5, :cond_b

    instance-of v5, v6, Ljava/lang/String;

    if-nez v5, :cond_b

    instance-of v5, v6, [Z

    if-nez v5, :cond_b

    instance-of v5, v6, [I

    if-nez v5, :cond_b

    instance-of v5, v6, [D

    if-nez v5, :cond_b

    instance-of v5, v6, [Ljava/lang/String;

    if-eqz v5, :cond_4

    goto :goto_5

    :cond_4
    instance-of v5, v6, Ljava/lang/Byte;

    if-nez v5, :cond_a

    instance-of v5, v6, Ljava/lang/Short;

    if-eqz v5, :cond_5

    goto :goto_4

    :cond_5
    instance-of v5, v6, Ljava/lang/Float;

    if-nez v5, :cond_9

    instance-of v5, v6, Ljava/lang/Long;

    if-eqz v5, :cond_6

    goto :goto_3

    :cond_6
    instance-of v5, v6, Ljava/lang/CharSequence;

    if-nez v5, :cond_8

    instance-of v5, v6, Ljava/lang/Character;

    if-eqz v5, :cond_7

    goto :goto_2

    :cond_7
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :cond_8
    :goto_2
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_7

    :cond_9
    :goto_3
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_7

    :cond_a
    :goto_4
    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    goto :goto_7

    :cond_b
    :goto_5
    aput-object v6, v1, v4

    goto :goto_7

    :cond_c
    :goto_6
    check-cast v6, Landroid/os/Bundle;

    invoke-static {v6}, Lorg/mozilla/gecko/util/GeckoBundle;->fromBundle(Landroid/os/Bundle;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object v5

    aput-object v5, v1, v4

    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_d
    new-instance p0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>([Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 5

    if-eqz p0, :cond_2

    sget-object v0, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0}, Lorg/json/JSONObject;->length()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v0, v3

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-direct {p0, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;-><init>([Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static fromJSONValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_11

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    if-ne p0, v1, :cond_0

    goto/16 :goto_6

    :cond_0
    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    check-cast p0, Lorg/json/JSONObject;

    invoke-static {p0}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONObject(Lorg/json/JSONObject;)Lorg/mozilla/gecko/util/GeckoBundle;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_a

    check-cast p0, Lorg/json/JSONArray;

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_2

    sget-object p0, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_BOOLEAN_ARRAY:[Z

    return-object p0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_8

    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/mozilla/gecko/util/GeckoBundle;->fromJSONValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    if-nez v0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v4, Ljava/lang/Boolean;

    if-ne v0, v4, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :cond_4
    const-class v4, Ljava/lang/Integer;

    if-ne v0, v4, :cond_5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_1

    :cond_5
    const-class v4, Ljava/lang/Double;

    if-ne v0, v4, :cond_6

    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    :cond_6
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    :cond_7
    invoke-static {v0, v2, v3}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    if-nez v0, :cond_9

    new-array p0, v1, [Ljava/lang/String;

    return-object p0

    :cond_9
    return-object v0

    :cond_a
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_10

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_b

    goto :goto_5

    :cond_b
    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_f

    instance-of v0, p0, Ljava/lang/Short;

    if-eqz v0, :cond_c

    goto :goto_4

    :cond_c
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_e

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_d

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_e
    :goto_3
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_f
    :goto_4
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :cond_10
    :goto_5
    return-object p0

    :cond_11
    :goto_6
    return-object v0
.end method

.method private static getDoubleArray([I)[D
    .locals 5

    .line 3
    array-length v0, p0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    int-to-double v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getIntArray([D)[I
    .locals 5

    .line 3
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-wide v3, p0, v2

    double-to-int v3, v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getLongArray(Ljava/lang/Object;)[J
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-array v1, v0, [J

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static getNullArrayLength(Ljava/lang/Object;)I
    .locals 3

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/ClassCastException;

    const-string v0, "Cannot cast array type"

    invoke-direct {p0, v0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return v0
.end method

.method private static normalizeValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p0, [I

    if-eqz v0, :cond_2

    check-cast p0, [I

    array-length v0, p0

    if-nez v0, :cond_1

    sget-object p0, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lorg/mozilla/gecko/util/GeckoBundle;->getDoubleArray([I)[D

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    return-object p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    if-nez v0, :cond_5

    sget-object p0, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    goto :goto_2

    :cond_5
    new-array p0, v0, [Ljava/lang/String;

    :cond_6
    :goto_2
    return-object p0
.end method

.method private put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method private values()[Ljava/lang/Object;
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    iget v0, v0, Lf/i;->c:I

    .line 4
    .line 5
    new-array v1, v0, [Ljava/lang/Object;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Lf/i;->j(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    aput-object v3, v1, v2

    .line 17
    .line 18
    add-int/lit8 v2, v2, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    return-object v1
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0}, Lf/i;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    instance-of v0, p1, Lorg/mozilla/gecko/util/GeckoBundle;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Lorg/mozilla/gecko/util/GeckoBundle;

    .line 8
    .line 9
    iget-object p1, p1, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 10
    .line 11
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-ne v0, p1, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    iget v0, v0, Lf/i;->c:I

    .line 18
    .line 19
    iget v3, p1, Lf/i;->c:I

    .line 20
    .line 21
    if-eq v0, v3, :cond_2

    .line 22
    .line 23
    return v1

    .line 24
    :cond_2
    move v0, v1

    .line 25
    :goto_0
    iget-object v3, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 26
    .line 27
    iget v4, v3, Lf/i;->c:I

    .line 28
    .line 29
    if-ge v0, v4, :cond_d

    .line 30
    .line 31
    invoke-virtual {v3, v0}, Lf/i;->h(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    check-cast v3, Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {p1, v3}, Lf/i;->e(Ljava/lang/Object;)I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-gez v3, :cond_3

    .line 42
    .line 43
    return v1

    .line 44
    :cond_3
    iget-object v4, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 45
    .line 46
    invoke-virtual {v4, v0}, Lf/i;->j(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-static {v4}, Lorg/mozilla/gecko/util/GeckoBundle;->normalizeValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-virtual {p1, v3}, Lf/i;->j(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-static {v3}, Lorg/mozilla/gecko/util/GeckoBundle;->normalizeValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    if-ne v4, v3, :cond_4

    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_4
    if-eqz v4, :cond_c

    .line 66
    .line 67
    if-nez v3, :cond_5

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    if-eq v5, v6, :cond_6

    .line 79
    .line 80
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-nez v6, :cond_6

    .line 85
    .line 86
    return v1

    .line 87
    :cond_6
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    .line 88
    .line 89
    .line 90
    move-result v5

    .line 91
    if-nez v5, :cond_7

    .line 92
    .line 93
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    if-nez v3, :cond_b

    .line 98
    .line 99
    return v1

    .line 100
    :cond_7
    invoke-static {v4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    move-result v6

    .line 108
    if-eq v5, v6, :cond_8

    .line 109
    .line 110
    return v1

    .line 111
    :cond_8
    move v6, v1

    .line 112
    :goto_1
    if-ge v6, v5, :cond_b

    .line 113
    .line 114
    invoke-static {v4, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    invoke-static {v3, v6}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    if-eq v7, v8, :cond_a

    .line 123
    .line 124
    if-eqz v7, :cond_9

    .line 125
    .line 126
    if-eqz v8, :cond_9

    .line 127
    .line 128
    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-nez v7, :cond_a

    .line 133
    .line 134
    :cond_9
    return v1

    .line 135
    :cond_a
    add-int/lit8 v6, v6, 0x1

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_b
    :goto_2
    add-int/lit8 v0, v0, 0x1

    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_c
    :goto_3
    return v1

    .line 142
    :cond_d
    return v2
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :goto_0
    return p2
.end method

.method public getBooleanArray(Ljava/lang/String;)[Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move-object v1, p1

    .line 21
    check-cast v1, [Z

    .line 22
    .line 23
    :goto_0
    return-object v1
.end method

.method public getBooleanObject(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getBooleanObject(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public getBooleanObject(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    move-object p2, p1

    check-cast p2, Ljava/lang/Boolean;

    :goto_0
    return-object p2
.end method

.method public getBundle(Ljava/lang/String;)Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lorg/mozilla/gecko/util/GeckoBundle;

    .line 9
    .line 10
    return-object p1
.end method

.method public getBundleArray(Ljava/lang/String;)[Lorg/mozilla/gecko/util/GeckoBundle;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_BUNDLE_ARRAY:[Lorg/mozilla/gecko/util/GeckoBundle;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p1, [Lorg/mozilla/gecko/util/GeckoBundle;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-static {p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getNullArrayLength(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    new-array v1, p1, [Lorg/mozilla/gecko/util/GeckoBundle;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v1, p1

    .line 32
    check-cast v1, [Lorg/mozilla/gecko/util/GeckoBundle;

    .line 33
    .line 34
    :goto_0
    return-object v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public getDoubleArray(Ljava/lang/String;)[D
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_DOUBLE_ARRAY:[D

    goto :goto_0

    :cond_1
    instance-of v0, p1, [I

    if-eqz v0, :cond_2

    check-cast p1, [I

    invoke-static {p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getDoubleArray([I)[D

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, [D

    :goto_0
    return-object v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p2

    :goto_0
    return p2
.end method

.method public getIntArray(Ljava/lang/String;)[I
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 1
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_INT_ARRAY:[I

    goto :goto_0

    :cond_1
    instance-of v0, p1, [D

    if-eqz v0, :cond_2

    check-cast p1, [D

    invoke-static {p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getIntArray([D)[I

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    check-cast v1, [I

    :goto_0
    return-object v1
.end method

.method public getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    move-object p2, p1

    check-cast p2, Ljava/lang/Integer;

    :goto_0
    return-object p2
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lorg/mozilla/gecko/util/GeckoBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide p2

    :goto_0
    return-wide p2
.end method

.method public getLongArray(Ljava/lang/String;)[J
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    sget-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_LONG_ARRAY:[J

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getLongArray(Ljava/lang/Object;)[J

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/mozilla/gecko/util/GeckoBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    :goto_0
    return-object p2
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Lf/i;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    sget-object v1, Lorg/mozilla/gecko/util/GeckoBundle;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    instance-of v0, p1, [Ljava/lang/String;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    invoke-static {p1}, Lorg/mozilla/gecko/util/GeckoBundle;->getNullArrayLength(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    new-array v1, p1, [Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    move-object v1, p1

    .line 32
    check-cast v1, [Ljava/lang/String;

    .line 33
    .line 34
    :goto_0
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0}, Lf/i;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0}, Lf/i;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keys()[Ljava/lang/String;
    .locals 4
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "gecko"
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    iget v0, v0, Lf/i;->c:I

    .line 4
    .line 5
    new-array v1, v0, [Ljava/lang/String;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9
    .line 10
    iget-object v3, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Lf/i;->h(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    check-cast v3, Ljava/lang/String;

    .line 17
    .line 18
    aput-object v3, v1, v2

    .line 19
    .line 20
    add-int/lit8 v2, v2, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-object v1
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBooleanArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Z

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    goto :goto_0
.end method

.method public putBooleanArray(Ljava/lang/String;[Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    array-length v0, p2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    aput-boolean v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    goto :goto_0
.end method

.method public putBooleanArray(Ljava/lang/String;[Z)V
    .locals 1

    .line 3
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBundle(Ljava/lang/String;Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putBundleArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Lorg/mozilla/gecko/util/GeckoBundle;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/gecko/util/GeckoBundle;

    add-int/lit8 v3, v1, 0x1

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    goto :goto_0
.end method

.method public putBundleArray(Ljava/lang/String;[Lorg/mozilla/gecko/util/GeckoBundle;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDouble(Ljava/lang/String;D)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [D

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    aput-wide v4, v0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    goto :goto_0
.end method

.method public putDoubleArray(Ljava/lang/String;[D)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putDoubleArray(Ljava/lang/String;[Ljava/lang/Double;)V
    .locals 0

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putDoubleArray(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIntArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [I

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    goto :goto_0
.end method

.method public putIntArray(Ljava/lang/String;[I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putIntArray(Ljava/lang/String;[Ljava/lang/Integer;)V
    .locals 0

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putIntArray(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putLongArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [D

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    long-to-double v4, v4

    aput-wide v4, v0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    goto :goto_0
.end method

.method public putLongArray(Ljava/lang/String;[J)V
    .locals 4

    .line 2
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    array-length v0, p2

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_1
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-wide v2, p2, v1

    long-to-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    goto :goto_0
.end method

.method public putLongArray(Ljava/lang/String;[Ljava/lang/Long;)V
    .locals 0

    .line 3
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/mozilla/gecko/util/GeckoBundle;->putLongArray(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public putStringArray(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, p1, v0}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    add-int/lit8 v3, v1, 0x1

    aput-object v2, v0, v1

    move v1, v3

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    goto :goto_0
.end method

.method public putStringArray(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0, p1, p2}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 7

    const-class v0, Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iget-object v2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v2}, Lf/i;->clear()V

    iget-object v2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v2, v1}, Lf/i;->b(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, [Landroid/os/Parcelable;

    if-eqz v5, :cond_0

    check-cast v4, [Landroid/os/Parcelable;

    check-cast v4, [Landroid/os/Parcelable;

    array-length v5, v4

    const-class v6, [Lorg/mozilla/gecko/util/GeckoBundle;

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    :cond_0
    iget-object v5, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v5, v3, v4}, Lf/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0, p1}, Lf/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    iget v0, v0, Lf/i;->c:I

    .line 4
    .line 5
    return v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 8

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 4
    .line 5
    iget v1, v1, Lf/i;->c:I

    .line 6
    .line 7
    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    iget-object v3, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 13
    .line 14
    iget v4, v3, Lf/i;->c:I

    .line 15
    .line 16
    if-ge v2, v4, :cond_10

    .line 17
    .line 18
    invoke-virtual {v3, v2}, Lf/i;->h(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    check-cast v3, Ljava/lang/String;

    .line 23
    .line 24
    iget-object v4, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Lf/i;->j(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    if-nez v4, :cond_0

    .line 31
    .line 32
    const/4 v4, 0x0

    .line 33
    :goto_1
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :cond_0
    instance-of v5, v4, Lorg/mozilla/gecko/util/GeckoBundle;

    .line 39
    .line 40
    if-eqz v5, :cond_1

    .line 41
    .line 42
    check-cast v4, Lorg/mozilla/gecko/util/GeckoBundle;

    .line 43
    .line 44
    invoke-virtual {v4}, Lorg/mozilla/gecko/util/GeckoBundle;->toBundle()Landroid/os/Bundle;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 49
    .line 50
    .line 51
    goto/16 :goto_6

    .line 52
    .line 53
    :cond_1
    instance-of v5, v4, [Lorg/mozilla/gecko/util/GeckoBundle;

    .line 54
    .line 55
    if-eqz v5, :cond_4

    .line 56
    .line 57
    check-cast v4, [Lorg/mozilla/gecko/util/GeckoBundle;

    .line 58
    .line 59
    array-length v5, v4

    .line 60
    new-array v5, v5, [Landroid/os/Parcelable;

    .line 61
    .line 62
    move v6, v1

    .line 63
    :goto_2
    array-length v7, v4

    .line 64
    if-ge v6, v7, :cond_3

    .line 65
    .line 66
    aget-object v7, v4, v6

    .line 67
    .line 68
    if-eqz v7, :cond_2

    .line 69
    .line 70
    invoke-virtual {v7}, Lorg/mozilla/gecko/util/GeckoBundle;->toBundle()Landroid/os/Bundle;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    aput-object v7, v5, v6

    .line 75
    .line 76
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_3
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 80
    .line 81
    .line 82
    goto/16 :goto_6

    .line 83
    .line 84
    :cond_4
    instance-of v5, v4, Ljava/lang/Boolean;

    .line 85
    .line 86
    if-eqz v5, :cond_5

    .line 87
    .line 88
    check-cast v4, Ljava/lang/Boolean;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 91
    .line 92
    .line 93
    move-result v4

    .line 94
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_6

    .line 98
    .line 99
    :cond_5
    instance-of v5, v4, [Z

    .line 100
    .line 101
    if-eqz v5, :cond_6

    .line 102
    .line 103
    check-cast v4, [Z

    .line 104
    .line 105
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 106
    .line 107
    .line 108
    goto :goto_6

    .line 109
    :cond_6
    instance-of v5, v4, Ljava/lang/Byte;

    .line 110
    .line 111
    if-nez v5, :cond_f

    .line 112
    .line 113
    instance-of v5, v4, Ljava/lang/Short;

    .line 114
    .line 115
    if-nez v5, :cond_f

    .line 116
    .line 117
    instance-of v5, v4, Ljava/lang/Integer;

    .line 118
    .line 119
    if-eqz v5, :cond_7

    .line 120
    .line 121
    goto :goto_5

    .line 122
    :cond_7
    instance-of v5, v4, [I

    .line 123
    .line 124
    if-eqz v5, :cond_8

    .line 125
    .line 126
    check-cast v4, [I

    .line 127
    .line 128
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 129
    .line 130
    .line 131
    goto :goto_6

    .line 132
    :cond_8
    instance-of v5, v4, Ljava/lang/Float;

    .line 133
    .line 134
    if-nez v5, :cond_e

    .line 135
    .line 136
    instance-of v5, v4, Ljava/lang/Double;

    .line 137
    .line 138
    if-nez v5, :cond_e

    .line 139
    .line 140
    instance-of v5, v4, Ljava/lang/Long;

    .line 141
    .line 142
    if-eqz v5, :cond_9

    .line 143
    .line 144
    goto :goto_4

    .line 145
    :cond_9
    instance-of v5, v4, [D

    .line 146
    .line 147
    if-eqz v5, :cond_a

    .line 148
    .line 149
    check-cast v4, [D

    .line 150
    .line 151
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 152
    .line 153
    .line 154
    goto :goto_6

    .line 155
    :cond_a
    instance-of v5, v4, Ljava/lang/CharSequence;

    .line 156
    .line 157
    if-nez v5, :cond_d

    .line 158
    .line 159
    instance-of v5, v4, Ljava/lang/Character;

    .line 160
    .line 161
    if-eqz v5, :cond_b

    .line 162
    .line 163
    goto :goto_3

    .line 164
    :cond_b
    instance-of v5, v4, [Ljava/lang/String;

    .line 165
    .line 166
    if-eqz v5, :cond_c

    .line 167
    .line 168
    check-cast v4, [Ljava/lang/String;

    .line 169
    .line 170
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    goto :goto_6

    .line 174
    :cond_c
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 175
    .line 176
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 177
    .line 178
    .line 179
    throw v0

    .line 180
    :cond_d
    :goto_3
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :cond_e
    :goto_4
    check-cast v4, Ljava/lang/Number;

    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    .line 189
    .line 190
    .line 191
    move-result-wide v4

    .line 192
    invoke-virtual {v0, v3, v4, v5}, Landroid/os/BaseBundle;->putDouble(Ljava/lang/String;D)V

    .line 193
    .line 194
    .line 195
    goto :goto_6

    .line 196
    :cond_f
    :goto_5
    check-cast v4, Ljava/lang/Number;

    .line 197
    .line 198
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 199
    .line 200
    .line 201
    move-result v4

    .line 202
    invoke-virtual {v0, v3, v4}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    :goto_6
    add-int/lit8 v2, v2, 0x1

    .line 206
    .line 207
    goto/16 :goto_0

    .line 208
    .line 209
    :cond_10
    return-object v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 8

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    :goto_0
    iget-object v3, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 9
    .line 10
    iget v4, v3, Lf/i;->c:I

    .line 11
    .line 12
    if-ge v2, v4, :cond_5

    .line 13
    .line 14
    invoke-virtual {v3, v2}, Lf/i;->j(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    instance-of v4, v3, Lorg/mozilla/gecko/util/GeckoBundle;

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    check-cast v3, Lorg/mozilla/gecko/util/GeckoBundle;

    .line 23
    .line 24
    invoke-virtual {v3}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    goto :goto_4

    .line 29
    :cond_0
    instance-of v4, v3, [Lorg/mozilla/gecko/util/GeckoBundle;

    .line 30
    .line 31
    if-eqz v4, :cond_3

    .line 32
    .line 33
    check-cast v3, [Lorg/mozilla/gecko/util/GeckoBundle;

    .line 34
    .line 35
    new-instance v4, Lorg/json/JSONArray;

    .line 36
    .line 37
    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 38
    .line 39
    .line 40
    array-length v5, v3

    .line 41
    move v6, v1

    .line 42
    :goto_1
    if-ge v6, v5, :cond_2

    .line 43
    .line 44
    aget-object v7, v3, v6

    .line 45
    .line 46
    if-nez v7, :cond_1

    .line 47
    .line 48
    sget-object v7, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 49
    .line 50
    goto :goto_2

    .line 51
    :cond_1
    invoke-virtual {v7}, Lorg/mozilla/gecko/util/GeckoBundle;->toJSONObject()Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    :goto_2
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v6, v6, 0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_2
    :goto_3
    move-object v3, v4

    .line 62
    goto :goto_4

    .line 63
    :cond_3
    invoke-static {v3}, Lorg/json/JSONObject;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    if-eqz v4, :cond_4

    .line 68
    .line 69
    goto :goto_3

    .line 70
    :cond_4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    :goto_4
    iget-object v4, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 75
    .line 76
    invoke-virtual {v4, v2}, Lf/i;->h(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v4

    .line 80
    check-cast v4, Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    .line 84
    .line 85
    add-int/lit8 v2, v2, 0x1

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    invoke-virtual {v0}, Lf/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 2
    .line 3
    iget p2, p2, Lf/i;->c:I

    .line 4
    .line 5
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    :goto_0
    if-ge v0, p2, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lf/i;->h(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lorg/mozilla/gecko/util/GeckoBundle;->mMap:Lf/i;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Lf/i;->j(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v0, v0, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    return-void
.end method
