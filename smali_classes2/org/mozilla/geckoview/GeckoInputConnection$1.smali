.class final Lorg/mozilla/geckoview/GeckoInputConnection$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/mozilla/geckoview/GeckoInputConnection;->wrapForDebug(Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;)Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field private final mCallLevel:Ljava/lang/StringBuilder;

.field final synthetic val$ic:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;


# direct methods
.method public constructor <init>(Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;)V
    .locals 0

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$1;->val$ic:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$1;->mCallLevel:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/mozilla/geckoview/GeckoInputConnection$1;->mCallLevel:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    if-eqz p3, :cond_3

    move v2, v1

    :goto_0
    array-length v3, p3

    if-ge v2, v3, :cond_2

    aget-object v3, p3, v2

    const-string v4, "notifyIME"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-class v5, Lorg/mozilla/geckoview/SessionTextInput$EditableListener;

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    const-string v4, "NOTIFY_IME_"

    :goto_1
    invoke-static {v5, v4, v3}, Lorg/mozilla/geckoview/GeckoEditable;->getConstantName(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v4, "notifyIMEContext"

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-nez v2, :cond_1

    const-string v4, "IME_STATE_"

    goto :goto_1

    :cond_1
    invoke-static {v0, v3}, Lorg/mozilla/geckoview/GeckoEditable;->debugAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_2
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    array-length v2, p3

    if-lez v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_3
    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoInputConnection$1;->mCallLevel:Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoInputConnection$1;->val$ic:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    iget-object v2, p0, Lorg/mozilla/geckoview/GeckoInputConnection$1;->val$ic:Lorg/mozilla/geckoview/SessionTextInput$InputConnectionClient;

    if-ne p3, v2, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, p3

    :goto_3
    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoInputConnection$1;->mCallLevel:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object p3, p0, Lorg/mozilla/geckoview/GeckoInputConnection$1;->mCallLevel:Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->setLength(I)V

    const-string p3, "< "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string p2, ": "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0, p1}, Lorg/mozilla/geckoview/GeckoEditable;->debugAppend(Ljava/lang/StringBuilder;Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    return-object p1
.end method
