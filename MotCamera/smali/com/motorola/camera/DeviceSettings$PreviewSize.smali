.class public Lcom/motorola/camera/DeviceSettings$PreviewSize;
.super Ljava/lang/Object;
.source "DeviceSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/DeviceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreviewSize"
.end annotation


# instance fields
.field public height:I

.field final synthetic this$0:Lcom/motorola/camera/DeviceSettings;

.field public width:I


# direct methods
.method public constructor <init>(Lcom/motorola/camera/DeviceSettings;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 943
    iput-object p1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->this$0:Lcom/motorola/camera/DeviceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 944
    iput v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    .line 945
    iput v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    .line 946
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/DeviceSettings;II)V
    .locals 0
    .parameter
    .parameter "w"
    .parameter "h"

    .prologue
    .line 948
    iput-object p1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->this$0:Lcom/motorola/camera/DeviceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 949
    iput p2, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    .line 950
    iput p3, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    .line 951
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/DeviceSettings;Landroid/hardware/Camera$Size;)V
    .locals 1
    .parameter
    .parameter "s"

    .prologue
    .line 969
    iput-object p1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->this$0:Lcom/motorola/camera/DeviceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 970
    iget v0, p2, Landroid/hardware/Camera$Size;->width:I

    iput v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    .line 971
    iget v0, p2, Landroid/hardware/Camera$Size;->height:I

    iput v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    .line 972
    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/DeviceSettings;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "x"
    .parameter "c"

    .prologue
    .line 953
    iput-object p1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->this$0:Lcom/motorola/camera/DeviceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 955
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 956
    .local v1, temp:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 957
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    .line 958
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    .line 967
    return-void

    .line 960
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 962
    .end local v1           #temp:[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 963
    .local v0, e:Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 964
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 965
    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    const/4 v1, 0x0

    .line 995
    instance-of v2, p1, Lcom/motorola/camera/DeviceSettings$PreviewSize;

    if-nez v2, :cond_1

    .line 999
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 998
    check-cast v0, Lcom/motorola/camera/DeviceSettings$PreviewSize;

    .line 999
    .local v0, s:Lcom/motorola/camera/DeviceSettings$PreviewSize;
    iget v2, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    iget v3, v0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    iget v3, v0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getAspectRatio()F
    .locals 2

    .prologue
    .line 975
    iget v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    if-nez v0, :cond_0

    .line 976
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Height is zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 978
    :cond_0
    iget v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public getMax()F
    .locals 2

    .prologue
    .line 982
    iget v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    iget v1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getMin()F
    .locals 2

    .prologue
    .line 986
    iget v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    iget v1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getSize()F
    .locals 2

    .prologue
    .line 990
    iget v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    int-to-float v0, v0

    iget v1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1004
    const/16 v0, 0x21

    .line 1005
    .local v0, result:I
    iget v1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    add-int/lit16 v0, v1, 0x56a

    .line 1006
    mul-int/lit8 v1, v0, 0x2a

    iget v2, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    add-int v0, v1, v2

    .line 1007
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1012
    iget v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/DeviceSettings$PreviewSize;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
