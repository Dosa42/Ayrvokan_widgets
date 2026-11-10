.class public final Lorg/mozilla/gecko/GeckoSharedPrefs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;
    }
.end annotation

.annotation build Lorg/mozilla/gecko/annotation/RobocopTarget;
.end annotation


# static fields
.field public static final APP_PREFS_NAME:Ljava/lang/String; = "GeckoApp"

.field public static final CRASH_PREFS_NAME:Ljava/lang/String; = "CrashReporter"

.field private static final LOGTAG:Ljava/lang/String; = "GeckoSharedPrefs"

.field public static final PREFS_VERSION:I = 0x2

.field private static final PREFS_VERSION_KEY:Ljava/lang/String; = "gecko_shared_prefs_migration"

.field private static final PROFILE_MIGRATIONS_0_TO_1:[Ljava/lang/String;

.field private static final PROFILE_MIGRATIONS_1_TO_2:[Ljava/lang/String;

.field public static final PROFILE_PREFS_NAME_PREFIX:Ljava/lang/String; = "GeckoProfile-"

.field private static final disableMigrations:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile migrationDone:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    sget-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;->DISABLE_MIGRATIONS:Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs;->disableMigrations:Ljava/util/EnumSet;

    const-string v0, "home_panels"

    const-string v1, "home_locale"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs;->PROFILE_MIGRATIONS_0_TO_1:[Ljava/lang/String;

    const-string v0, "allowContact"

    const-string v1, "contactEmail"

    const-string v2, "sendReport"

    const-string v3, "includeUrl"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs;->PROFILE_MIGRATIONS_1_TO_2:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static forApp(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    const-class v0, Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->forApp(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static forApp(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;",
            ">;)",
            "Landroid/content/SharedPreferences;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;->DISABLE_MIGRATIONS:Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->migrateIfNecessary(Landroid/content/Context;)V

    :cond_0
    const-string p1, "GeckoApp"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static forCrashReporter(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    const-class v0, Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->forCrashReporter(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static forCrashReporter(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/EnumSet<",
            "Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;",
            ">;)",
            "Landroid/content/SharedPreferences;"
        }
    .end annotation

    .line 2
    if-eqz p1, :cond_0

    sget-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;->DISABLE_MIGRATIONS:Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->migrateIfNecessary(Landroid/content/Context;)V

    :cond_0
    const-string p1, "CrashReporter"

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static forProfileName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;
    .locals 1

    .line 1
    const-class v0, Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->forProfileName(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static forProfileName(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet<",
            "Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;",
            ">;)",
            "Landroid/content/SharedPreferences;"
        }
    .end annotation

    .line 2
    if-eqz p2, :cond_0

    sget-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;->DISABLE_MIGRATIONS:Lorg/mozilla/gecko/GeckoSharedPrefs$Flags;

    invoke-virtual {p2, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-static {p0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->migrateIfNecessary(Landroid/content/Context;)V

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GeckoProfile-"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getVersion(Landroid/content/Context;)I
    .locals 2

    sget-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs;->disableMigrations:Ljava/util/EnumSet;

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->forApp(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "gecko_shared_prefs_migration"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private static migrateCrashReporterSettings(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/SharedPreferences;",
            "Landroid/content/SharedPreferences$Editor;",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p3, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p2, v1, v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->putEntry(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static migrateFromPreferenceManager(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences$Editor;Ljava/util/List;)Landroid/content/SharedPreferences$Editor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/SharedPreferences$Editor;",
            "Landroid/content/SharedPreferences$Editor;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, p2

    goto :goto_1

    :cond_0
    move-object v3, p1

    :goto_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v3, v2, v1}, Lorg/mozilla/gecko/GeckoSharedPrefs;->putEntry(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized migrateIfNecessary(Landroid/content/Context;)V
    .locals 0

    const-class p0, Lorg/mozilla/gecko/GeckoSharedPrefs;

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method private static performMigration(Landroid/content/Context;)V
    .locals 10

    sget-object v0, Lorg/mozilla/gecko/GeckoSharedPrefs;->disableMigrations:Ljava/util/EnumSet;

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->forApp(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "gecko_shared_prefs_migration"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    :try_start_0
    invoke-static {p0}, Lorg/mozilla/gecko/GeckoProfile;->getDefaultProfileName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0, v6, v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->forProfileName(Landroid/content/Context;Ljava/lang/String;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-static {p0, v0}, Lorg/mozilla/gecko/GeckoSharedPrefs;->forCrashReporter(Landroid/content/Context;Ljava/util/EnumSet;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v7, 0x1

    add-int/2addr v2, v7

    const/4 v8, 0x0

    :goto_0
    if-gt v2, v4, :cond_3

    if-eq v2, v7, :cond_2

    if-eq v2, v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v9, Lorg/mozilla/gecko/GeckoSharedPrefs;->PROFILE_MIGRATIONS_1_TO_2:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-static {v1, v5, v0, v9}, Lorg/mozilla/gecko/GeckoSharedPrefs;->migrateCrashReporterSettings(Landroid/content/SharedPreferences;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences$Editor;Ljava/util/List;)V

    goto :goto_1

    :cond_2
    sget-object v8, Lorg/mozilla/gecko/GeckoSharedPrefs;->PROFILE_MIGRATIONS_0_TO_1:[Ljava/lang/String;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-static {p0, v5, v6, v8}, Lorg/mozilla/gecko/GeckoSharedPrefs;->migrateFromPreferenceManager(Landroid/content/Context;Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences$Editor;Ljava/util/List;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v5, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->apply()V

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-eqz v8, :cond_4

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_4
    return-void

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Failed to get default profile name for migration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static putEntry(Landroid/content/SharedPreferences$Editor;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    instance-of v0, p2, Ljava/lang/String;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    check-cast p2, Ljava/lang/String;

    .line 9
    .line 10
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    check-cast p2, Ljava/lang/Boolean;

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    instance-of v0, p2, Ljava/lang/Long;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    check-cast p2, Ljava/lang/Long;

    .line 33
    .line 34
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 35
    .line 36
    .line 37
    move-result-wide v0

    .line 38
    invoke-interface {p0, p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    instance-of v0, p2, Ljava/lang/Float;

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    check-cast p2, Ljava/lang/Float;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    instance-of v0, p2, Ljava/lang/Integer;

    .line 57
    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    check-cast p2, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result p2

    .line 66
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 67
    .line 68
    .line 69
    :goto_0
    return-void

    .line 70
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 71
    .line 72
    const-string p2, "Unrecognized value type for key: "

    .line 73
    .line 74
    invoke-static {p2, p1}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    throw p0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v0, Lorg/mozilla/gecko/GeckoSharedPrefs;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-boolean v1, Lorg/mozilla/gecko/GeckoSharedPrefs;->migrationDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
