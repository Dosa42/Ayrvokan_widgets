.class public final Ln0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln0/d;


# static fields
.field public static final f:Ljava/util/logging/Logger;


# instance fields
.field public final a:Lo0/p;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Lk0/g;

.field public final d:Lp0/d;

.field public final e:Lq0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lj0/r;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Ln0/c;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lk0/g;Lo0/p;Lp0/d;Lq0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln0/c;->b:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Ln0/c;->c:Lk0/g;

    iput-object p3, p0, Ln0/c;->a:Lo0/p;

    iput-object p4, p0, Ln0/c;->d:Lp0/d;

    iput-object p5, p0, Ln0/c;->e:Lq0/c;

    return-void
.end method
