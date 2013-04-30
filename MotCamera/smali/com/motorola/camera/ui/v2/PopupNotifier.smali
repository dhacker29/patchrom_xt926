.class public Lcom/motorola/camera/ui/v2/PopupNotifier;
.super Ljava/lang/Object;
.source "PopupNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ui/v2/PopupNotifier$OnNewPopupListener;,
        Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PopupNotifier"

.field private static sMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/motorola/camera/ui/v2/PopupNotifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/v2/PopupNotifier;->sMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/ui/v2/PopupNotifier;->mListeners:Ljava/util/ArrayList;

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/motorola/camera/ui/v2/PopupNotifier;
    .locals 2
    .parameter "context"

    .prologue
    .line 124
    sget-object v1, Lcom/motorola/camera/ui/v2/PopupNotifier;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/PopupNotifier;

    .line 125
    .local v0, instance:Lcom/motorola/camera/ui/v2/PopupNotifier;
    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/motorola/camera/ui/v2/PopupNotifier;

    .end local v0           #instance:Lcom/motorola/camera/ui/v2/PopupNotifier;
    invoke-direct {v0}, Lcom/motorola/camera/ui/v2/PopupNotifier;-><init>()V

    .line 127
    .restart local v0       #instance:Lcom/motorola/camera/ui/v2/PopupNotifier;
    sget-object v1, Lcom/motorola/camera/ui/v2/PopupNotifier;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    return-object v0
.end method

.method public static removeInstance(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 133
    sget-object v1, Lcom/motorola/camera/ui/v2/PopupNotifier;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/v2/PopupNotifier;

    .line 134
    .local v0, instance:Lcom/motorola/camera/ui/v2/PopupNotifier;
    sget-object v1, Lcom/motorola/camera/ui/v2/PopupNotifier;->sMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    return-void
.end method


# virtual methods
.method public backKeyPressed()Z
    .locals 4

    .prologue
    .line 102
    const/4 v2, 0x0

    .line 104
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 105
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/PopupNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;

    .line 106
    .local v1, listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;->onPopupDismissRequested()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 110
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    :cond_0
    if-eqz v2, :cond_1

    .line 111
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/PopupNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;

    .line 112
    .restart local v1       #listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;->onPopupDismissed()V

    goto :goto_1

    .line 116
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    :cond_1
    return v2
.end method

.method public isAnyPopupShowing()Z
    .locals 4

    .prologue
    .line 87
    const/4 v2, 0x0

    .line 89
    .local v2, result:Z
    if-nez v2, :cond_0

    .line 90
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/PopupNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;

    .line 91
    .local v1, listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;->isPopupShowing()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 94
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    :cond_0
    return v2
.end method

.method public notifyDismissedPopup()V
    .locals 3

    .prologue
    .line 81
    iget-object v2, p0, Lcom/motorola/camera/ui/v2/PopupNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;

    .line 82
    .local v1, listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;->onPopupDismissed()V

    goto :goto_0

    .line 84
    .end local v1           #listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    :cond_0
    return-void
.end method

.method public notifyShowPopup(Landroid/view/View;)Z
    .locals 4
    .parameter "view"

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 65
    .local v2, result:Z
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/PopupNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;

    .line 66
    .local v1, listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    instance-of v3, v1, Landroid/view/View;

    if-eqz v3, :cond_1

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    if-eq v3, p1, :cond_0

    .line 67
    :cond_1
    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;->onOtherPopupShowed()Z

    move-result v3

    or-int/2addr v2, v3

    goto :goto_0

    .line 71
    .end local v1           #listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    :cond_2
    if-eqz v2, :cond_3

    .line 72
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/PopupNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;

    .line 73
    .restart local v1       #listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    invoke-interface {v1}, Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;->onPopupDismissed()V

    goto :goto_1

    .line 77
    .end local v1           #listener:Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;
    :cond_3
    return v2
.end method

.method public setPopupListener(Lcom/motorola/camera/ui/v2/PopupNotifier$PopupListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/PopupNotifier;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method
