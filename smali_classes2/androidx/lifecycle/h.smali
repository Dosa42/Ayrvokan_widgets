.class public final enum Landroidx/lifecycle/h;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Landroidx/lifecycle/h;

.field public static final enum ON_ANY:Landroidx/lifecycle/h;

.field public static final enum ON_CREATE:Landroidx/lifecycle/h;

.field public static final enum ON_DESTROY:Landroidx/lifecycle/h;

.field public static final enum ON_PAUSE:Landroidx/lifecycle/h;

.field public static final enum ON_RESUME:Landroidx/lifecycle/h;

.field public static final enum ON_START:Landroidx/lifecycle/h;

.field public static final enum ON_STOP:Landroidx/lifecycle/h;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Landroidx/lifecycle/h;

    const-string v1, "ON_CREATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/lifecycle/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/lifecycle/h;->ON_CREATE:Landroidx/lifecycle/h;

    new-instance v1, Landroidx/lifecycle/h;

    const-string v2, "ON_START"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroidx/lifecycle/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/lifecycle/h;->ON_START:Landroidx/lifecycle/h;

    new-instance v2, Landroidx/lifecycle/h;

    const-string v3, "ON_RESUME"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Landroidx/lifecycle/h;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/lifecycle/h;->ON_RESUME:Landroidx/lifecycle/h;

    new-instance v3, Landroidx/lifecycle/h;

    const-string v4, "ON_PAUSE"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Landroidx/lifecycle/h;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/lifecycle/h;->ON_PAUSE:Landroidx/lifecycle/h;

    new-instance v4, Landroidx/lifecycle/h;

    const-string v5, "ON_STOP"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Landroidx/lifecycle/h;-><init>(Ljava/lang/String;I)V

    sput-object v4, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    new-instance v5, Landroidx/lifecycle/h;

    const-string v6, "ON_DESTROY"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Landroidx/lifecycle/h;-><init>(Ljava/lang/String;I)V

    sput-object v5, Landroidx/lifecycle/h;->ON_DESTROY:Landroidx/lifecycle/h;

    new-instance v6, Landroidx/lifecycle/h;

    const-string v7, "ON_ANY"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Landroidx/lifecycle/h;-><init>(Ljava/lang/String;I)V

    sput-object v6, Landroidx/lifecycle/h;->ON_ANY:Landroidx/lifecycle/h;

    filled-new-array/range {v0 .. v6}, [Landroidx/lifecycle/h;

    move-result-object v0

    sput-object v0, Landroidx/lifecycle/h;->$VALUES:[Landroidx/lifecycle/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/lifecycle/h;
    .locals 1

    const-class v0, Landroidx/lifecycle/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/h;

    return-object p0
.end method

.method public static values()[Landroidx/lifecycle/h;
    .locals 1

    sget-object v0, Landroidx/lifecycle/h;->$VALUES:[Landroidx/lifecycle/h;

    invoke-virtual {v0}, [Landroidx/lifecycle/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/lifecycle/h;

    return-object v0
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/i;
    .locals 3

    .line 1
    sget-object v0, Landroidx/lifecycle/g;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " has no target state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Landroidx/lifecycle/i;->a:Landroidx/lifecycle/i;

    return-object v0

    :pswitch_1
    sget-object v0, Landroidx/lifecycle/i;->e:Landroidx/lifecycle/i;

    return-object v0

    :pswitch_2
    sget-object v0, Landroidx/lifecycle/i;->d:Landroidx/lifecycle/i;

    return-object v0

    :pswitch_3
    sget-object v0, Landroidx/lifecycle/i;->c:Landroidx/lifecycle/i;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
