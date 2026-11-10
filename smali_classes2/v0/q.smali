.class public abstract Lv0/q;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[Lv0/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lv0/n;

    sget-object v1, Lv0/r;->a:Lv0/m;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lv0/r;->b:Lv0/m;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lv0/q;->a:[Lv0/n;

    return-void
.end method
