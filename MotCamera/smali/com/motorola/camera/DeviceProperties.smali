.class public Lcom/motorola/camera/DeviceProperties;
.super Ljava/lang/Object;
.source "DeviceProperties.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;,
        Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static getInt(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)I
    .locals 2
    .parameter "property"

    .prologue
    .line 11
    #calls: Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->isSet()Z
    invoke-static {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->access$000(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    #calls: Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->getProperty()Ljava/lang/String;
    invoke-static {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->access$100(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/cameralib/SystemSetting;->getInt(Ljava/lang/String;I)I

    move-result v0

    #calls: Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->setValue(I)V
    invoke-static {p0, v0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->access$200(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;I)V

    .line 14
    :cond_0
    #calls: Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->getValue()I
    invoke-static {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;->access$300(Lcom/motorola/camera/DeviceProperties$DEV_PROP_INT;)I

    move-result v0

    return v0
.end method

.method public static getString(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;
    .locals 2
    .parameter "property"

    .prologue
    .line 18
    #calls: Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->isSet()Z
    invoke-static {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->access$400(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 19
    #calls: Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->getProperty()Ljava/lang/String;
    invoke-static {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->access$500(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/motorola/cameralib/SystemSetting;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->setValue(Ljava/lang/String;)V
    invoke-static {p0, v0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->access$600(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;Ljava/lang/String;)V

    .line 21
    :cond_0
    #calls: Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->getValue()Ljava/lang/String;
    invoke-static {p0}, Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;->access$700(Lcom/motorola/camera/DeviceProperties$DEV_PROP_STR;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
