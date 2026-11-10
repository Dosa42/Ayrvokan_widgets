.class public final Lf0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:I

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lf0/g;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lf0/g;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, ""

    iput-object p1, p0, Lf0/g;->c:Ljava/lang/String;

    return-void
.end method

.method public static b()Lf0/g;
    .locals 2

    .line 1
    new-instance v0, Lf0/g;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf0/g;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public final a()Lf0/g;
    .locals 2

    .line 1
    new-instance v0, Lf0/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lf0/g;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lf0/g;->b:I

    .line 7
    .line 8
    iput v1, v0, Lf0/g;->b:I

    .line 9
    .line 10
    iget-object v1, p0, Lf0/g;->c:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lf0/g;->c:Ljava/lang/String;

    .line 13
    .line 14
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget v0, p0, Lf0/g;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0

    .line 11
    :pswitch_0
    iget v0, p0, Lf0/g;->b:I

    .line 12
    .line 13
    sget v1, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 14
    .line 15
    sget-object v1, Lcom/google/android/gms/internal/play_billing/a;->c:Lcom/google/android/gms/internal/play_billing/o;

    .line 16
    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/h;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/google/android/gms/internal/play_billing/a;->b:Lcom/google/android/gms/internal/play_billing/a;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/play_billing/o;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/google/android/gms/internal/play_billing/a;

    .line 35
    .line 36
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget-object v1, p0, Lf0/g;->c:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v3, "Response Code: "

    .line 45
    .line 46
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", Debug Message: "

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    return-object v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
