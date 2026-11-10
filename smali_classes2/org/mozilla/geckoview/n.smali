.class public final synthetic Lorg/mozilla/geckoview/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/mozilla/geckoview/n;->a:I

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget v0, p0, Lorg/mozilla/geckoview/n;->a:I

    invoke-static {v0, p1, p2}, Lorg/mozilla/geckoview/WebExtension$Icon;->a(ILjava/lang/Integer;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method
