.class Lcom/android/internal/telephony/uicc/SIMRecords$EfCsimSfEuimidLoaded;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EfCsimSfEuimidLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0
    .parameter

    .prologue
    .line 1374
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfCsimSfEuimidLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1374
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$EfCsimSfEuimidLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1376
    const-string v0, "EF_CSIM_SF_EUIMID"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 1
    .parameter "ar"

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfCsimSfEuimidLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    #calls: Lcom/android/internal/telephony/uicc/SIMRecords;->onGetCsimSfEuimidDone(Landroid/os/AsyncResult;)V
    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->access$000(Lcom/android/internal/telephony/uicc/SIMRecords;Landroid/os/AsyncResult;)V

    .line 1380
    return-void
.end method
