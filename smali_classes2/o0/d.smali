.class public final Lo0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo0/p;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lp0/d;

.field public final c:Lo0/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lp0/d;Lo0/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lo0/d;->b:Lp0/d;

    iput-object p3, p0, Lo0/d;->c:Lo0/b;

    return-void
.end method


# virtual methods
.method public final a(Lj0/k;IZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    new-instance v3, Landroid/content/ComponentName;

    .line 8
    .line 9
    iget-object v4, v0, Lo0/d;->a:Landroid/content/Context;

    .line 10
    .line 11
    const-class v5, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;

    .line 12
    .line 13
    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 14
    .line 15
    .line 16
    const-string v5, "jobscheduler"

    .line 17
    .line 18
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Landroid/app/job/JobScheduler;

    .line 23
    .line 24
    new-instance v6, Ljava/util/zip/Adler32;

    .line 25
    .line 26
    invoke-direct {v6}, Ljava/util/zip/Adler32;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v7, "UTF-8"

    .line 34
    .line 35
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    invoke-virtual {v6, v4}, Ljava/util/zip/Adler32;->update([B)V

    .line 44
    .line 45
    .line 46
    iget-object v4, v1, Lj0/k;->a:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v7}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    .line 49
    .line 50
    .line 51
    move-result-object v7

    .line 52
    invoke-virtual {v4, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    invoke-virtual {v6, v4}, Ljava/util/zip/Adler32;->update([B)V

    .line 57
    .line 58
    .line 59
    const/4 v4, 0x4

    .line 60
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 61
    .line 62
    .line 63
    move-result-object v7

    .line 64
    iget-object v8, v1, Lj0/k;->c:Lg0/c;

    .line 65
    .line 66
    invoke-static {v8}, Ls0/a;->a(Lg0/c;)I

    .line 67
    .line 68
    .line 69
    move-result v9

    .line 70
    invoke-virtual {v7, v9}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 71
    .line 72
    .line 73
    move-result-object v7

    .line 74
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    .line 75
    .line 76
    .line 77
    move-result-object v7

    .line 78
    invoke-virtual {v6, v7}, Ljava/util/zip/Adler32;->update([B)V

    .line 79
    .line 80
    .line 81
    iget-object v7, v1, Lj0/k;->b:[B

    .line 82
    .line 83
    if-eqz v7, :cond_0

    .line 84
    .line 85
    invoke-virtual {v6, v7}, Ljava/util/zip/Adler32;->update([B)V

    .line 86
    .line 87
    .line 88
    :cond_0
    invoke-virtual {v6}, Ljava/util/zip/Adler32;->getValue()J

    .line 89
    .line 90
    .line 91
    move-result-wide v9

    .line 92
    long-to-int v6, v9

    .line 93
    const-string v9, "JobInfoScheduler"

    .line 94
    .line 95
    const-string v11, "attemptNumber"

    .line 96
    .line 97
    const/4 v12, 0x1

    .line 98
    if-nez p3, :cond_3

    .line 99
    .line 100
    invoke-virtual {v5}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v13

    .line 104
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 105
    .line 106
    .line 107
    move-result-object v13

    .line 108
    :cond_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 109
    .line 110
    .line 111
    move-result v14

    .line 112
    if-eqz v14, :cond_2

    .line 113
    .line 114
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v14

    .line 118
    check-cast v14, Landroid/app/job/JobInfo;

    .line 119
    .line 120
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    .line 121
    .line 122
    .line 123
    move-result-object v15

    .line 124
    invoke-virtual {v15, v11}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 125
    .line 126
    .line 127
    move-result v15

    .line 128
    invoke-virtual {v14}, Landroid/app/job/JobInfo;->getId()I

    .line 129
    .line 130
    .line 131
    move-result v14

    .line 132
    if-ne v14, v6, :cond_1

    .line 133
    .line 134
    if-lt v15, v2, :cond_2

    .line 135
    .line 136
    move v13, v12

    .line 137
    goto :goto_0

    .line 138
    :cond_2
    const/4 v13, 0x0

    .line 139
    :goto_0
    if-eqz v13, :cond_3

    .line 140
    .line 141
    const-string v2, "Upload for context %s is already scheduled. Returning..."

    .line 142
    .line 143
    invoke-static {v9, v2, v1}, Lcom/google/android/gms/internal/play_billing/i0;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    .line 145
    .line 146
    return-void

    .line 147
    :cond_3
    iget-object v13, v0, Lo0/d;->b:Lp0/d;

    .line 148
    .line 149
    check-cast v13, Lp0/k;

    .line 150
    .line 151
    invoke-virtual {v13}, Lp0/k;->a()Landroid/database/sqlite/SQLiteDatabase;

    .line 152
    .line 153
    .line 154
    move-result-object v13

    .line 155
    invoke-static {v8}, Ls0/a;->a(Lg0/c;)I

    .line 156
    .line 157
    .line 158
    move-result v14

    .line 159
    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v14

    .line 163
    iget-object v15, v1, Lj0/k;->a:Ljava/lang/String;

    .line 164
    .line 165
    filled-new-array {v15, v14}, [Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v14

    .line 169
    const-string v10, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 170
    .line 171
    invoke-virtual {v13, v10, v14}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 172
    .line 173
    .line 174
    move-result-object v10

    .line 175
    new-instance v13, Lh0/c;

    .line 176
    .line 177
    invoke-direct {v13, v4}, Lh0/c;-><init>(I)V

    .line 178
    .line 179
    .line 180
    invoke-static {v10, v13}, Lp0/k;->g(Landroid/database/Cursor;Lp0/i;)Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Ljava/lang/Long;

    .line 185
    .line 186
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 187
    .line 188
    .line 189
    move-result-wide v13

    .line 190
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    .line 191
    .line 192
    invoke-direct {v4, v6, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 193
    .line 194
    .line 195
    iget-object v3, v0, Lo0/d;->c:Lo0/b;

    .line 196
    .line 197
    move-object/from16 v16, v9

    .line 198
    .line 199
    invoke-virtual {v3, v8, v13, v14, v2}, Lo0/b;->a(Lg0/c;JI)J

    .line 200
    .line 201
    .line 202
    move-result-wide v9

    .line 203
    invoke-virtual {v4, v9, v10}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    .line 204
    .line 205
    .line 206
    iget-object v9, v3, Lo0/b;->b:Ljava/util/Map;

    .line 207
    .line 208
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v9

    .line 212
    check-cast v9, Lo0/c;

    .line 213
    .line 214
    iget-object v9, v9, Lo0/c;->c:Ljava/util/Set;

    .line 215
    .line 216
    sget-object v10, Lo0/f;->a:Lo0/f;

    .line 217
    .line 218
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    move-result v10

    .line 222
    if-eqz v10, :cond_4

    .line 223
    .line 224
    const/4 v10, 0x2

    .line 225
    invoke-virtual {v4, v10}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 226
    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_4
    invoke-virtual {v4, v12}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    .line 230
    .line 231
    .line 232
    :goto_1
    sget-object v10, Lo0/f;->c:Lo0/f;

    .line 233
    .line 234
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 235
    .line 236
    .line 237
    move-result v10

    .line 238
    if-eqz v10, :cond_5

    .line 239
    .line 240
    invoke-virtual {v4, v12}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    .line 241
    .line 242
    .line 243
    :cond_5
    sget-object v10, Lo0/f;->b:Lo0/f;

    .line 244
    .line 245
    invoke-interface {v9, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 246
    .line 247
    .line 248
    move-result v9

    .line 249
    if-eqz v9, :cond_6

    .line 250
    .line 251
    invoke-virtual {v4, v12}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    .line 252
    .line 253
    .line 254
    :cond_6
    new-instance v9, Landroid/os/PersistableBundle;

    .line 255
    .line 256
    invoke-direct {v9}, Landroid/os/PersistableBundle;-><init>()V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v9, v11, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 260
    .line 261
    .line 262
    const-string v10, "backendName"

    .line 263
    .line 264
    invoke-virtual {v9, v10, v15}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v8}, Ls0/a;->a(Lg0/c;)I

    .line 268
    .line 269
    .line 270
    move-result v10

    .line 271
    const-string v11, "priority"

    .line 272
    .line 273
    invoke-virtual {v9, v11, v10}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 274
    .line 275
    .line 276
    if-eqz v7, :cond_7

    .line 277
    .line 278
    const/4 v10, 0x0

    .line 279
    invoke-static {v7, v10}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 280
    .line 281
    .line 282
    move-result-object v7

    .line 283
    const-string v10, "extras"

    .line 284
    .line 285
    invoke-virtual {v9, v10, v7}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    :cond_7
    invoke-virtual {v4, v9}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    .line 289
    .line 290
    .line 291
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    .line 293
    .line 294
    move-result-object v6

    .line 295
    invoke-virtual {v3, v8, v13, v14, v2}, Lo0/b;->a(Lg0/c;JI)J

    .line 296
    .line 297
    .line 298
    move-result-wide v7

    .line 299
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 304
    .line 305
    .line 306
    move-result-object v7

    .line 307
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    filled-new-array {v1, v6, v3, v7, v2}, [Ljava/lang/Object;

    .line 312
    .line 313
    .line 314
    move-result-object v1

    .line 315
    invoke-static/range {v16 .. v16}, Lcom/google/android/gms/internal/play_billing/i0;->Q(Ljava/lang/String;)Ljava/lang/String;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    const/4 v3, 0x3

    .line 320
    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 321
    .line 322
    .line 323
    move-result v2

    .line 324
    if-eqz v2, :cond_8

    .line 325
    .line 326
    const-string v2, "Scheduling upload for context %s with jobId=%d in %dms(Backend next call timestamp %d). Attempt %d"

    .line 327
    .line 328
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    :cond_8
    invoke-virtual {v4}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v5, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 336
    .line 337
    .line 338
    return-void
.end method
