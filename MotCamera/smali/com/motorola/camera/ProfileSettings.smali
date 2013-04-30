.class public Lcom/motorola/camera/ProfileSettings;
.super Ljava/lang/Object;
.source "ProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/ProfileSettings$Profile;
    }
.end annotation


# static fields
.field private static final Res_1080p:Ljava/lang/String; = "1080p"

.field private static final Res_480p:Ljava/lang/String; = "480p"

.field private static final Res_720p:Ljava/lang/String; = "720p"

.field private static final Res_cif:Ljava/lang/String; = "cif"

.field private static final Res_high:Ljava/lang/String; = "high"

.field private static final Res_low:Ljava/lang/String; = "low"

.field private static final Res_mms:Ljava/lang/String; = "mms"

.field private static final Res_qcif:Ljava/lang/String; = "qcif"

.field private static final Res_qvga:Ljava/lang/String; = "qvga"

.field private static final Res_vga:Ljava/lang/String; = "vga"

.field private static final TAG:Ljava/lang/String; = "ProfileSettings"

.field private static mResProfileMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/motorola/camera/ProfileSettings$Profile;",
            ">;"
        }
    .end annotation
.end field

.field private static sProfileResMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCamcorderProfile:Landroid/media/CamcorderProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x64

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/4 v5, 0x5

    const/4 v4, 0x4

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/motorola/camera/ProfileSettings;->mResProfileMap:Ljava/util/HashMap;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    .line 71
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->mResProfileMap:Ljava/util/HashMap;

    const-string v1, "1080p"

    new-instance v2, Lcom/motorola/camera/ProfileSettings$Profile;

    const/16 v3, 0x3ee

    invoke-direct {v2, v6, v3}, Lcom/motorola/camera/ProfileSettings$Profile;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->mResProfileMap:Ljava/util/HashMap;

    const-string v1, "720p"

    new-instance v2, Lcom/motorola/camera/ProfileSettings$Profile;

    const/16 v3, 0x3ed

    invoke-direct {v2, v5, v3}, Lcom/motorola/camera/ProfileSettings$Profile;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->mResProfileMap:Ljava/util/HashMap;

    const-string v1, "480p"

    new-instance v2, Lcom/motorola/camera/ProfileSettings$Profile;

    const/16 v3, 0x3ec

    invoke-direct {v2, v4, v3}, Lcom/motorola/camera/ProfileSettings$Profile;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->mResProfileMap:Ljava/util/HashMap;

    const-string v1, "qvga"

    new-instance v2, Lcom/motorola/camera/ProfileSettings$Profile;

    const/16 v3, 0x3ef

    invoke-direct {v2, v7, v3}, Lcom/motorola/camera/ProfileSettings$Profile;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->mResProfileMap:Ljava/util/HashMap;

    const-string v1, "vga"

    new-instance v2, Lcom/motorola/camera/ProfileSettings$Profile;

    const/16 v3, 0x44c

    invoke-direct {v2, v8, v3}, Lcom/motorola/camera/ProfileSettings$Profile;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const-string v1, "1080p"

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const-string v1, "720p"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 86
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const-string v1, "480p"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "cif"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "high"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "low"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "qcif"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const-string v1, "qvga"

    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 92
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x3ee

    const-string v2, "1080p"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x3ed

    const-string v2, "720p"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x3ec

    const-string v2, "480p"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 95
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x3eb

    const-string v2, "cif"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 96
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x3e9

    const-string v2, "high"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x3e8

    const-string v2, "low"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 98
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x3ea

    const-string v2, "qcif"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x3ef

    const-string v2, "qvga"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const-string v1, "vga"

    invoke-virtual {v0, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 101
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const-string v2, "mms"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    const/16 v1, 0x44c

    const-string v2, "vga"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 103
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0, v0}, Lcom/motorola/camera/ProfileSettings;-><init>(II)V

    .line 110
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .parameter "mCameraID"
    .parameter "parseInt"

    .prologue
    .line 112
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    invoke-static {p1, p2}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    .line 115
    return-void

    .line 113
    :cond_0
    const/4 p2, 0x0

    goto :goto_0
.end method

.method public static getProfile(Ljava/lang/String;Z)I
    .locals 2
    .parameter "res"
    .parameter "timelapse"

    .prologue
    .line 118
    sget-object v1, Lcom/motorola/camera/ProfileSettings;->mResProfileMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ProfileSettings$Profile;

    .line 119
    .local v0, profile:Lcom/motorola/camera/ProfileSettings$Profile;
    if-eqz p1, :cond_0

    .line 120
    iget v1, v0, Lcom/motorola/camera/ProfileSettings$Profile;->timelapse:I

    .line 122
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/motorola/camera/ProfileSettings$Profile;->normal:I

    goto :goto_0
.end method

.method public static hasProfile(II)Z
    .locals 1
    .parameter "mCameraID"
    .parameter "profileVal"

    .prologue
    .line 173
    invoke-static {p0, p1}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getAudioBitrate()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    return v0
.end method

.method public getFPS()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    return v0
.end method

.method public getMimeTypeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/motorola/camera/ProfileSettings;->getOutputFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 143
    const-string v0, "video/mp4"

    .line 145
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "video/3gpp"

    goto :goto_0
.end method

.method public getOutFormatFileExt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/motorola/camera/ProfileSettings;->getOutputFormat()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 132
    const-string v0, ".mp4"

    .line 134
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ".3gp"

    goto :goto_0
.end method

.method public getOutputFormat()I
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    return v0
.end method

.method getProfile()Landroid/media/CamcorderProfile;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    return-object v0
.end method

.method public getResolution()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getResolutionName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    sget-object v0, Lcom/motorola/camera/ProfileSettings;->sProfileResMap:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method getSizeList(ILjava/util/List;)Ljava/util/List;
    .locals 6
    .parameter "cameraID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p2, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v1, dimensionList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 180
    .local v2, i:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/motorola/camera/ProfileSettings;->getProfile(Ljava/lang/String;Z)I

    move-result v4

    invoke-static {p1, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v0

    .line 182
    .local v0, cam:Landroid/media/CamcorderProfile;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 185
    .end local v0           #cam:Landroid/media/CamcorderProfile;
    .end local v2           #i:Ljava/lang/String;
    :cond_0
    return-object v1
.end method

.method public getVideoBitrate()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/motorola/camera/ProfileSettings;->mCamcorderProfile:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    return v0
.end method
