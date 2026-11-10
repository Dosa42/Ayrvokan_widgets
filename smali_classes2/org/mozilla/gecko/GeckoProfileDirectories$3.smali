.class final Lorg/mozilla/gecko/GeckoProfileDirectories$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/gecko/GeckoProfileDirectories;->getProfilesNamed(Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/gecko/GeckoProfileDirectories$3;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/mozilla/gecko/util/INISection;)Z
    .locals 2

    iget-object v0, p0, Lorg/mozilla/gecko/GeckoProfileDirectories$3;->val$name:Ljava/lang/String;

    const-string v1, "Name"

    invoke-virtual {p1, v1}, Lorg/mozilla/gecko/util/INISection;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
