.class public interface abstract annotation Lorg/mozilla/gecko/annotation/WrapForJNI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/mozilla/gecko/annotation/WrapForJNI;
        calledFrom = "any"
        dispatchTo = "current"
        exceptionMode = "abort"
        noLiteral = false
        skip = false
        stubName = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract calledFrom()Ljava/lang/String;
.end method

.method public abstract dispatchTo()Ljava/lang/String;
.end method

.method public abstract exceptionMode()Ljava/lang/String;
.end method

.method public abstract noLiteral()Z
.end method

.method public abstract skip()Z
.end method

.method public abstract stubName()Ljava/lang/String;
.end method
