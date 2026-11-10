.class public final Lp0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lp0/a;


# instance fields
.field public final a:J

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lj0/j;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Lj0/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    const-wide/32 v1, 0xa00000

    .line 8
    .line 9
    .line 10
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    iput-object v1, v0, Lj0/j;->e:Ljava/lang/Object;

    .line 15
    .line 16
    const/16 v1, 0xc8

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lj0/j;->f:Ljava/lang/Object;

    .line 23
    .line 24
    const/16 v1, 0x2710

    .line 25
    .line 26
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, v0, Lj0/j;->i:Ljava/lang/Object;

    .line 31
    .line 32
    const-wide/32 v1, 0x240c8400

    .line 33
    .line 34
    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lj0/j;->h:Ljava/lang/Object;

    .line 40
    .line 41
    const v1, 0x14000

    .line 42
    .line 43
    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lj0/j;->g:Ljava/lang/Object;

    .line 49
    .line 50
    iget-object v1, v0, Lj0/j;->e:Ljava/lang/Object;

    .line 51
    .line 52
    check-cast v1, Ljava/lang/Long;

    .line 53
    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    const-string v1, " maxStorageSizeInBytes"

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const-string v1, ""

    .line 60
    .line 61
    :goto_0
    iget-object v2, v0, Lj0/j;->f:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Ljava/lang/Integer;

    .line 64
    .line 65
    if-nez v2, :cond_1

    .line 66
    .line 67
    const-string v2, " loadBatchSize"

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    :cond_1
    iget-object v2, v0, Lj0/j;->i:Ljava/lang/Object;

    .line 74
    .line 75
    check-cast v2, Ljava/lang/Integer;

    .line 76
    .line 77
    if-nez v2, :cond_2

    .line 78
    .line 79
    const-string v2, " criticalSectionEnterTimeoutMs"

    .line 80
    .line 81
    invoke-static {v1, v2}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    :cond_2
    iget-object v2, v0, Lj0/j;->h:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v2, Ljava/lang/Long;

    .line 88
    .line 89
    if-nez v2, :cond_3

    .line 90
    .line 91
    const-string v2, " eventCleanUpAge"

    .line 92
    .line 93
    invoke-static {v1, v2}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    :cond_3
    iget-object v2, v0, Lj0/j;->g:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v2, Ljava/lang/Integer;

    .line 100
    .line 101
    if-nez v2, :cond_4

    .line 102
    .line 103
    const-string v2, " maxBlobByteSizePerRow"

    .line 104
    .line 105
    invoke-static {v1, v2}, La1/b;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    :cond_4
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_5

    .line 114
    .line 115
    new-instance v1, Lp0/a;

    .line 116
    .line 117
    iget-object v2, v0, Lj0/j;->e:Ljava/lang/Object;

    .line 118
    .line 119
    check-cast v2, Ljava/lang/Long;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 122
    .line 123
    .line 124
    move-result-wide v4

    .line 125
    iget-object v2, v0, Lj0/j;->f:Ljava/lang/Object;

    .line 126
    .line 127
    check-cast v2, Ljava/lang/Integer;

    .line 128
    .line 129
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    iget-object v2, v0, Lj0/j;->i:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v2, Ljava/lang/Integer;

    .line 136
    .line 137
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 138
    .line 139
    .line 140
    move-result v7

    .line 141
    iget-object v2, v0, Lj0/j;->h:Ljava/lang/Object;

    .line 142
    .line 143
    check-cast v2, Ljava/lang/Long;

    .line 144
    .line 145
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 146
    .line 147
    .line 148
    move-result-wide v8

    .line 149
    iget-object v0, v0, Lj0/j;->g:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Ljava/lang/Integer;

    .line 152
    .line 153
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 154
    .line 155
    .line 156
    move-result v10

    .line 157
    move-object v3, v1

    .line 158
    invoke-direct/range {v3 .. v10}, Lp0/a;-><init>(JIIJI)V

    .line 159
    .line 160
    .line 161
    sput-object v1, Lp0/a;->f:Lp0/a;

    .line 162
    .line 163
    return-void

    .line 164
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 165
    .line 166
    const-string v2, "Missing required properties:"

    .line 167
    .line 168
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    throw v0
.end method

.method public constructor <init>(JIIJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lp0/a;->a:J

    .line 5
    .line 6
    iput p3, p0, Lp0/a;->b:I

    .line 7
    .line 8
    iput p4, p0, Lp0/a;->c:I

    .line 9
    .line 10
    iput-wide p5, p0, Lp0/a;->d:J

    .line 11
    .line 12
    iput p7, p0, Lp0/a;->e:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lp0/a;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_2

    .line 9
    .line 10
    check-cast p1, Lp0/a;

    .line 11
    .line 12
    iget-wide v3, p1, Lp0/a;->a:J

    .line 13
    .line 14
    iget-wide v5, p0, Lp0/a;->a:J

    .line 15
    .line 16
    cmp-long v1, v5, v3

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    iget v1, p0, Lp0/a;->b:I

    .line 21
    .line 22
    iget v3, p1, Lp0/a;->b:I

    .line 23
    .line 24
    if-ne v1, v3, :cond_1

    .line 25
    .line 26
    iget v1, p0, Lp0/a;->c:I

    .line 27
    .line 28
    iget v3, p1, Lp0/a;->c:I

    .line 29
    .line 30
    if-ne v1, v3, :cond_1

    .line 31
    .line 32
    iget-wide v3, p0, Lp0/a;->d:J

    .line 33
    .line 34
    iget-wide v5, p1, Lp0/a;->d:J

    .line 35
    .line 36
    cmp-long v1, v3, v5

    .line 37
    .line 38
    if-nez v1, :cond_1

    .line 39
    .line 40
    iget v1, p0, Lp0/a;->e:I

    .line 41
    .line 42
    iget p1, p1, Lp0/a;->e:I

    .line 43
    .line 44
    if-ne v1, p1, :cond_1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v0, v2

    .line 48
    :goto_0
    return v0

    .line 49
    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    .line 1
    iget-wide v0, p0, Lp0/a;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v3, p0, Lp0/a;->b:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget v3, p0, Lp0/a;->c:I

    xor-int/2addr v0, v3

    mul-int/2addr v0, v1

    iget-wide v3, p0, Lp0/a;->d:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lp0/a;->e:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EventStoreConfig{maxStorageSizeInBytes="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lp0/a;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", loadBatchSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp0/a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", criticalSectionEnterTimeoutMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp0/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", eventCleanUpAge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lp0/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", maxBlobByteSizePerRow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lp0/a;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
