.class final Lorg/mozilla/gecko/util/ActivityUtils$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/util/ActivityUtils;->preventDisplayStatusbar(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/util/ActivityUtils$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x4

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/gecko/util/ActivityUtils$1;->val$activity:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/mozilla/gecko/util/ActivityUtils;->setFullScreen(Landroid/app/Activity;Z)V

    :cond_0
    return-void
.end method
