.class public interface abstract Lcom/motorola/camera/states/AbstractState$OnStateChangeListener;
.super Ljava/lang/Object;
.source "AbstractState.java"

# interfaces
.implements Ljava/util/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/states/AbstractState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnStateChangeListener"
.end annotation


# virtual methods
.method public abstract onEntry(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
.end method

.method public abstract onExit(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
.end method
