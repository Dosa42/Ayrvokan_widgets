.class public Lcom/nomone/giap/GIAP;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/m;
.implements Lf0/i;
.implements Lf0/j;


# static fields
.field public static final h:Landroid/os/Handler;

.field public static volatile i:Lcom/nomone/giap/GIAP;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/ArrayList;

.field public final c:Lf0/b;

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/nomone/giap/GIAP;->h:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;[Ljava/lang/String;)V
    .locals 6

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Lcom/nomone/giap/GIAP;->a:Ljava/util/ArrayList;

    .line 11
    .line 12
    new-instance v0, Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    iput-object v0, p0, Lcom/nomone/giap/GIAP;->b:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x1

    .line 19
    .line 20
    iput-boolean v0, p0, Lcom/nomone/giap/GIAP;->d:Z

    .line 21
    const/4 v0, 0x0

    .line 22
    .line 23
    iput-boolean v0, p0, Lcom/nomone/giap/GIAP;->e:Z

    .line 24
    .line 25
    new-instance v1, Ljava/util/HashSet;

    .line 26
    .line 27
    .line 28
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 29
    .line 30
    iput-boolean v0, p0, Lcom/nomone/giap/GIAP;->f:Z

    .line 31
    .line 32
    const-wide/16 v1, 0x3e8

    .line 33
    .line 34
    iput-wide v1, p0, Lcom/nomone/giap/GIAP;->g:J

    .line 35
    array-length v1, p2

    .line 36
    move v2, v0

    .line 37
    .line 38
    :goto_0
    if-ge v2, v1, :cond_0

    .line 39
    .line 40
    aget-object v3, p2, v2

    .line 41
    .line 42
    iget-object v4, p0, Lcom/nomone/giap/GIAP;->a:Ljava/util/ArrayList;

    .line 43
    .line 44
    new-instance v5, Lp1/a;

    .line 45
    .line 46
    .line 47
    invoke-direct {v5, v3}, Lp1/a;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    .line 52
    iget-object v4, p0, Lcom/nomone/giap/GIAP;->b:Ljava/util/ArrayList;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    .line 57
    add-int/lit8 v2, v2, 0x1

    .line 58
    goto :goto_0

    .line 59
    .line 60
    :cond_0
    new-instance p2, Lf0/h;

    .line 61
    .line 62
    .line 63
    invoke-direct {p2, v0}, Lf0/h;-><init>(Z)V

    .line 64
    .line 65
    if-eqz p1, :cond_2

    .line 66
    .line 67
    iget-boolean v0, p2, Lf0/h;->b:Z

    .line 68
    .line 69
    if-eqz v0, :cond_1

    .line 70
    .line 71
    new-instance v0, Lf0/b;

    .line 72
    .line 73
    .line 74
    invoke-direct {v0, p2, p1, p0}, Lf0/b;-><init>(Lf0/h;Landroid/content/Context;Lf0/i;)V

    .line 75
    .line 76
    iput-object v0, p0, Lcom/nomone/giap/GIAP;->c:Lf0/b;

    .line 77
    .line 78
    new-instance p1, Lh/a;

    .line 79
    .line 80
    const/16 p2, 0x8

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p0, p2}, Lh/a;-><init>(Ljava/lang/Object;I)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0, p1}, Lf0/b;->b(Lh/a;)V

    .line 87
    return-void

    .line 88
    .line 89
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 90
    .line 91
    const-string p2, "Pending purchases for one-time products must be supported."

    .line 92
    .line 93
    .line 94
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 95
    throw p1

    .line 96
    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 98
    .line 99
    const-string p2, "Please provide a valid Context."

    .line 100
    .line 101
    .line 102
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 103
    throw p1
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lp1/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/nomone/giap/GIAP;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp1/a;

    iget-object v2, v1, Lp1/a;->e:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x4

    iput v0, v1, Lp1/a;->f:I

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Lf0/g;Ljava/util/List;)V
    .locals 2

    .line 1
    .line 2
    iget v0, p1, Lf0/g;->b:I

    .line 3
    .line 4
    const-string v1, "IAP"

    .line 5
    .line 6
    if-eqz v0, :cond_3

    .line 7
    const/4 p2, 0x1

    .line 8
    .line 9
    if-eq v0, p2, :cond_2

    .line 10
    const/4 p2, 0x5

    .line 11
    .line 12
    if-eq v0, p2, :cond_1

    .line 13
    const/4 p2, 0x7

    .line 14
    .line 15
    if-eq v0, p2, :cond_0

    .line 16
    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v0, "BillingResult ["

    .line 20
    .line 21
    .line 22
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    iget v0, p1, Lf0/g;->b:I

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v0, "]: "

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    iget-object p1, p1, Lf0/g;->c:Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    goto :goto_1

    .line 43
    .line 44
    :cond_0
    const-string p1, "onPurchasesUpdated: The user already owns this item"

    .line 45
    goto :goto_0

    .line 46
    .line 47
    :cond_1
    const-string p1, "onPurchasesUpdated: Developer error means that Google Play does not recognize the configuration. If you are just getting started, make sure you have configured the application correctly in the Google Play Console. The SKU product ID must match and the APK you are using must be signed with release keys."

    .line 48
    .line 49
    .line 50
    invoke-static {v1, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    goto :goto_2

    .line 52
    .line 53
    :cond_2
    const-string p1, "onPurchasesUpdated: User canceled the purchase"

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-static {v1, p1}, Lo1/m;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_2

    .line 58
    .line 59
    :cond_3
    if-eqz p2, :cond_4

    .line 60
    const/4 p1, 0x0

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, p2, p1}, Lcom/nomone/giap/GIAP;->e(Ljava/util/List;Ljava/util/List;)V

    .line 64
    return-void

    .line 65
    .line 66
    :cond_4
    const-string p1, "Null Purchase List Returned from OK response!"

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-static {v1, p1}, Lo1/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :goto_2
    const/4 p1, 0x0

    .line 71
    .line 72
    iput-boolean p1, p0, Lcom/nomone/giap/GIAP;->f:Z

    .line 73
    return-void
