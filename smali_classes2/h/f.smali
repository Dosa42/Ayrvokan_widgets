.class public final Lh/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lh/f;->a:I

    .line 1
    invoke-direct {p0, v0}, Lh/f;-><init>(I)V

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    .line 2
    iput p1, p0, Lh/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    iget v0, p0, Lh/f;->a:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    .line 6
    .line 7
    goto :goto_1

    .line 8
    :pswitch_0
    check-cast p1, Le0/f;

    .line 9
    .line 10
    check-cast p2, Le0/f;

    .line 11
    .line 12
    iget p1, p1, Le0/f;->a:I

    .line 13
    .line 14
    iget p2, p2, Le0/f;->a:I

    .line 15
    .line 16
    sub-int/2addr p1, p2

    .line 17
    return p1

    .line 18
    :pswitch_1
    check-cast p1, Lz/a;

    .line 19
    .line 20
    check-cast p2, Lz/a;

    .line 21
    .line 22
    iget v0, p2, Lz/a;->e:I

    .line 23
    .line 24
    iget v2, p2, Lz/a;->d:I

    .line 25
    .line 26
    sub-int/2addr v0, v2

    .line 27
    add-int/2addr v0, v1

    .line 28
    iget v2, p2, Lz/a;->g:I

    .line 29
    .line 30
    iget v3, p2, Lz/a;->f:I

    .line 31
    .line 32
    sub-int/2addr v2, v3

    .line 33
    add-int/2addr v2, v1

    .line 34
    mul-int/2addr v2, v0

    .line 35
    iget v0, p2, Lz/a;->i:I

    .line 36
    .line 37
    iget p2, p2, Lz/a;->h:I

    .line 38
    .line 39
    sub-int/2addr v0, p2

    .line 40
    add-int/2addr v0, v1

    .line 41
    mul-int/2addr v0, v2

    .line 42
    iget p2, p1, Lz/a;->e:I

    .line 43
    .line 44
    iget v2, p1, Lz/a;->d:I

    .line 45
    .line 46
    sub-int/2addr p2, v2

    .line 47
    add-int/2addr p2, v1

    .line 48
    iget v2, p1, Lz/a;->g:I

    .line 49
    .line 50
    iget v3, p1, Lz/a;->f:I

    .line 51
    .line 52
    sub-int/2addr v2, v3

    .line 53
    add-int/2addr v2, v1

    .line 54
    mul-int/2addr v2, p2

    .line 55
    iget p2, p1, Lz/a;->i:I

    .line 56
    .line 57
    iget p1, p1, Lz/a;->h:I

    .line 58
    .line 59
    sub-int/2addr p2, p1

    .line 60
    add-int/2addr p2, v1

    .line 61
    mul-int/2addr p2, v2

    .line 62
    sub-int/2addr v0, p2

    .line 63
    return v0

    .line 64
    :pswitch_2
    check-cast p1, Landroid/view/View;

    .line 65
    .line 66
    check-cast p2, Landroid/view/View;

    .line 67
    .line 68
    sget-object v0, Lp/k;->a:Ljava/lang/reflect/Field;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/view/View;->getZ()F

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    cmpl-float v0, p1, p2

    .line 79
    .line 80
    if-lez v0, :cond_0

    .line 81
    .line 82
    const/4 v1, -0x1

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    cmpg-float p1, p1, p2

    .line 85
    .line 86
    if-gez p1, :cond_1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    const/4 v1, 0x0

    .line 90
    :goto_0
    return v1

    .line 91
    :goto_1
    check-cast p1, Lf2/t;

    .line 92
    .line 93
    check-cast p2, Lf2/t;

    .line 94
    .line 95
    iget p2, p2, Lf2/t;->e:I

    .line 96
    .line 97
    iget p1, p1, Lf2/t;->e:I

    .line 98
    .line 99
    sub-int/2addr p2, p1

    .line 100
    return p2

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
