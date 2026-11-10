.class public abstract Lv2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La3/z;


# instance fields
.field public final a:La3/l;

.field public final b:I

.field public final c:Lf2/t;

.field public final d:I

.field public final e:Ljava/lang/Object;

.field public final f:J

.field public final g:J

.field public final h:La3/f0;


# direct methods
.method public constructor <init>(La3/i;La3/l;ILf2/t;ILjava/lang/Object;JJ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La3/f0;

    invoke-direct {v0, p1}, La3/f0;-><init>(La3/i;)V

    iput-object v0, p0, Lv2/a;->h:La3/f0;

    iput-object p2, p0, Lv2/a;->a:La3/l;

    iput p3, p0, Lv2/a;->b:I

    iput-object p4, p0, Lv2/a;->c:Lf2/t;

    iput p5, p0, Lv2/a;->d:I

    iput-object p6, p0, Lv2/a;->e:Ljava/lang/Object;

    iput-wide p7, p0, Lv2/a;->f:J

    iput-wide p9, p0, Lv2/a;->g:J

    return-void
.end method
