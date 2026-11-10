.class public final Lm0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic e:I


# instance fields
.field public final a:Lm0/h;

.field public final b:Ljava/util/List;

.field public final c:Lm0/b;

.field public final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    check-cast v0, Ljava/util/List;

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lm0/h;Ljava/util/List;Lm0/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm0/a;->a:Lm0/h;

    iput-object p2, p0, Lm0/a;->b:Ljava/util/List;

    iput-object p3, p0, Lm0/a;->c:Lm0/b;

    iput-object p4, p0, Lm0/a;->d:Ljava/lang/String;

    return-void
.end method
