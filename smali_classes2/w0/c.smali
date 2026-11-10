.class public final Lw0/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lw0/c;


# instance fields
.field public final a:Lc/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc/a;

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lc/a;-><init>(II)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    new-instance v2, Lw0/c;

    .line 14
    .line 15
    invoke-direct {v2, v0, v1}, Lw0/c;-><init>(Lc/a;Landroid/os/Looper;)V

    .line 16
    .line 17
    .line 18
    sput-object v2, Lw0/c;->b:Lw0/c;

    .line 19
    .line 20
    return-void
.end method

.method public constructor <init>(Lc/a;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw0/c;->a:Lc/a;

    .line 5
    .line 6
    return-void
.end method
