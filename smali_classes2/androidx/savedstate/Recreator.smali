.class final Landroidx/savedstate/Recreator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/l;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation


# instance fields
.field public final a:Landroidx/savedstate/f;


# direct methods
.method public constructor <init>(Landroidx/savedstate/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/savedstate/Recreator;->a:Landroidx/savedstate/f;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/lifecycle/n;Landroidx/lifecycle/h;)V
    .locals 4

    .line 1
    sget-object v0, Landroidx/lifecycle/h;->ON_CREATE:Landroidx/lifecycle/h;

    .line 2
    .line 3
    if-ne p2, v0, :cond_6

    .line 4
    .line 5
    invoke-interface {p1}, Landroidx/lifecycle/n;->c()Landroidx/lifecycle/p;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1, p0}, Landroidx/lifecycle/p;->d0(Landroidx/lifecycle/m;)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroidx/savedstate/Recreator;->a:Landroidx/savedstate/f;

    .line 13
    .line 14
    invoke-interface {p1}, Landroidx/savedstate/f;->a()Landroidx/savedstate/d;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-boolean v0, p2, Landroidx/savedstate/d;->c:Z

    .line 19
    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    iget-object v0, p2, Landroidx/savedstate/d;->b:Landroid/os/Bundle;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    const-string v2, "androidx.savedstate.Restarter"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget-object v3, p2, Landroidx/savedstate/d;->b:Landroid/os/Bundle;

    .line 34
    .line 35
    invoke-virtual {v3, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v2, p2, Landroidx/savedstate/d;->b:Landroid/os/Bundle;

    .line 39
    .line 40
    invoke-virtual {v2}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v2

    .line 44
    if-eqz v2, :cond_0

    .line 45
    .line 46
    iput-object v1, p2, Landroidx/savedstate/d;->b:Landroid/os/Bundle;

    .line 47
    .line 48
    :cond_0
    move-object v1, v0

    .line 49
    :cond_1
    if-nez v1, :cond_2

    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    const-string p2, "classes_to_restore"

    .line 53
    .line 54
    invoke-virtual {v1, p2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    if-eqz p2, :cond_4

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_3

    .line 69
    .line 70
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Ljava/lang/String;

    .line 75
    .line 76
    :try_start_0
    const-class v1, Landroidx/savedstate/Recreator;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    const/4 v2, 0x0

    .line 83
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const-class v3, Landroidx/savedstate/c;

    .line 88
    .line 89
    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 90
    .line 91
    .line 92
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 93
    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    .line 94
    .line 95
    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 96
    .line 97
    .line 98
    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    const/4 v3, 0x1

    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 101
    .line 102
    .line 103
    :try_start_2
    new-array v2, v2, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    check-cast v1, Landroidx/savedstate/c;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 110
    .line 111
    check-cast v1, Landroidx/lifecycle/y;

    .line 112
    .line 113
    invoke-virtual {v1, p1}, Landroidx/lifecycle/y;->a(Landroidx/savedstate/f;)V

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catch_0
    move-exception p1

    .line 118
    new-instance p2, Ljava/lang/RuntimeException;

    .line 119
    .line 120
    const-string v1, "Failed to instantiate "

    .line 121
    .line 122
    invoke-static {v1, v0}, La1/b;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 127
    .line 128
    .line 129
    throw p2

    .line 130
    :catch_1
    move-exception p1

    .line 131
    new-instance p2, Ljava/lang/IllegalStateException;

    .line 132
    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v2, "Class"

    .line 136
    .line 137
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v1, " must have default constructor in order to be automatically recreated"

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    .line 158
    .line 159
    throw p2

    .line 160
    :catch_2
    move-exception p1

    .line 161
    new-instance p2, Ljava/lang/RuntimeException;

    .line 162
    .line 163
    const-string v1, "Class "

    .line 164
    .line 165
    const-string v2, " wasn\'t found"

    .line 166
    .line 167
    invoke-static {v1, v0, v2}, La1/b;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    .line 173
    .line 174
    throw p2

    .line 175
    :cond_3
    return-void

    .line 176
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 177
    .line 178
    const-string p2, "Bundle with restored state for the component \"androidx.savedstate.Restarter\" must contain list of strings by the key \"classes_to_restore\""

    .line 179
    .line 180
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    throw p1

    .line 184
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 185
    .line 186
    const-string p2, "You can consumeRestoredStateForKey only after super.onCreate of corresponding component"

    .line 187
    .line 188
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    throw p1

    .line 192
    :cond_6
    new-instance p1, Ljava/lang/AssertionError;

    .line 193
    .line 194
    const-string p2, "Next event must be ON_CREATE"

    .line 195
    .line 196
    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 197
    .line 198
    .line 199
    throw p1
.end method
