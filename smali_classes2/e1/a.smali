.class public abstract Le1/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public final a:Landroid/os/IBinder;

.field public final b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/a;->a:Landroid/os/IBinder;

    .line 2
    .line 3
    iput-object p2, p0, Le1/a;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final asBinder()Landroid/os/IBinder;
    .locals 1

    .line 1
    iget-object v0, p0, Le1/a;->a:Landroid/os/IBinder;

    return-object v0
.end method
