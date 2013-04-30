.class public Lcom/motorola/camera/PreferenceGroup;
.super Lcom/motorola/camera/CameraPreference;
.source "PreferenceGroup.java"


# instance fields
.field private mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraPreference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/CameraPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/PreferenceGroup;->mList:Ljava/util/ArrayList;

    .line 14
    return-void
.end method


# virtual methods
.method public addChild(Lcom/motorola/camera/CameraPreference;)V
    .locals 1
    .parameter "child"

    .prologue
    .line 17
    iget-object v0, p0, Lcom/motorola/camera/PreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    return-void
.end method

.method public findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;
    .locals 5
    .parameter "key"

    .prologue
    .line 47
    iget-object v4, p0, Lcom/motorola/camera/PreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/CameraPreference;

    .line 48
    .local v2, pref:Lcom/motorola/camera/CameraPreference;
    instance-of v4, v2, Lcom/motorola/camera/ListPreference;

    if-eqz v4, :cond_1

    move-object v1, v2

    .line 49
    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 50
    .local v1, listPref:Lcom/motorola/camera/ListPreference;
    invoke-virtual {v1}, Lcom/motorola/camera/ListPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    .end local v1           #listPref:Lcom/motorola/camera/ListPreference;
    .end local v2           #pref:Lcom/motorola/camera/CameraPreference;
    :goto_0
    return-object v1

    .line 51
    .restart local v2       #pref:Lcom/motorola/camera/CameraPreference;
    :cond_1
    instance-of v4, v2, Lcom/motorola/camera/PreferenceGroup;

    if-eqz v4, :cond_2

    .line 52
    check-cast v2, Lcom/motorola/camera/PreferenceGroup;

    .end local v2           #pref:Lcom/motorola/camera/CameraPreference;
    invoke-virtual {v2, p1}, Lcom/motorola/camera/PreferenceGroup;->findPreference(Ljava/lang/String;)Lcom/motorola/camera/CameraPreference;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ListPreference;

    .line 55
    .restart local v1       #listPref:Lcom/motorola/camera/ListPreference;
    if-eqz v1, :cond_0

    goto :goto_0

    .line 56
    .end local v1           #listPref:Lcom/motorola/camera/ListPreference;
    .restart local v2       #pref:Lcom/motorola/camera/CameraPreference;
    :cond_2
    instance-of v4, v2, Lcom/motorola/camera/SliderPreference;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 57
    check-cast v3, Lcom/motorola/camera/SliderPreference;

    .line 59
    .local v3, slider:Lcom/motorola/camera/SliderPreference;
    invoke-virtual {v3}, Lcom/motorola/camera/SliderPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 62
    .end local v2           #pref:Lcom/motorola/camera/CameraPreference;
    .end local v3           #slider:Lcom/motorola/camera/SliderPreference;
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public get(I)Lcom/motorola/camera/CameraPreference;
    .locals 1
    .parameter "index"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/motorola/camera/PreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraPreference;

    return-object v0
.end method

.method public reloadValue()V
    .locals 3

    .prologue
    .line 34
    iget-object v2, p0, Lcom/motorola/camera/PreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/CameraPreference;

    .line 35
    .local v1, pref:Lcom/motorola/camera/CameraPreference;
    invoke-virtual {v1}, Lcom/motorola/camera/CameraPreference;->reloadValue()V

    goto :goto_0

    .line 37
    .end local v1           #pref:Lcom/motorola/camera/CameraPreference;
    :cond_0
    return-void
.end method

.method public removePreference(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/motorola/camera/PreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 22
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/motorola/camera/PreferenceGroup;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
