.class public interface abstract Lv2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lc/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lc/a;

    const/16 v1, 0x13

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/a;-><init>(II)V

    sput-object v0, Lv2/c;->d:Lc/a;

    return-void
.end method
