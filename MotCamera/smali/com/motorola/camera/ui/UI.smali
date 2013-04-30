.class public interface abstract Lcom/motorola/camera/ui/UI;
.super Ljava/lang/Object;
.source "UI.java"

# interfaces
.implements Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;
.implements Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;
.implements Landroid/view/View$OnTouchListener;


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract onKeyDown(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract onKeyUp(ILandroid/view/KeyEvent;)Z
.end method

.method public abstract orientationChanged(I)V
.end method

.method public abstract start()V
.end method

.method public abstract windowHasFocus()V
.end method
