.class public final Ld/a;
.super Lc1/b;
.source "SourceFile"


# static fields
.field public static volatile D:Ld/a;


# instance fields
.field public final C:Ld/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lc1/b;-><init>()V

    new-instance v0, Ld/c;

    invoke-direct {v0}, Ld/c;-><init>()V

    iput-object v0, p0, Ld/a;->C:Ld/c;

    return-void
.end method
