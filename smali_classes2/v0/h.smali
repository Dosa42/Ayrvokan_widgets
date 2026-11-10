.class public final Lv0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static b:Lv0/h;


# instance fields
.field public a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p2, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lv0/h;->a:Landroid/content/Context;

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lv0/h;->a:Landroid/content/Context;

    .line 18
    .line 19
    return-void
.end method

.method public static final varargs a(Landroid/content/pm/PackageInfo;[Lv0/n;)Lv0/n;
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return-object v1

    :cond_1
    new-instance v0, Lv0/o;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    invoke-direct {v0, p0}, Lv0/o;-><init>([B)V

    :goto_0
    array-length p0, p1

    if-ge v2, p0, :cond_3

    aget-object p0, p1, v2

    invoke-virtual {p0, v0}, Lv0/n;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    aget-object p0, p1, v2

    return-object p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v1
.end method

.method public static final b(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    const-string v2, "com.android.vending"

    iget-object v3, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.google.android.gms"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v0

    goto :goto_3

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_2

    goto :goto_2

    :cond_2
    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_3
    :goto_2
    move v2, v1

    :goto_3
    move v3, v2

    move-object v2, p0

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    move v3, v0

    :goto_4
    if-eqz p0, :cond_6

    iget-object p0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_6

    if-eqz v3, :cond_5

    sget-object p0, Lv0/q;->a:[Lv0/n;

    invoke-static {v2, p0}, Lv0/h;->a(Landroid/content/pm/PackageInfo;[Lv0/n;)Lv0/n;

    move-result-object p0

    goto :goto_5

    :cond_5
    new-array p0, v0, [Lv0/n;

    sget-object v3, Lv0/q;->a:[Lv0/n;

    aget-object v3, v3, v1

    aput-object v3, p0, v1

    invoke-static {v2, p0}, Lv0/h;->a(Landroid/content/pm/PackageInfo;[Lv0/n;)Lv0/n;

    move-result-object p0

    :goto_5
    if-eqz p0, :cond_6

    return v0

    :cond_6
    return v1
.end method
