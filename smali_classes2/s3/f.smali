.class public final Ls3/f;
.super Ls3/j;
.source "SourceFile"


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Le3/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLh3/a;Lh3/a;Le3/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4}, Ls3/j;-><init>(Lh3/a;Lh3/a;)V

    iput-object p1, p0, Ls3/f;->c:Ljava/lang/String;

    iput-boolean p2, p0, Ls3/f;->d:Z

    iput-object p5, p0, Ls3/f;->e:Le3/b;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 1
    const/16 v0, 0x10

    return v0
.end method
