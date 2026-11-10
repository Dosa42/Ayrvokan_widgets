.class Lorg/mozilla/gecko/NativeQueue$QueuedCall;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/NativeQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueuedCall"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public method:Ljava/lang/reflect/Method;

.field public state:Lorg/mozilla/gecko/NativeQueue$State;

.field public target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;Lorg/mozilla/gecko/NativeQueue$State;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/NativeQueue$QueuedCall;->method:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lorg/mozilla/gecko/NativeQueue$QueuedCall;->target:Ljava/lang/Object;

    iput-object p3, p0, Lorg/mozilla/gecko/NativeQueue$QueuedCall;->args:[Ljava/lang/Object;

    iput-object p4, p0, Lorg/mozilla/gecko/NativeQueue$QueuedCall;->state:Lorg/mozilla/gecko/NativeQueue$State;

    return-void
.end method
