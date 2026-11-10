.class public final Landroidx/lifecycle/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/n;


# static fields
.field public static final i:Landroidx/lifecycle/u;


# instance fields
.field public a:I

.field public b:I

.field public c:Z

.field public d:Z

.field public e:Landroid/os/Handler;

.field public final f:Landroidx/lifecycle/p;

.field public final g:Landroidx/activity/a;

.field public final h:Lh/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/u;

    invoke-direct {v0}, Landroidx/lifecycle/u;-><init>()V

    sput-object v0, Landroidx/lifecycle/u;->i:Landroidx/lifecycle/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroidx/lifecycle/u;->a:I

    iput v0, p0, Landroidx/lifecycle/u;->b:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/lifecycle/u;->c:Z

    iput-boolean v0, p0, Landroidx/lifecycle/u;->d:Z

    new-instance v0, Landroidx/lifecycle/p;

    invoke-direct {v0, p0}, Landroidx/lifecycle/p;-><init>(Landroidx/lifecycle/n;)V

    iput-object v0, p0, Landroidx/lifecycle/u;->f:Landroidx/lifecycle/p;

    new-instance v0, Landroidx/activity/a;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Landroidx/activity/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/lifecycle/u;->g:Landroidx/activity/a;

    new-instance v0, Lh/a;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lh/a;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Landroidx/lifecycle/u;->h:Lh/a;

    return-void
.end method


# virtual methods
.method public final c()Landroidx/lifecycle/p;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/lifecycle/u;->f:Landroidx/lifecycle/p;

    return-object v0
.end method
