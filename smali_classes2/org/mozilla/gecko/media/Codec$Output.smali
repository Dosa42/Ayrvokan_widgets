.class final Lorg/mozilla/gecko/media/Codec$Output;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/media/Codec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Output"
.end annotation


# instance fields
.field public final index:I

.field public final sample:Lorg/mozilla/gecko/media/Sample;


# direct methods
.method public constructor <init>(Lorg/mozilla/gecko/media/Sample;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/media/Codec$Output;->sample:Lorg/mozilla/gecko/media/Sample;

    iput p2, p0, Lorg/mozilla/gecko/media/Codec$Output;->index:I

    return-void
.end method