.end method

.method public final d(Lf0/g;Ljava/util/ArrayList;)V
    .locals 5

    .line 1
    .line 2
    iget v0, p1, Lf0/g;->b:I

    .line 3
    .line 4
    iget-object p1, p1, Lf0/g;->c:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, " "

    .line 7
    .line 8
    const-string v2, "onSkuDetailsResponse: "

    .line 9
    .line 10
    const-string v3, "IAP"

    .line 11
    .line 12
    .line 13
    packed-switch v0, :pswitch_data_0

    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    move-result-object p1

    .line 32
    .line 33
    goto/16 :goto_3

    .line 34
    .line 35
    :pswitch_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-static {v3, p1}, Lo1/m;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .line 56
    goto/16 :goto_4

    .line 57
    .line 58
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p1

    .line 75
    .line 76
    .line 77
    invoke-static {v3, p1}, Lo1/m;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    if-eqz p2, :cond_2

    .line 80
    .line 81
    .line 82
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 83
    move-result p1

    .line 84
    .line 85
    if-eqz p1, :cond_0

    .line 86
    goto :goto_1

    .line 87
    .line 88
    .line 89
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result p2

    .line 95
    .line 96
    if-eqz p2, :cond_4

    .line 97
    .line 98
    .line 99
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object p2

    .line 101
    .line 102
    check-cast p2, Lcom/android/billingclient/api/SkuDetails;

    .line 103
    .line 104
    iget-object v0, p2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 105
    .line 106
    const-string v1, "productId"

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 110
    move-result-object v0

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/nomone/giap/GIAP;->b(Ljava/lang/String;)Lp1/a;

    .line 114
    move-result-object v1

    .line 115
    .line 116
    if-eqz v1, :cond_1

    .line 117
    .line 118
    iput-object p2, v1, Lp1/a;->c:Lcom/android/billingclient/api/SkuDetails;

    .line 119
    .line 120
    iget-object p2, p2, Lcom/android/billingclient/api/SkuDetails;->b:Lorg/json/JSONObject;

    .line 121
    .line 122
    const-string v0, "title"

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 126
    .line 127
    const-string v0, "price"

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 131
    .line 132
    const-string v0, "description"

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 136
    const/4 p2, 0x1

    .line 137
    .line 138
    iput-boolean p2, v1, Lp1/a;->a:Z

    .line 139
    goto :goto_0

    .line 140
    .line 141
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    const-string v1, "Unknown sku: "

    .line 144
    .line 145
    .line 146
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    move-result-object p2

    .line 154
    .line 155
    .line 156
    invoke-static {v3, p2}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    goto :goto_0

    .line 158
    .line 159
    :cond_2
    :goto_1
    const-string p1, "onSkuDetailsResponse: Found null or empty SkuDetails. Check to see if the SKUs you requested are correctly published in the Google Play Console."

    .line 160
    goto :goto_2

    .line 161
    .line 162
    :pswitch_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object p1

    .line 179
    .line 180
    .line 181
    :goto_2
    invoke-static {v3, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    goto :goto_4

    .line 183
    .line 184
    :goto_3
    const-string p2, "wtf"

    .line 185
    .line 186
    .line 187
    invoke-static {p2, v3, p1}, Lo1/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .line 189
    if-nez p1, :cond_3

    .line 190
    .line 191
    const-string p1, "null"

    .line 192
    .line 193
    .line 194
    :cond_3
    invoke-static {v3, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :cond_4
    :goto_4
    return-void

    .line 196
    nop

    .line 197
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 16

    .line 1
    .line 2
    move-object/from16 v1, p0

    .line 3
    .line 4
    new-instance v2, Ljava/util/HashSet;

    .line 5
    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 8
    const/4 v3, 0x1

    .line 9
    .line 10
    const-string v4, "IAP"

    .line 11
    .line 12
    if-eqz p1, :cond_c

    .line 13
    .line 14
    .line 15
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object v5

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 21
    .line 22
    if-eqz v0, :cond_d

    .line 23
    .line 24
    .line 25
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 27
    move-object v6, v0

    .line 28
    .line 29
    check-cast v6, Lcom/android/billingclient/api/Purchase;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v6}, Lcom/android/billingclient/api/Purchase;->a()Ljava/util/ArrayList;

    .line 33
    move-result-object v0

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v0

    .line 38
    .line 39
    .line 40
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v7

    .line 42
    .line 43
    if-eqz v7, :cond_2

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v7

    .line 48
    .line 49
    check-cast v7, Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v7}, Lcom/nomone/giap/GIAP;->b(Ljava/lang/String;)Lp1/a;

    .line 53
    move-result-object v8

    .line 54
    .line 55
    if-nez v8, :cond_1

    .line 56
    .line 57
    new-instance v8, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    const-string v9, "Unknown SKU "

    .line 60
    .line 61
    .line 62
    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v7, ". Check to make sure SKU matches SKUS in the Play developer console."

    .line 68
    .line 69
    .line 70
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v7

    .line 75
    .line 76
    .line 77
    invoke-static {v4, v7}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    goto :goto_1

    .line 79
    .line 80
    .line 81
    :cond_1
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    goto :goto_1

    .line 83
    .line 84
    :cond_2
    iget-object v7, v6, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 85
    .line 86
    const-string v0, "purchaseState"

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 90
    move-result v0

    .line 91
    const/4 v8, 0x4

    .line 92
    const/4 v9, 0x2

    .line 93
    .line 94
    if-eq v0, v8, :cond_3

    .line 95
    move v0, v3

    .line 96
    goto :goto_2

    .line 97
    :cond_3
    move v0, v9

    .line 98
    .line 99
    :goto_2
    if-ne v0, v3, :cond_b

    .line 100
    .line 101
    iget-object v0, v6, Lcom/android/billingclient/api/Purchase;->a:Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 105
    move-result v8

    .line 106
    .line 107
    if-nez v8, :cond_5

    .line 108
    .line 109
    const-string v8, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA0wvk/CE/j+KyOYvhpMIebnNdifyRZEeRvAsKrybliBKgOUCZYf22DUuOahLY/xIIMhpTBtZ0n9IHG0m1/4OSyhgGECuITvMx3vzNxhV+YB4KwZ/DR0K0GCHrtgUx/jyBX8+LhLKQZH56PSf+h3TEXP/QZfsVOugaGtZL89UtYQaQC4+rY8rxGIbm9gtwdgIohF10tEgeccZKpbB9gmD/6JJzNXzBapNhxuG8lw3NIhfSwR1DrPqfpv++VJ0SpKMxHJN5OTq5x3E8/tFwpCszhgr2Cg5sVPMuZz01KhoSQc/XySVj3EteIoECHywn6S18iyyjhB5psJPG8uFhWZNhUQIDAQAB"

    .line 110
    .line 111
    .line 112
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 113
    move-result v8

    .line 114
    .line 115
    if-nez v8, :cond_5

    .line 116
    .line 117
    iget-object v8, v6, Lcom/android/billingclient/api/Purchase;->b:Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 121
    move-result v10

    .line 122
    .line 123
    if-eqz v10, :cond_4

    .line 124
    goto :goto_3

    .line 125
    .line 126
    .line 127
    :cond_4
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/internal/play_billing/i0;->F()Ljava/security/PublicKey;

    .line 128
    move-result-object v10

    .line 129
    .line 130
    .line 131
    invoke-static {v10, v0, v8}, Lcom/google/android/gms/internal/play_billing/i0;->p0(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 132
    move-result-object v0

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_5

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .line 140
    new-instance v8, Ljava/lang/StringBuilder;

    .line 141
    .line 142
    const-string v10, "Error generating PublicKey from encoded key: "

    .line 143
    .line 144
    .line 145
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 149
    move-result-object v0

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 157
    .line 158
    .line 159
    invoke-static {v4, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    goto :goto_4

    .line 161
    .line 162
    :cond_5
    :goto_3
    const-string v0, "Purchase verification failed: missing data."

    .line 163
    .line 164
    .line 165
    invoke-static {v4, v0}, Lo1/m;->g(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_4
    const/4 v0, 0x0

    .line 167
    .line 168
    :goto_5
    if-nez v0, :cond_6

    .line 169
    .line 170
    const-string v0, "Invalid signature on purchase. Check to make sure your public key is correct."

    .line 171
    .line 172
    .line 173
    invoke-static {v4, v0}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    goto/16 :goto_0

    .line 176
    .line 177
    .line 178
    :cond_6
    invoke-virtual {v1, v6}, Lcom/nomone/giap/GIAP;->h(Lcom/android/billingclient/api/Purchase;)V

    .line 179
    .line 180
    const-string v0, "acknowledged"

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 184
    move-result v0

    .line 185
    .line 186
    if-nez v0, :cond_0

    .line 187
    .line 188
    const-string v0, "purchaseToken"

    .line 189
    .line 190
    .line 191
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 193
    .line 194
    const-string v8, "token"

    .line 195
    .line 196
    .line 197
    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 198
    move-result-object v0

    .line 199
    .line 200
    if-eqz v0, :cond_a

    .line 201
    .line 202
    new-instance v7, Lf0/a;

    .line 203
    .line 204
    .line 205
    invoke-direct {v7}, Lf0/a;-><init>()V

    .line 206
    .line 207
    iput-object v0, v7, Lf0/a;->a:Ljava/lang/String;

    .line 208
    .line 209
    new-instance v0, Lo0/j;

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v9, v1, v6}, Lo0/j;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 213
    .line 214
    iget-object v6, v1, Lcom/nomone/giap/GIAP;->c:Lf0/b;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v6}, Lf0/b;->a()Z

    .line 218
    move-result v8

    .line 219
    const/4 v15, 0x3

    .line 220
    .line 221
    if-nez v8, :cond_7

    .line 222
    .line 223
    sget-object v7, Lf0/t;->k:Lf0/g;

    .line 224
    :goto_6
    move v8, v15

    .line 225
    goto :goto_7

    .line 226
    .line 227
    :cond_7
    iget-object v8, v7, Lf0/a;->a:Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 231
    move-result v8

    .line 232
    .line 233
    if-eqz v8, :cond_8

    .line 234
    .line 235
    sget v7, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 236
    .line 237
    sget-object v7, Lf0/t;->h:Lf0/g;

    .line 238
    .line 239
    const/16 v9, 0x1a

    .line 240
    goto :goto_6

    .line 241
    .line 242
    :cond_8
    iget-boolean v8, v6, Lf0/b;->l:Z

    .line 243
    .line 244
    if-nez v8, :cond_9

    .line 245
    .line 246
    sget-object v7, Lf0/t;->b:Lf0/g;

    .line 247
    .line 248
    const/16 v9, 0x1b

    .line 249
    goto :goto_6

    .line 250
    .line 251
    :cond_9
    new-instance v11, Lf0/o;

    .line 252
    .line 253
    .line 254
    invoke-direct {v11, v6, v7, v0, v9}, Lf0/o;-><init>(Lf0/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 255
    .line 256
    const-wide/16 v12, 0x7530

    .line 257
    .line 258
    new-instance v14, Lf0/m;

    .line 259
    .line 260
    .line 261
    invoke-direct {v14, v15, v6, v0}, Lf0/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v6}, Lf0/b;->c()Landroid/os/Handler;

    .line 265
    move-result-object v7

    .line 266
    move-object v10, v6

    .line 267
    move v8, v15

    .line 268
    move-object v15, v7

    .line 269
    .line 270
    .line 271
    invoke-virtual/range {v10 .. v15}, Lf0/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 272
    move-result-object v7

    .line 273
    .line 274
    if-nez v7, :cond_0

    .line 275
    .line 276
    .line 277
    invoke-virtual {v6}, Lf0/b;->e()Lf0/g;

    .line 278
    move-result-object v7

    .line 279
    .line 280
    const/16 v9, 0x19

    .line 281
    .line 282
    .line 283
    :goto_7
    invoke-static {v9, v8, v7}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 284
    move-result-object v8

    .line 285
    .line 286
    .line 287
    invoke-virtual {v6, v8}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v0, v7}, Lo0/j;->a(Lf0/g;)V

    .line 291
    .line 292
    goto/16 :goto_0

    .line 293
    .line 294
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 295
    .line 296
    const-string v2, "Purchase token must be set"

    .line 297
    .line 298
    .line 299
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 300
    throw v0

    .line 301
    .line 302
    .line 303
    :cond_b
    invoke-virtual {v1, v6}, Lcom/nomone/giap/GIAP;->h(Lcom/android/billingclient/api/Purchase;)V

    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_c
    const-string v0, "Empty purchase list."

    .line 308
    .line 309
    .line 310
    invoke-static {v4, v0}, Lo1/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    .line 312
    :cond_d
    if-eqz p2, :cond_f

    .line 313
    .line 314
    .line 315
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 316
    move-result-object v0

    .line 317
    .line 318
    .line 319
    :cond_e
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    move-result v4

    .line 321
    .line 322
    if-eqz v4, :cond_f

    .line 323
    .line 324
    .line 325
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    move-result-object v4

    .line 327
    .line 328
    check-cast v4, Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 332
    move-result v5

    .line 333
    .line 334
    if-nez v5, :cond_e

    .line 335
    .line 336
    .line 337
    invoke-virtual {v1, v4, v3}, Lcom/nomone/giap/GIAP;->g(Ljava/lang/String;I)V

    .line 338
    goto :goto_8

    .line 339
    :cond_f
    return-void
