.class Landroidx/activity/result/ActivityResultRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroidx/activity/result/b;

.field public final synthetic c:Lc/a;

.field public final synthetic d:Landroidx/activity/result/f;


# direct methods
.method public constructor <init>(Landroidx/activity/result/f;Ljava/lang/String;Lf0/u;Lc/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/f;

    iput-object p2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    iput-object p3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;

    iput-object p4, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lc/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V
    .locals 5

    .line 1
    sget-object p1, Landroidx/lifecycle/h;->ON_START:Landroidx/lifecycle/h;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Landroidx/activity/result/ActivityResultRegistry$1;->a:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v1, p0, Landroidx/activity/result/ActivityResultRegistry$1;->d:Landroidx/activity/result/f;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, v1, Landroidx/activity/result/f;->f:Ljava/util/HashMap;

    .line 14
    .line 15
    new-instance p2, Landroidx/activity/result/d;

    .line 16
    .line 17
    iget-object v2, p0, Landroidx/activity/result/ActivityResultRegistry$1;->b:Landroidx/activity/result/b;

    .line 18
    .line 19
    iget-object v3, p0, Landroidx/activity/result/ActivityResultRegistry$1;->c:Lc/a;

    .line 20
    .line 21
    invoke-direct {p2, v2, v3}, Landroidx/activity/result/d;-><init>(Landroidx/activity/result/b;Lc/a;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object p1, v1, Landroidx/activity/result/f;->g:Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    if-eqz p2, :cond_0

    .line 34
    .line 35
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-object p1, v2

    .line 43
    check-cast p1, Lf0/u;

    .line 44
    .line 45
    invoke-virtual {p1, p2}, Lf0/u;->a(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    :cond_0
    iget-object p1, v1, Landroidx/activity/result/f;->h:Landroid/os/Bundle;

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    check-cast p2, Landroidx/activity/result/a;

    .line 55
    .line 56
    if-eqz p2, :cond_7

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    .line 63
    .line 64
    new-instance p1, Landroidx/activity/result/a;

    .line 65
    .line 66
    iget-object v0, p2, Landroidx/activity/result/a;->b:Landroid/content/Intent;

    .line 67
    .line 68
    iget p2, p2, Landroidx/activity/result/a;->a:I

    .line 69
    .line 70
    invoke-direct {p1, v0, p2}, Landroidx/activity/result/a;-><init>(Landroid/content/Intent;I)V

    .line 71
    .line 72
    .line 73
    check-cast v2, Lf0/u;

    .line 74
    .line 75
    invoke-virtual {v2, p1}, Lf0/u;->a(Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_1

    .line 79
    .line 80
    :cond_1
    sget-object p1, Landroidx/lifecycle/h;->ON_STOP:Landroidx/lifecycle/h;

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-eqz p1, :cond_2

    .line 87
    .line 88
    iget-object p1, v1, Landroidx/activity/result/f;->f:Ljava/util/HashMap;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    sget-object p1, Landroidx/lifecycle/h;->ON_DESTROY:Landroidx/lifecycle/h;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result p1

    .line 100
    if-eqz p1, :cond_7

    .line 101
    .line 102
    iget-object p1, v1, Landroidx/activity/result/f;->e:Ljava/util/ArrayList;

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    if-nez p1, :cond_3

    .line 109
    .line 110
    iget-object p1, v1, Landroidx/activity/result/f;->c:Ljava/util/HashMap;

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ljava/lang/Integer;

    .line 117
    .line 118
    if-eqz p1, :cond_3

    .line 119
    .line 120
    iget-object p2, v1, Landroidx/activity/result/f;->b:Ljava/util/HashMap;

    .line 121
    .line 122
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object p1, v1, Landroidx/activity/result/f;->f:Ljava/util/HashMap;

    .line 126
    .line 127
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    iget-object p1, v1, Landroidx/activity/result/f;->g:Ljava/util/HashMap;

    .line 131
    .line 132
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result p2

    .line 136
    if-eqz p2, :cond_4

    .line 137
    .line 138
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .line 147
    .line 148
    :cond_4
    iget-object p1, v1, Landroidx/activity/result/f;->h:Landroid/os/Bundle;

    .line 149
    .line 150
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    if-eqz p2, :cond_5

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 157
    .line 158
    .line 159
    move-result-object p2

    .line 160
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    :cond_5
    iget-object p1, v1, Landroidx/activity/result/f;->d:Ljava/util/HashMap;

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p2

    .line 172
    check-cast p2, Landroidx/activity/result/e;

    .line 173
    .line 174
    if-eqz p2, :cond_7

    .line 175
    .line 176
    iget-object v1, p2, Landroidx/activity/result/e;->b:Ljava/util/ArrayList;

    .line 177
    .line 178
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 183
    .line 184
    .line 185
    move-result v3

    .line 186
    if-eqz v3, :cond_6

    .line 187
    .line 188
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object v3

    .line 192
    check-cast v3, Landroidx/lifecycle/l;

    .line 193
    .line 194
    iget-object v4, p2, Landroidx/activity/result/e;->a:Lcom/google/android/gms/internal/play_billing/i0;

    .line 195
    .line 196
    invoke-virtual {v4, v3}, Lcom/google/android/gms/internal/play_billing/i0;->d0(Landroidx/lifecycle/m;)V

    .line 197
    .line 198
    .line 199
    goto :goto_0

    .line 200
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    :cond_7
    :goto_1
    return-void
.end method
