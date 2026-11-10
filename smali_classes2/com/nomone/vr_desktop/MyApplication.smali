.class public Lcom/nomone/vr_desktop/MyApplication;
.super Landroid/app/Application;
.source "SourceFile"


# static fields
.field public static c:Landroid/content/Context;


# instance fields
.field public a:Lq1/f;

.field public final b:Ljava/lang/ThreadGroup;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    new-instance v0, Ljava/lang/ThreadGroup;

    const-string v1, "MyThreadGroup"

    invoke-direct {v0, v1}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/nomone/vr_desktop/MyApplication;->b:Ljava/lang/ThreadGroup;

    return-void
.end method


# virtual methods
.method public final onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/nomone/vr_desktop/MyApplication;->c:Landroid/content/Context;

    return-void
.end method
