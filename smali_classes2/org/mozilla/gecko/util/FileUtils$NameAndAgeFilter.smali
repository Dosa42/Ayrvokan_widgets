.class public Lorg/mozilla/gecko/util/FileUtils$NameAndAgeFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/gecko/util/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NameAndAgeFilter"
.end annotation


# instance fields
.field private final mMaxAge:D

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/util/FileUtils$NameAndAgeFilter;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lorg/mozilla/gecko/util/FileUtils$NameAndAgeFilter;->mMaxAge:D

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lorg/mozilla/gecko/util/FileUtils$NameAndAgeFilter;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-wide p1, p0, Lorg/mozilla/gecko/util/FileUtils$NameAndAgeFilter;->mMaxAge:D

    const-wide/16 v1, 0x0

    cmpg-double p1, p1, v1

    if-ltz p1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    sub-long/2addr p1, v0

    long-to-double p1, p1

    iget-wide v0, p0, Lorg/mozilla/gecko/util/FileUtils$NameAndAgeFilter;->mMaxAge:D

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
