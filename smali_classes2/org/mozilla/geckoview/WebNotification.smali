.class public Lorg/mozilla/geckoview/WebNotification;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final imageUrl:Ljava/lang/String;

.field public final lang:Ljava/lang/String;

.field private final mCookie:Ljava/lang/String;

.field public final requireInteraction:Z

.field public final source:Ljava/lang/String;

.field public final tag:Ljava/lang/String;

.field public final text:Ljava/lang/String;

.field public final textDirection:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .annotation runtime Lorg/mozilla/gecko/annotation/WrapForJNI;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/mozilla/geckoview/WebNotification;->tag:Ljava/lang/String;

    iput-object p3, p0, Lorg/mozilla/geckoview/WebNotification;->mCookie:Ljava/lang/String;

    iput-object p1, p0, Lorg/mozilla/geckoview/WebNotification;->title:Ljava/lang/String;

    iput-object p4, p0, Lorg/mozilla/geckoview/WebNotification;->text:Ljava/lang/String;

    iput-object p5, p0, Lorg/mozilla/geckoview/WebNotification;->imageUrl:Ljava/lang/String;

    iput-object p6, p0, Lorg/mozilla/geckoview/WebNotification;->textDirection:Ljava/lang/String;

    iput-object p7, p0, Lorg/mozilla/geckoview/WebNotification;->lang:Ljava/lang/String;

    iput-boolean p8, p0, Lorg/mozilla/geckoview/WebNotification;->requireInteraction:Z

    iput-object p9, p0, Lorg/mozilla/geckoview/WebNotification;->source:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public click()V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/WebNotification;->tag:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebNotification;->mCookie:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/GeckoAppShell;->onNotificationClick(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dismiss()V
    .locals 2

    invoke-static {}, Lorg/mozilla/gecko/util/ThreadUtils;->assertOnUiThread()V

    iget-object v0, p0, Lorg/mozilla/geckoview/WebNotification;->tag:Ljava/lang/String;

    iget-object v1, p0, Lorg/mozilla/geckoview/WebNotification;->mCookie:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/mozilla/gecko/GeckoAppShell;->onNotificationClose(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
