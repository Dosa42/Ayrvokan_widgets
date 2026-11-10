.class final Lorg/mozilla/gecko/media/Codec$Input;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Input"
.end annotation


# instance fields
.field public reported:Z

.field public final sample:Lorg/mozilla/gecko/media/Sample;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/Sample;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$Input;->sample:Lorg/mozilla/gecko/media/Sample;

    return-void
.end method
