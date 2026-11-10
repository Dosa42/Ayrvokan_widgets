.class public final Lu1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq1/d;


# instance fields
.field public final synthetic a:Lu1/i;


# direct methods
.method public constructor <init>(Lu1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lu1/b;->a:Lu1/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lu1/b;->a:Lu1/i;

    .line 2
    .line 3
    iget-object v1, v0, Lu1/i;->w:Lv1/a;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Lv1/d;->g()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v1, v0, Lu1/i;->x:Lv1/a;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {v1}, Lv1/d;->g()V

    .line 15
    .line 16
    .line 17
    :cond_1
    iget-object v0, v0, Lu1/i;->y:Lv1/a;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lv1/d;->g()V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method
