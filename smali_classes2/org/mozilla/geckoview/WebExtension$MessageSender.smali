.class public Lorg/mozilla/geckoview/WebExtension$MessageSender;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/WebExtension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MessageSender"
.end annotation


# static fields
.field public static final ENV_TYPE_CONTENT_SCRIPT:I = 0x2

.field public static final ENV_TYPE_EXTENSION:I = 0x1

.field static final ENV_TYPE_UNKNOWN:I


# instance fields
.field public final environmentType:I

.field final isTopLevel:Z

.field public final session:Lorg/mozilla/geckoview/GeckoSession;

.field public final url:Ljava/lang/String;

.field public final webExtension:Lorg/mozilla/geckoview/WebExtension;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->webExtension:Lorg/mozilla/geckoview/WebExtension;

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->session:Lorg/mozilla/geckoview/GeckoSession;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->isTopLevel:Z

    iput-object v0, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->url:Ljava/lang/String;

    iput v1, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->environmentType:I

    return-void
.end method

.method public constructor <init>(Lorg/mozilla/geckoview/WebExtension;Lorg/mozilla/geckoview/GeckoSession;Ljava/lang/String;IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->webExtension:Lorg/mozilla/geckoview/WebExtension;

    iput-object p2, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->session:Lorg/mozilla/geckoview/GeckoSession;

    iput-boolean p5, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->isTopLevel:Z

    iput-object p3, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->url:Ljava/lang/String;

    iput p4, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->environmentType:I

    return-void
.end method


# virtual methods
.method public isTopLevel()Z
    .locals 1

    iget-boolean v0, p0, Lorg/mozilla/geckoview/WebExtension$MessageSender;->isTopLevel:Z

    return v0
.end method
