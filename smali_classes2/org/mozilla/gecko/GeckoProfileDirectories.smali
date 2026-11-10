.class public Lorg/mozilla/gecko/GeckoProfileDirectories;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;,
        Lorg/mozilla/gecko/GeckoProfileDirectories$NoSuchProfileException;,
        Lorg/mozilla/gecko/GeckoProfileDirectories$NoMozillaDirectoryException;
    }
.end annotation


# static fields
.field private static final MOZILLA_DIR_NAME:Ljava/lang/String; = "mozilla"

.field private static final sectionHasName:Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;

.field private static final sectionIsDefault:Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/mozilla/gecko/GeckoProfileDirectories$1;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoProfileDirectories$1;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoProfileDirectories;->sectionIsDefault:Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;

    new-instance v0, Lorg/mozilla/gecko/GeckoProfileDirectories$2;

    invoke-direct {v0}, Lorg/mozilla/gecko/GeckoProfileDirectories$2;-><init>()V

    sput-object v0, Lorg/mozilla/gecko/GeckoProfileDirectories;->sectionHasName:Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findDefaultProfileName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getMozillaDirectory(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getProfilesINI(Ljava/io/File;)Lorg/mozilla/gecko/util/INIParser;

    move-result-object p0

    invoke-virtual {p0}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/util/INISection;

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Lorg/mozilla/gecko/util/INISection;->getIntProperty(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string p0, "Name"

    invoke-virtual {v0, p0}, Lorg/mozilla/gecko/util/INISection;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findProfileDir(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    invoke-static {p0}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getProfilesINI(Ljava/io/File;)Lorg/mozilla/gecko/util/INIParser;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lorg/mozilla/gecko/util/INISection;

    .line 30
    .line 31
    const-string v2, "Name"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Lorg/mozilla/gecko/util/INISection;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    if-eqz v2, :cond_0

    .line 38
    .line 39
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_0

    .line 44
    .line 45
    const-string p1, "IsRelative"

    .line 46
    .line 47
    invoke-virtual {v1, p1}, Lorg/mozilla/gecko/util/INISection;->getIntProperty(Ljava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    const/4 v0, 0x1

    .line 52
    const-string v2, "Path"

    .line 53
    .line 54
    if-ne p1, v0, :cond_1

    .line 55
    .line 56
    new-instance p1, Ljava/io/File;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lorg/mozilla/gecko/util/INISection;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-direct {p1, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_1
    new-instance p0, Ljava/io/File;

    .line 67
    .line 68
    invoke-virtual {v1, v2}, Lorg/mozilla/gecko/util/INISection;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    return-object p0

    .line 76
    :cond_2
    new-instance p0, Lorg/mozilla/gecko/GeckoProfileDirectories$NoSuchProfileException;

    .line 77
    .line 78
    const-string v0, "No profile "

    .line 79
    .line 80
    invoke-static {v0, p1}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-direct {p0, p1}, Lorg/mozilla/gecko/GeckoProfileDirectories$NoSuchProfileException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0
.end method

.method public static getAllProfiles(Ljava/io/File;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoProfileDirectories;->sectionHasName:Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getMatchingProfiles(Ljava/io/File;Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultProfile(Ljava/io/File;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/mozilla/gecko/GeckoProfileDirectories;->sectionIsDefault:Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getMatchingProfiles(Ljava/io/File;Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static getMatchingProfiles(Ljava/io/File;Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;Z)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getProfilesINI(Ljava/io/File;)Lorg/mozilla/gecko/util/INIParser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/mozilla/gecko/util/INISection;

    if-eqz p1, :cond_1

    invoke-interface {p1, v2}, Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;->matches(Lorg/mozilla/gecko/util/INISection;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_1
    const-string v3, "Name"

    invoke-virtual {v2, v3}, Lorg/mozilla/gecko/util/INISection;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Path"

    invoke-virtual {v2, v4}, Lorg/mozilla/gecko/util/INISection;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "IsRelative"

    invoke-virtual {v2, v5}, Lorg/mozilla/gecko/util/INISection;->getIntProperty(Ljava/lang/String;)I

    move-result v2

    const/4 v5, 0x1

    if-ne v2, v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    new-instance v2, Ljava/io/File;

    if-eqz v5, :cond_3

    invoke-direct {v2, p0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    :cond_4
    return-object v0
.end method

.method public static getMozillaDirectory(Landroid/content/Context;)Ljava/io/File;
    .locals 3
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "mozilla"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/mozilla/gecko/GeckoProfileDirectories$NoMozillaDirectoryException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create mozilla directory at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/GeckoProfileDirectories$NoMozillaDirectoryException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getProfilesINI(Ljava/io/File;)Lorg/mozilla/gecko/util/INIParser;
    .locals 3
    .annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/util/INIParser;

    new-instance v1, Ljava/io/File;

    const-string v2, "profiles.ini"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/INIParser;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static getProfilesNamed(Ljava/io/File;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/mozilla/gecko/GeckoProfileDirectories$3;

    invoke-direct {v0, p1}, Lorg/mozilla/gecko/GeckoProfileDirectories$3;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p0, v0, p1}, Lorg/mozilla/gecko/GeckoProfileDirectories;->getMatchingProfiles(Ljava/io/File;Lorg/mozilla/gecko/GeckoProfileDirectories$INISectionPredicate;Z)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static saltProfileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    const/16 v4, 0x24

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    const-string v3, "abcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot salt null profile name."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
