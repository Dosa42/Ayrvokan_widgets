.class public abstract Lorg/mozilla/geckoview/Autocomplete$Option;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Option"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final HINT_KEY:Ljava/lang/String; = "hint"

.field static final VALUE_KEY:Ljava/lang/String; = "value"


# instance fields
.field public final hint:I

.field public final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/Autocomplete$Option;->value:Ljava/lang/Object;

    iput p2, p0, Lorg/mozilla/geckoview/Autocomplete$Option;->hint:I

    return-void
.end method


# virtual methods
.method public abstract toBundle()Lorg/mozilla/gecko/util/GeckoBundle;
.end method
