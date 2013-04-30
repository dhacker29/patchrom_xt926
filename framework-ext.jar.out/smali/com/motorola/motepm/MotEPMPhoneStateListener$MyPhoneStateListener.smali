.class Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MotEPMPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotEPMPhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V
    .locals 0
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;Lcom/motorola/motepm/MotEPMPhoneStateListener$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;-><init>(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V

    return-void
.end method


# virtual methods
.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3
    .parameter "serviceState"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z
    invoke-static {v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$100(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 77
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v1

    #setter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z
    invoke-static {v0, v1}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$102(Lcom/motorola/motepm/MotEPMPhoneStateListener;Z)Z

    .line 78
    const-string v0, "MotEPMPhoneStateListener"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roaming state changed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #getter for: Lcom/motorola/motepm/MotEPMPhoneStateListener;->mRoaming:Z
    invoke-static {v2}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$100(Lcom/motorola/motepm/MotEPMPhoneStateListener;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/motorola/motepm/MotEPMPhoneStateListener$MyPhoneStateListener;->this$0:Lcom/motorola/motepm/MotEPMPhoneStateListener;

    #calls: Lcom/motorola/motepm/MotEPMPhoneStateListener;->changeBackgroundDataValue()V
    invoke-static {v0}, Lcom/motorola/motepm/MotEPMPhoneStateListener;->access$200(Lcom/motorola/motepm/MotEPMPhoneStateListener;)V

    .line 81
    :cond_0
    return-void
.end method
