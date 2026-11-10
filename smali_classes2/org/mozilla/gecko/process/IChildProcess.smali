.class public interface abstract Lorg/mozilla/gecko/process/IChildProcess;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mozilla/gecko/process/IChildProcess$Stub;,
        Lorg/mozilla/gecko/process/IChildProcess$Default;
    }
.end annotation


# virtual methods
.method public abstract crash()V
.end method

.method public abstract getPid()I
.end method

.method public abstract start(Lorg/mozilla/gecko/process/IProcessManager;[Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Z
.end method
