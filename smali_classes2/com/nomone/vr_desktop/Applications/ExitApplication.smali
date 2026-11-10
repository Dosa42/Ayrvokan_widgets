.class public Lcom/nomone/vr_desktop/Applications/ExitApplication;
.super Lcom/nomone/vr_desktop/Applications/PromptApplication;
.source "SourceFile"


# static fields
.field public static i:Lcom/nomone/vr_desktop/Applications/ExitApplication;


# direct methods
.method public constructor <init>(Lq1/f;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lr1/y;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Lr1/y;-><init>(Lq1/f;)V

    .line 7
    .line 8
    .line 9
    const-string v1, "Exit: Are you sure?"

    .line 10
    .line 11
    iput-object v1, v0, Lr1/y;->d:Ljava/lang/String;

    .line 12
    .line 13
    const-string v1, "Are you sure you want to exit?"

    .line 14
    .line 15
    iput-object v1, v0, Lr1/y;->e:Ljava/lang/String;

    .line 16
    .line 17
    const/16 v1, 0x1cc

    .line 18
    .line 19
    const/16 v2, 0xaa

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Lr1/y;->d(II)V

    .line 22
    .line 23
    .line 24
    iput v2, v0, Lr1/y;->i:I

    .line 25
    .line 26
    const/16 v1, 0x1c

    .line 27
    .line 28
    iput v1, v0, Lr1/y;->j:I

    .line 29
    .line 30
    const-string v1, "Yes"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Lr1/y;->a(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "Cancel"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lr1/y;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    new-instance v1, Lr1/i;

    .line 41
    .line 42
    invoke-direct {v1, p1}, Lr1/i;-><init>(Lq1/f;)V

    .line 43
    .line 44
    .line 45
    iput-object v1, v0, Lr1/y;->o:Lr1/w;

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/nomone/vr_desktop/Applications/PromptApplication;->e(Lr1/y;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public static getInstance(Lq1/f;)Lr1/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/nomone/vr_desktop/Applications/ExitApplication;->i:Lcom/nomone/vr_desktop/Applications/ExitApplication;

    if-nez v0, :cond_0

    new-instance v0, Lcom/nomone/vr_desktop/Applications/ExitApplication;

    invoke-direct {v0, p0}, Lcom/nomone/vr_desktop/Applications/ExitApplication;-><init>(Lq1/f;)V

    sput-object v0, Lcom/nomone/vr_desktop/Applications/ExitApplication;->i:Lcom/nomone/vr_desktop/Applications/ExitApplication;

    :cond_0
    sget-object p0, Lcom/nomone/vr_desktop/Applications/ExitApplication;->i:Lcom/nomone/vr_desktop/Applications/ExitApplication;

    return-object p0
.end method
