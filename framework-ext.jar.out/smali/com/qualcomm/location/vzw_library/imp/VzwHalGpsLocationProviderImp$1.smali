.class Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;
.super Ljava/lang/Object;
.source "VzwHalGpsLocationProviderImp.java"

# interfaces
.implements Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;


# direct methods
.method constructor <init>(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ReportEngineStatus(I)V
    .locals 3
    .parameter "statusCode"

    .prologue
    packed-switch p1, :pswitch_data_0

    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine state: unknown"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #calls: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$300(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    .local v0, callback_copy:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportEngineStatus(I)V

    :cond_1
    return-void

    .end local v0           #callback_copy:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    :pswitch_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine state: session begin"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine state: session end"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine state: engine on"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    const-string v2, "engine state: engine off"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public ReportGpsStatus(I)V
    .locals 2
    .parameter "statusCode"

    .prologue
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #calls: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$300(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    .local v0, callback_copy:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportGpsStatus(I)V

    :cond_0
    return-void
.end method

.method public ReportLocation(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V
    .locals 5
    .parameter "location"

    .prologue
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fix arrived "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalLocation;->getSessionId()I

    move-result v2

    #calls: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getLocationCallbackHandler(I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    invoke-static {v1, v2}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$200(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;I)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    .local v0, callback_copy:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportLocation(Lcom/qualcomm/location/vzw_library/VzwHalLocation;)V

    :cond_1
    return-void
.end method

.method public ReportSvStatus(Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;)V
    .locals 4
    .parameter "svSvInfo"

    .prologue
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #getter for: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->VERBOSE:Z
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$100(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "VzwHalGpsLocProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV info arrived: SV in view count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;->getNumSatellitesInView()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp$1;->this$0:Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;

    #calls: Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->getGeneralCallbackHandler()Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    invoke-static {v1}, Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;->access$300(Lcom/qualcomm/location/vzw_library/imp/VzwHalGpsLocationProviderImp;)Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;

    move-result-object v0

    .local v0, callback_copy:Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;
    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/qualcomm/location/vzw_library/IVzwHalGpsCallback;->ReportSvStatus(Lcom/qualcomm/location/vzw_library/VzwHalSvInfo;)V

    :cond_1
    return-void
.end method
