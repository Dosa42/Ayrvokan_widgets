.class public Lorg/mozilla/gecko/util/FileUtils$FilenameRegexFilter;
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
    name = "FilenameRegexFilter"
.end annotation


# instance fields
.field private mCachedMatcher:Ljava/util/regex/Matcher;

.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/util/FileUtils$FilenameRegexFilter;->mPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/gecko/util/FileUtils$FilenameRegexFilter;->mPattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    iget-object p1, p0, Lorg/mozilla/gecko/util/FileUtils$FilenameRegexFilter;->mCachedMatcher:Ljava/util/regex/Matcher;

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/mozilla/gecko/util/FileUtils$FilenameRegexFilter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/gecko/util/FileUtils$FilenameRegexFilter;->mCachedMatcher:Ljava/util/regex/Matcher;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    :goto_0
    iget-object p1, p0, Lorg/mozilla/gecko/util/FileUtils$FilenameRegexFilter;->mCachedMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method
