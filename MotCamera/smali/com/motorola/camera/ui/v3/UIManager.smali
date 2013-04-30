.class public Lcom/motorola/camera/ui/v3/UIManager;
.super Ljava/lang/Object;
.source "UIManager.java"

# interfaces
.implements Lcom/motorola/camera/ui/UI;
.implements Lcom/motorola/camera/EventListener;
.implements Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v3/UIManager$1;,
        Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;,
        Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPostCapture;,
        Lcom/motorola/camera/ui/v3/UIManager$PhoneUICapture;,
        Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPreCapture;,
        Lcom/motorola/camera/ui/v3/UIManager$PhoneUIIdle;,
        Lcom/motorola/camera/ui/v3/UIManager$PhoneUIInit;,
        Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;",
            ">;"
        }
    .end annotation
.end field

.field private final mController:Lcom/motorola/camera/Controller;

.field private mDetector:Lcom/motorola/camera/ui/v3/GestureRecognizer;

.field private mDeviceOrientation:I

.field private mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

.field private mOrientation:I

.field private final mPortraitView:Lcom/motorola/camera/ui/v2/RotateLayout;

.field private final mRootView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/motorola/camera/ui/v3/UIManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/v3/UIManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/Controller;Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "controller"
    .parameter "view"

    .prologue
    .line 67
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mComponents:Ljava/util/HashSet;

    .line 68
    iput-object p1, p0, Lcom/motorola/camera/ui/v3/UIManager;->mController:Lcom/motorola/camera/Controller;

    .line 69
    iput-object p2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mRootView:Landroid/view/View;

    .line 70
    new-instance v2, Lcom/motorola/camera/ui/v3/GestureRecognizer;

    iget-object v3, p0, Lcom/motorola/camera/ui/v3/UIManager;->mRootView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/motorola/camera/ui/v3/GestureRecognizer;-><init>(Landroid/content/Context;Lcom/motorola/camera/ui/v3/GestureRecognizer$Listener;)V

    iput-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mDetector:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    .line 71
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mRootView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mRootView:Landroid/view/View;

    const v3, 0x7f080013

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 73
    .local v0, stub:Landroid/view/ViewStub;
    const v2, 0x7f030003

    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 74
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 75
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mRootView:Landroid/view/View;

    const v3, 0x7f080014

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/v2/RotateLayout;

    iput-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mPortraitView:Lcom/motorola/camera/ui/v2/RotateLayout;

    .line 76
    const/4 v2, 0x2

    new-array v1, v2, [Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    const/4 v2, 0x0

    sget-object v3, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->CAMERA_SWITCH:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;->RECORD_BUTTON:Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;

    aput-object v3, v1, v2

    .line 79
    .local v1, types:[Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mComponents:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/motorola/camera/ui/v3/UIManager;->mRootView:Landroid/view/View;

    invoke-static {v1, v3, p0}, Lcom/motorola/camera/ui/v3/uicomponents/UIComponentFactory;->getComponents([Lcom/motorola/camera/ui/v3/uicomponents/AbstractComponent$Type;Landroid/view/View;Lcom/motorola/camera/EventListener;)Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 80
    return-void
.end method

.method static synthetic access$700(Lcom/motorola/camera/ui/v3/UIManager;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/UIManager;->mComponents:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lcom/motorola/camera/ui/v3/UIManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/motorola/camera/ui/v3/UIManager;->deregisterForEvents()V

    return-void
.end method

.method private deregisterForEvents()V
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/Controller;->deregisterForRotationEvents(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V

    .line 101
    return-void
.end method

.method private registerForEvents()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p0}, Lcom/motorola/camera/Controller;->registerForRotationEvents(Lcom/motorola/camera/OrientationEvent$OnRotationChangeListener;)V

    .line 94
    return-void
.end method

.method private rotateUI(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 105
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;

    .line 106
    .local v0, comp:Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    invoke-interface {v0, p1}, Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;->rotate(I)V

    goto :goto_0

    .line 108
    .end local v0           #comp:Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public dispatchEvent(Lcom/motorola/camera/Event;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/UIManager;->mController:Lcom/motorola/camera/Controller;

    invoke-virtual {v0, p1}, Lcom/motorola/camera/Controller;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 87
    const/4 v0, 0x0

    return v0
.end method

.method public onDown(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 447
    return-void
.end method

.method public onEntry(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 5
    .parameter "state"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 221
    iput-object p2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 222
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/v3/UIManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onEntry for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    const/4 v0, 0x0

    .line 227
    .local v0, phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    sget-object v1, Lcom/motorola/camera/ui/v3/UIManager$1;->$SwitchMap$com$motorola$camera$states$StateManager$CAMERA_STATE:[I

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 247
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recieved onExit for default state."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :pswitch_0
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIInit;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIInit;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 250
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;->onEntry()V

    .line 251
    :cond_1
    return-void

    .line 232
    :pswitch_1
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIIdle;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIIdle;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 233
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 235
    :pswitch_2
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPreCapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPreCapture;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 236
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 238
    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUICapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUICapture;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 239
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 241
    :pswitch_4
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPostCapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPostCapture;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 242
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 244
    :pswitch_5
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 245
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 227
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onExit(Lcom/motorola/camera/states/StateManager$CAMERA_STATE;Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;)V
    .locals 5
    .parameter "state"
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 255
    iput-object p2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mMode:Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;

    .line 256
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/v3/UIManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".onExit for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/motorola/camera/modes/AbstractMode$CAPTURE_MODE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    const/4 v0, 0x0

    .line 261
    .local v0, phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    sget-object v1, Lcom/motorola/camera/ui/v3/UIManager$1;->$SwitchMap$com$motorola$camera$states$StateManager$CAMERA_STATE:[I

    invoke-virtual {p1}, Lcom/motorola/camera/states/StateManager$CAMERA_STATE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 281
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Recieved onExit for default state."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 263
    :pswitch_0
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIInit;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIInit;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 284
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;->onExit()V

    .line 285
    :cond_1
    return-void

    .line 266
    :pswitch_1
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIIdle;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIIdle;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 267
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 269
    :pswitch_2
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPreCapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPreCapture;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 270
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 272
    :pswitch_3
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUICapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUICapture;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 273
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 275
    :pswitch_4
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPostCapture;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIPostCapture;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 276
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 278
    :pswitch_5
    new-instance v0, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;

    .end local v0           #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    invoke-direct {v0, p0, v4}, Lcom/motorola/camera/ui/v3/UIManager$PhoneUIClose;-><init>(Lcom/motorola/camera/ui/v3/UIManager;Lcom/motorola/camera/ui/v3/UIManager$1;)V

    .line 279
    .restart local v0       #phoneUI:Lcom/motorola/camera/ui/v3/UIManager$AbstractPhoneUI;
    goto :goto_0

    .line 261
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onFling(FF)Z
    .locals 1
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    .line 415
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 142
    sget-boolean v2, Lcom/motorola/camera/Util;->VERBOSE:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/motorola/camera/ui/v3/UIManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key down: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 172
    const/4 v1, 0x0

    :cond_1
    :goto_0
    :sswitch_0
    return v1

    .line 149
    :sswitch_1
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isVolumeKeyZoom()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 151
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "direction"

    const-string v3, "out"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 156
    .end local v0           #bundle:Landroid/os/Bundle;
    :sswitch_2
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/motorola/camera/AppSettings;->isVolumeKeyZoom()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 158
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v2, "direction"

    const-string v3, "in"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 165
    .end local v0           #bundle:Landroid/os/Bundle;
    :sswitch_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 166
    new-instance v2, Lcom/motorola/camera/Event;

    sget-object v3, Lcom/motorola/camera/Event$ACTION;->CAPTURE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v2, v3}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_3
        0x18 -> :sswitch_2
        0x19 -> :sswitch_1
        0x1b -> :sswitch_3
        0x42 -> :sswitch_3
        0x52 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 177
    sget-boolean v1, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/motorola/camera/ui/v3/UIManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key up: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 193
    const/4 v0, 0x0

    :cond_1
    :goto_0
    :sswitch_0
    return v0

    .line 185
    :sswitch_1
    invoke-static {}, Lcom/motorola/camera/BlurCheckin;->getInstance()Lcom/motorola/camera/BlurCheckin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/BlurCheckin;->setVolumeKeyUsed()V

    .line 186
    invoke-static {}, Lcom/motorola/camera/AppSettings;->getInstance()Lcom/motorola/camera/AppSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/motorola/camera/AppSettings;->isVolumeKeyZoom()Z

    move-result v1

    if-nez v1, :cond_1

    .line 187
    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->CAPTURE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0

    .line 179
    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
    .end sparse-switch
.end method

.method public onLongPress(FF)V
    .locals 0
    .parameter "x"
    .parameter "y"

    .prologue
    .line 439
    return-void
.end method

.method public onRotationChanged(II)V
    .locals 3
    .parameter "orientation"
    .parameter "displayRotation"

    .prologue
    .line 203
    iget v0, p0, Lcom/motorola/camera/ui/v3/UIManager;->mDeviceOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 204
    add-int/lit8 p1, p1, 0x5a

    .line 207
    :cond_0
    add-int v0, p1, p2

    rem-int/lit16 v0, v0, 0x168

    iput v0, p0, Lcom/motorola/camera/ui/v3/UIManager;->mOrientation:I

    .line 208
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/motorola/camera/ui/v3/UIManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received rotatation event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/v3/UIManager;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/v3/UIManager;->rotateUI(I)V

    .line 211
    return-void
.end method

.method public onScale(FFFF)Z
    .locals 3
    .parameter "span"
    .parameter "focusX"
    .parameter "focusY"
    .parameter "scale"

    .prologue
    .line 425
    const/high16 v1, 0x3f80

    cmpl-float v1, p4, v1

    if-lez v1, :cond_0

    .line 426
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 427
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "direction"

    const-string v2, "in"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 434
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 430
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 431
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "direction"

    const-string v2, "out"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0
.end method

.method public onScaleBegin(FF)Z
    .locals 1
    .parameter "focusX"
    .parameter "focusY"

    .prologue
    .line 420
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd()V
    .locals 0

    .prologue
    .line 443
    return-void
.end method

.method public onScroll(FFFF)Z
    .locals 3
    .parameter "dx"
    .parameter "dy"
    .parameter "totalX"
    .parameter "totalY"

    .prologue
    .line 401
    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-lez v1, :cond_0

    .line 402
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 403
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "direction"

    const-string v2, "in"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    .line 410
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 406
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 407
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v1, "direction"

    const-string v2, "out"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    new-instance v1, Lcom/motorola/camera/Event;

    sget-object v2, Lcom/motorola/camera/Event$ACTION;->ZOOM:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v1, v2, v0}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    goto :goto_0
.end method

.method public onSingleTapUp(FF)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 394
    new-instance v0, Lcom/motorola/camera/Event;

    sget-object v1, Lcom/motorola/camera/Event$ACTION;->CAPTURE:Lcom/motorola/camera/Event$ACTION;

    invoke-direct {v0, v1}, Lcom/motorola/camera/Event;-><init>(Lcom/motorola/camera/Event$ACTION;)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/v3/UIManager;->dispatchEvent(Lcom/motorola/camera/Event;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 396
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/motorola/camera/ui/v3/UIManager;->mDetector:Lcom/motorola/camera/ui/v3/GestureRecognizer;

    invoke-virtual {v0, p2}, Lcom/motorola/camera/ui/v3/GestureRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method

.method public onUp()V
    .locals 0

    .prologue
    .line 451
    return-void
.end method

.method public orientationChanged(I)V
    .locals 0
    .parameter "orientation"

    .prologue
    .line 138
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 115
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mDeviceOrientation:I

    .line 116
    iget v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mDeviceOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 117
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mPortraitView:Lcom/motorola/camera/ui/v2/RotateLayout;

    const/16 v3, 0x10e

    invoke-virtual {v2, v3}, Lcom/motorola/camera/ui/v2/RotateLayout;->setOrientation(I)V

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/motorola/camera/ui/v3/UIManager;->registerForEvents()V

    .line 123
    iget-object v2, p0, Lcom/motorola/camera/ui/v3/UIManager;->mComponents:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;

    .line 124
    .local v0, comp:Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    invoke-interface {v0}, Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;->start()V

    goto :goto_0

    .line 126
    .end local v0           #comp:Lcom/motorola/camera/ui/v3/uicomponents/UIComponent;
    :cond_1
    return-void
.end method

.method public windowHasFocus()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
