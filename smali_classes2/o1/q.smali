.class public Lo1/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public final d:Z

.field public final e:Z

.field public f:Z

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "}"

    const-string v1, "varying vec2 vTexCoord;"

    const-string v2, ""

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "attribute vec3 aPosition;"

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    const-string v3, "attribute vec2 aTexCoord;"

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "uniform mat4 uTransformationMatrix;uniform mat4 uViewportMatrix;uniform bool uUpsideDown;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "void main() {  float w;  vec4 transformedPosition = uTransformationMatrix * vec4(aPosition, 1.0);  w = transformedPosition.w;  transformedPosition = transformedPosition / w;  transformedPosition = uViewportMatrix * transformedPosition;  gl_Position = transformedPosition * w;  if (uUpsideDown) gl_Position.xy = -gl_Position.xy;"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_2

    const-string v3, "  vTexCoord = aTexCoord;"

    goto :goto_2

    :cond_2
    move-object v3, v2

    .line 1
    :goto_2
    invoke-static {p1, v3, v0}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    if-nez p2, :cond_a

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p3, :cond_4

    if-eqz p5, :cond_4

    const-string v3, "#extension GL_OES_EGL_image_external : require\n"

    goto :goto_3

    :cond_4
    move-object v3, v2

    :goto_3
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "precision mediump float;"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_5

    goto :goto_4

    :cond_5
    move-object v1, v2

    :goto_4
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_6

    if-eqz p5, :cond_6

    const-string v1, "uniform samplerExternalOES uTexture;"

    goto :goto_5

    :cond_6
    move-object v1, v2

    :goto_5
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_7

    if-nez p5, :cond_7

    const-string p5, "uniform sampler2D uTexture;"

    goto :goto_6

    :cond_7
    move-object p5, v2

    :goto_6
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "void main() {"

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_8

    const-string p5, "  gl_FragColor = texture2D(uTexture, vTexCoord);"

    goto :goto_7

    :cond_8
    move-object p5, v2

    :goto_7
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_9

    const-string v2, "  gl_FragColor = vec4(0.0, 0.5, 0.0, 1.0);"

    .line 3
    :cond_9
    invoke-static {p2, v2, v0}, La1/b;->g(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    :cond_a
    iput-object p1, p0, Lo1/q;->b:Ljava/lang/String;

    iput-object p2, p0, Lo1/q;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lo1/q;->d:Z

    iput-boolean p4, p0, Lo1/q;->e:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6

    .line 17
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lo1/q;-><init>(Ljava/lang/String;Ljava/lang/String;ZZZ)V

    return-void
.end method

.method public static c(ILjava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p0

    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    const/4 p1, 0x1

    new-array p1, p1, [I

    const v0, 0x8b81

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    aget p1, p1, v1

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Errors occurred while compiling shader:\n"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sdf"

    invoke-static {v0, p1}, Lo1/m;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    const v0, 0x8b31

    iget-object v1, p0, Lo1/q;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/q;->c(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo1/q;->h:I

    const v0, 0x8b30

    iget-object v1, p0, Lo1/q;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lo1/q;->c(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo1/q;->i:I

    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lo1/q;->g:I

    iget v1, p0, Lo1/q;->h:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lo1/q;->g:I

    iget v1, p0, Lo1/q;->i:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    iget v0, p0, Lo1/q;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo1/q;->j:I

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uTransformationMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo1/q;->l:I

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uViewportMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo1/q;->m:I

    iget-boolean v0, p0, Lo1/q;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "aTexCoord"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo1/q;->k:I

    :cond_0
    iget-boolean v0, p0, Lo1/q;->d:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uTexture"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo1/q;->n:I

    :cond_1
    iget v0, p0, Lo1/q;->g:I

    const-string v1, "uUpsideDown"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lo1/q;->o:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo1/q;->c:Z

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget v0, p0, Lo1/q;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    iget-boolean v0, p0, Lo1/q;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lo1/q;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lo1/q;->c:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lo1/q;->a()V

    :cond_0
    iget v0, p0, Lo1/q;->g:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    iget v0, p0, Lo1/q;->j:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    iget-boolean v0, p0, Lo1/q;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lo1/q;->k:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    :cond_1
    iget-boolean v0, p0, Lo1/q;->d:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lo1/q;->n:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    :cond_2
    iget v0, p0, Lo1/q;->o:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-boolean v1, p0, Lo1/q;->f:Z

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    :cond_3
    return-void
.end method
