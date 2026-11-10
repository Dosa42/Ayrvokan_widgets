.class public abstract Lorg/mozilla/geckoview/Autocomplete$SaveOption;
.super Lorg/mozilla/geckoview/Autocomplete$Option;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/Autocomplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SaveOption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/mozilla/geckoview/Autocomplete$Option<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lorg/mozilla/geckoview/Autocomplete$Option;-><init>(Ljava/lang/Object;I)V

    return-void
.end method
