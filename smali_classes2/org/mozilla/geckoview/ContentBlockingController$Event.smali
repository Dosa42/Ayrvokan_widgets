.class public Lorg/mozilla/geckoview/ContentBlockingController$Event;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/geckoview/ContentBlockingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Event"
.end annotation


# static fields
.field public static final BLOCKED_CRYPTOMINING_CONTENT:I = 0x800

.field public static final BLOCKED_FINGERPRINTING_CONTENT:I = 0x40

.field public static final BLOCKED_SOCIALTRACKING_CONTENT:I = 0x10000

.field public static final BLOCKED_TRACKING_CONTENT:I = 0x1000

.field public static final BLOCKED_UNSAFE_CONTENT:I = 0x4000

.field public static final COOKIES_BLOCKED_ALL:I = 0x40000000

.field public static final COOKIES_BLOCKED_BY_PERMISSION:I = 0x10000000

.field public static final COOKIES_BLOCKED_FOREIGN:I = 0x80

.field public static final COOKIES_BLOCKED_SOCIALTRACKER:I = 0x1000000

.field public static final COOKIES_BLOCKED_TRACKER:I = 0x20000000

.field public static final COOKIES_LOADED:I = 0x8000

.field public static final COOKIES_LOADED_SOCIALTRACKER:I = 0x80000

.field public static final COOKIES_LOADED_TRACKER:I = 0x40000

.field public static final COOKIES_PARTITIONED_FOREIGN:I = -0x80000000

.field public static final LOADED_CRYPTOMINING_CONTENT:I = 0x200000

.field public static final LOADED_FINGERPRINTING_CONTENT:I = 0x400

.field public static final LOADED_LEVEL_1_TRACKING_CONTENT:I = 0x2000

.field public static final LOADED_LEVEL_2_TRACKING_CONTENT:I = 0x100000

.field public static final LOADED_SOCIALTRACKING_CONTENT:I = 0x20000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
