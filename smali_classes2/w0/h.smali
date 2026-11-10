.class public final Lw0/h;
.super Ljava/lang/UnsupportedOperationException;
.source "SourceFile"


# instance fields
.field public final a:Lv0/c;


# direct methods
.method public constructor <init>(Lv0/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    iput-object p1, p0, Lw0/h;->a:Lv0/c;

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lw0/h;->a:Lv0/c;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Missing "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
