.class public final synthetic Lo1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 1
    iput p4, p0, Lo1/v;->f:I

    .line 2
    .line 3
    iput-object p1, p0, Lo1/v;->i:Ljava/lang/Object;

    .line 4
    .line 5
    iput p2, p0, Lo1/v;->g:I

    .line 6
    .line 7
    iput p3, p0, Lo1/v;->h:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget v0, p0, Lo1/v;->f:I

    .line 2
    .line 3
    iget v1, p0, Lo1/v;->h:I

    .line 4
    .line 5
    iget v2, p0, Lo1/v;->g:I

    .line 6
    .line 7
    iget-object v3, p0, Lo1/v;->i:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :pswitch_0
    check-cast v3, Lo1/w;

    .line 15
    .line 16
    iget-object v0, v3, Lo1/w;->a:Lcom/nomone/browser_module/OpenGLView;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/nomone/browser_module/OpenGLView;->o:Lo1/u;

    .line 19
    .line 20
    check-cast v0, Lq1/e;

    .line 21
    .line 22
    iget-object v0, v0, Lq1/e;->k:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Lq1/f;

    .line 25
    .line 26
    iput v2, v0, Lq1/f;->y:I

    .line 27
    .line 28
    iput v1, v0, Lq1/f;->z:I

    .line 29
    .line 30
    iget-object v1, v0, Lq1/f;->b:Lcom/nomone/vr_desktop/LaunchActivity;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const/4 v3, 0x1

    .line 41
    const/4 v4, 0x0

    .line 42
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    move-result-object v5

    .line 46
    const-string v6, "SEM_DESKTOP_MODE_ENABLED"

    .line 47
    .line 48
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 49
    .line 50
    .line 51
    move-result-object v6

    .line 52
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const-string v7, "semDesktopModeEnabled"

    .line 57
    .line 58
    invoke-virtual {v5, v7}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    .line 63
    .line 64
    .line 65
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    if-ne v6, v2, :cond_0

    .line 67
    .line 68
    move v2, v3

    .line 69
    goto :goto_0

    .line 70
    :catch_0
    :cond_0
    move v2, v4

    .line 71
    :goto_0
    iput-boolean v2, v0, Lq1/f;->B:Z

    .line 72
    .line 73
    iget-boolean v2, v0, Lq1/f;->A:Z

    .line 74
    .line 75
    const-string v5, "window"

    .line 76
    .line 77
    invoke-virtual {v1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Landroid/view/WindowManager;

    .line 82
    .line 83
    new-instance v5, Landroid/graphics/Point;

    .line 84
    .line 85
    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1, v5}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 93
    .line 94
    .line 95
    sget-object v1, Lcom/nomone/vr_desktop/Applications/SettingsApplication;->g:Ljava/lang/String;

    .line 96
    .line 97
    const-string v1, "Settings_General_IgnoreCutouts"

    .line 98
    .line 99
    invoke-static {v1, v3}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-nez v1, :cond_1

    .line 104
    .line 105
    const v1, 0x3dcccccd    # 0.1f

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_1
    const v1, 0x3d4ccccd    # 0.05f

    .line 110
    .line 111
    .line 112
    :goto_1
    iget v6, v0, Lq1/f;->y:I

    .line 113
    .line 114
    int-to-float v6, v6

    .line 115
    iget v7, v5, Landroid/graphics/Point;->x:I

    .line 116
    .line 117
    int-to-float v7, v7

    .line 118
    div-float/2addr v6, v7

    .line 119
    const/high16 v7, 0x3f800000    # 1.0f

    .line 120
    .line 121
    sub-float v6, v7, v6

    .line 122
    .line 123
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 124
    .line 125
    .line 126
    move-result v6

    .line 127
    iget v8, v0, Lq1/f;->z:I

    .line 128
    .line 129
    int-to-float v8, v8

    .line 130
    iget v5, v5, Landroid/graphics/Point;->y:I

    .line 131
    .line 132
    int-to-float v5, v5

    .line 133
    div-float/2addr v8, v5

    .line 134
    sub-float/2addr v7, v8

    .line 135
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    cmpg-float v6, v6, v1

    .line 140
    .line 141
    if-gez v6, :cond_2

    .line 142
    .line 143
    cmpg-float v1, v5, v1

    .line 144
    .line 145
    if-gez v1, :cond_2

    .line 146
    .line 147
    move v1, v3

    .line 148
    goto :goto_2

    .line 149
    :cond_2
    move v1, v4

    .line 150
    :goto_2
    iput-boolean v1, v0, Lq1/f;->A:Z

    .line 151
    .line 152
    if-eq v1, v2, :cond_3

    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_3
    move v3, v4

    .line 156
    :goto_3
    if-eqz v3, :cond_4

    .line 157
    .line 158
    const-string v2, "DesktopMode_Fullscreen"

    .line 159
    .line 160
    invoke-static {v2, v1}, Lo1/y;->e(Ljava/lang/String;Z)V

    .line 161
    .line 162
    .line 163
    :cond_4
    iget-object v1, v0, Lq1/f;->F:Lu1/i;

    .line 164
    .line 165
    iget-boolean v0, v0, Lq1/f;->B:Z

    .line 166
    .line 167
    const-string v2, "Settings_General_ReleaseMouse"

    .line 168
    .line 169
    invoke-static {v2, v0}, Lo1/y;->a(Ljava/lang/String;Z)Z

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    iput-boolean v0, v1, Lu1/i;->D:Z

    .line 174
    .line 175
    return-void

    .line 176
    :goto_4
    check-cast v3, Ld3/p0;

    .line 177
    .line 178
    iput v2, v3, Ld3/p0;->k:I

    .line 179
    .line 180
    iput v1, v3, Ld3/p0;->l:I

    .line 181
    .line 182
    invoke-virtual {v3}, Ld3/p0;->c()V

    .line 183
    .line 184
    .line 185
    return-void

    .line 186
    nop

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
