.class public abstract Lu1/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lo1/m0;

.field public final b:Lo1/m0;

.field public final synthetic c:Lu1/i;


# direct methods
.method public constructor <init>(Lu1/i;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lu1/c;->c:Lu1/i;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p1, Lu1/i;->a:Lq1/f;

    .line 7
    .line 8
    iget-object v0, v0, Lq1/f;->H:Lo1/n0;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v0, Lo1/m0;

    .line 14
    .line 15
    const-string v1, "Can\'t accept remote-control Wifi connections. Specified port is already in use. Please choose another one by clicking \"Remote control\" in the options menu"

    .line 16
    .line 17
    const/16 v2, 0x1f40

    .line 18
    .line 19
    invoke-direct {v0, v1, v2}, Lo1/m0;-><init>(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lu1/c;->a:Lo1/m0;

    .line 23
    .line 24
    iget-object p1, p1, Lu1/i;->a:Lq1/f;

    .line 25
    .line 26
    iget-object p1, p1, Lq1/f;->H:Lo1/n0;

    .line 27
    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    new-instance p1, Lo1/m0;

    .line 32
    .line 33
    const-string v0, "Can\'t accept remote-control Bluetooth connections. Is Bluetooth enabled?"

    .line 34
    .line 35
    const/16 v1, 0x1388

    .line 36
    .line 37
    invoke-direct {p1, v0, v1}, Lo1/m0;-><init>(Ljava/lang/String;I)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lu1/c;->b:Lo1/m0;

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method
