.class public final Lorg/mozilla/gecko/util/INIParser;
.super Lorg/mozilla/gecko/util/INISection;
.source "SourceFile"


# instance fields
.field private final mFile:Ljava/io/File;

.field private mSections:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/util/INISection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/util/INISection;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/mozilla/gecko/util/INIParser;->mFile:Ljava/io/File;

    return-void
.end method

.method private parse(Ljava/io/File;)V
    .locals 6

    .line 2
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/io/BufferedReader;

    invoke-direct {p1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x3b

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x5b

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    const-string v0, "Parse as section: "

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/util/INISection;->debug(Ljava/lang/String;)V

    new-instance v0, Lorg/mozilla/gecko/util/INISection;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/mozilla/gecko/util/INISection;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    invoke-virtual {v0}, Lorg/mozilla/gecko/util/INISection;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string v3, "Parse as property: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/mozilla/gecko/util/INISection;->debug(Ljava/lang/String;)V

    const-string v3, "="

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    goto :goto_0

    :cond_3
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aget-object v1, v1, v5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2, v1}, Lorg/mozilla/gecko/util/INISection;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/mozilla/gecko/util/INISection;->mProperties:Ljava/util/Hashtable;

    invoke-virtual {v3, v2, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ignore line: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/mozilla/gecko/util/INISection;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V

    :catch_0
    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public addSection(Lorg/mozilla/gecko/util/INISection;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    invoke-virtual {p1}, Lorg/mozilla/gecko/util/INISection;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getSection(Ljava/lang/String;)Lorg/mozilla/gecko/util/INISection;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/mozilla/gecko/util/INISection;

    return-object p1
.end method

.method public getSections()Ljava/util/Hashtable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lorg/mozilla/gecko/util/INISection;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lorg/mozilla/gecko/util/INIParser;->parse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error parsing: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/util/INISection;->debug(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    return-object v0
.end method

.method public parse()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/mozilla/gecko/util/INISection;->parse()V

    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mFile:Ljava/io/File;

    invoke-direct {p0, v0}, Lorg/mozilla/gecko/util/INIParser;->parse(Ljava/io/File;)V

    return-void
.end method

.method public removeSection(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public renameSection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/mozilla/gecko/util/INIParser;->getSections()Ljava/util/Hashtable;

    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mozilla/gecko/util/INISection;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p2}, Lorg/mozilla/gecko/util/INISection;->setName(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    invoke-virtual {p1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public write()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mFile:Ljava/io/File;

    invoke-virtual {p0, v0}, Lorg/mozilla/gecko/util/INIParser;->writeTo(Ljava/io/File;)V

    return-void
.end method

.method public write(Ljava/io/BufferedWriter;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lorg/mozilla/gecko/util/INISection;->write(Ljava/io/BufferedWriter;)V

    iget-object v0, p0, Lorg/mozilla/gecko/util/INIParser;->mSections:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/mozilla/gecko/util/INISection;

    invoke-virtual {v1, p1}, Lorg/mozilla/gecko/util/INISection;->write(Ljava/io/BufferedWriter;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeTo(Ljava/io/File;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    :try_start_1
    invoke-virtual {p0, p1}, Lorg/mozilla/gecko/util/INIParser;->write(Ljava/io/BufferedWriter;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {p1}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    invoke-static {p1}, Lorg/mozilla/gecko/util/IOUtils;->safeStreamClose(Ljava/io/Closeable;)V

    throw v0
.end method