.end method

.method public final f()V
    .locals 9

    .line 1
    .line 2
    iget-boolean v0, p0, Lcom/nomone/giap/GIAP;->e:Z

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    return-void

    .line 6
    .line 7
    :cond_0
    new-instance v0, Lh0/b;

    .line 8
    .line 9
    const/16 v1, 0x9

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, p0, v1}, Lh0/b;-><init>(Ljava/lang/Object;I)V

    .line 13
    .line 14
    iget-object v8, p0, Lcom/nomone/giap/GIAP;->c:Lf0/b;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v8}, Lf0/b;->a()Z

    .line 18
    move-result v2

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    sget-object v2, Lf0/t;->k:Lf0/g;

    .line 23
    const/4 v3, 0x2

    .line 24
    goto :goto_0

    .line 25
    .line 26
    :cond_1
    const-string v2, "inapp"

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v3

    .line 31
    .line 32
    if-eqz v3, :cond_2

    .line 33
    .line 34
    sget v2, Lcom/google/android/gms/internal/play_billing/s;->a:I

    .line 35
    .line 36
    sget-object v2, Lf0/t;->f:Lf0/g;

    .line 37
    .line 38
    const/16 v3, 0x32

    .line 39
    goto :goto_0

    .line 40
    .line 41
    :cond_2
    new-instance v3, Lf0/o;

    .line 42
    const/4 v4, 0x0

    .line 43
    .line 44
    .line 45
    invoke-direct {v3, v8, v2, v0, v4}, Lf0/o;-><init>(Lf0/b;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 46
    .line 47
    const-wide/16 v4, 0x7530

    .line 48
    .line 49
    new-instance v6, Lf0/m;

    .line 50
    const/4 v2, 0x1

    .line 51
    .line 52
    .line 53
    invoke-direct {v6, v2, v8, v0}, Lf0/m;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Lf0/b;->c()Landroid/os/Handler;

    .line 57
    move-result-object v7

    .line 58
    move-object v2, v8

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {v2 .. v7}, Lf0/b;->g(Ljava/util/concurrent/Callable;JLjava/lang/Runnable;Landroid/os/Handler;)Ljava/util/concurrent/Future;

    .line 62
    move-result-object v2

    .line 63
    .line 64
    if-nez v2, :cond_3

    .line 65
    .line 66
    .line 67
    invoke-virtual {v8}, Lf0/b;->e()Lf0/g;

    .line 68
    move-result-object v2

    .line 69
    .line 70
    const/16 v3, 0x19

    .line 71
    .line 72
    .line 73
    :goto_0
    invoke-static {v3, v1, v2}, Lf0/r;->a(IILf0/g;)Lcom/google/android/gms/internal/play_billing/j2;

    .line 74
    move-result-object v1

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8, v1}, Lf0/b;->h(Lcom/google/android/gms/internal/play_billing/j2;)V

    .line 78
    .line 79
    sget-object v1, Lcom/google/android/gms/internal/play_billing/f;->b:Lcom/google/android/gms/internal/play_billing/d;

    .line 80
    .line 81
    sget-object v1, Lcom/google/android/gms/internal/play_billing/j;->e:Lcom/google/android/gms/internal/play_billing/j;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v2, v1}, Lh0/b;->f(Lf0/g;Ljava/util/List;)V

    .line 85
    .line 86
    :cond_3
    const-string v0, "IAP"

    .line 87
    .line 88
    const-string v1, "Refreshing purchases started."

    .line 89
    .line 90
    .line 91
    invoke-static {v0, v1}, Lo1/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public final g(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/nomone/giap/GIAP;->b(Ljava/lang/String;)Lp1/a;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unknown SKU "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ". Check to make sure SKU matches SKUS in the Play developer console."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "IAP"

    invoke-static {p2, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iput p2, v0, Lp1/a;->f:I

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    const/4 p2, 0x0

    iput-object p2, v0, Lp1/a;->d:Lcom/android/billingclient/api/Purchase;

    :cond_1
    iput-boolean p1, v0, Lp1/a;->b:Z

    :goto_0
    return-void
.end method

.method public final h(Lcom/android/billingclient/api/Purchase;)V
    .locals 10

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->a()Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 9
    .line 10
    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 13
    .line 14
    if-eqz v1, :cond_7

    .line 15
    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 19
    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/nomone/giap/GIAP;->b(Ljava/lang/String;)Lp1/a;

    .line 24
    move-result-object v2

    .line 25
    .line 26
    const-string v3, "IAP"

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v4, "Unknown SKU "

    .line 33
    .line 34
    .line 35
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    const-string v1, ". Check to make sure SKU matches SKUS in the Play developer console."

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object v1

    .line 48
    .line 49
    .line 50
    invoke-static {v3, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 52
    .line 53
    :cond_0
    iget-object v1, p1, Lcom/android/billingclient/api/Purchase;->c:Lorg/json/JSONObject;

    .line 54
    .line 55
    const-string v4, "purchaseState"

    .line 56
    const/4 v5, 0x1

    .line 57
    .line 58
    .line 59
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 60
    move-result v6

    .line 61
    const/4 v7, 0x4

    .line 62
    const/4 v8, 0x2

    .line 63
    .line 64
    if-eq v6, v7, :cond_1

    .line 65
    move v6, v5

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move v6, v8

    .line 68
    .line 69
    :goto_1
    if-eqz v6, :cond_6

    .line 70
    .line 71
    if-eq v6, v5, :cond_4

    .line 72
    .line 73
    if-eq v6, v8, :cond_3

    .line 74
    .line 75
    new-instance v6, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    const-string v9, "Purchase in unknown state: "

    .line 78
    .line 79
    .line 80
    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 84
    move-result v1

    .line 85
    .line 86
    if-eq v1, v7, :cond_2

    .line 87
    move v8, v5

    .line 88
    .line 89
    .line 90
    :cond_2
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    move-result-object v1

    .line 95
    .line 96
    .line 97
    invoke-static {v3, v1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    goto :goto_3

    .line 99
    :cond_3
    move v7, v8

    .line 100
    goto :goto_2

    .line 101
    .line 102
    :cond_4
    const-string v3, "acknowledged"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    .line 106
    move-result v1

    .line 107
    .line 108
    if-eqz v1, :cond_5

    .line 109
    goto :goto_2

    .line 110
    :cond_5
    const/4 v7, 0x3

    .line 111
    goto :goto_2

    .line 112
    :cond_6
    move v7, v5

    .line 113
    .line 114
    :goto_2
    iput v7, v2, Lp1/a;->f:I

    .line 115
    .line 116
    :goto_3
    iput-object p1, v2, Lp1/a;->d:Lcom/android/billingclient/api/Purchase;

    .line 117
    .line 118
    iput-boolean v5, v2, Lp1/a;->b:Z

    .line 119
    goto :goto_0

    .line 120
    :cond_7
    return-void
.end method

.method public resume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/s;
        value = .enum Landroidx/lifecycle/h;->ON_RESUME:Landroidx/lifecycle/h;
    .end annotation

    const-string v0, "IAP"

    const-string v1, "ON_RESUME"

    invoke-static {v0, v1}, Lo1/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/nomone/giap/GIAP;->f:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/nomone/giap/GIAP;->f()V

    :cond_0
    return-void
.end method
