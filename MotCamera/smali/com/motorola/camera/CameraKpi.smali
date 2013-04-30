.class public Lcom/motorola/camera/CameraKpi;
.super Ljava/lang/Object;
.source "CameraKpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/camera/CameraKpi$KPI;,
        Lcom/motorola/camera/CameraKpi$CameraKpiListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CameraKpiTag"


# instance fields
.field private mCameraKpis:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/camera/CameraKpi$KPI;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/motorola/camera/CameraKpi$KPI;",
            "Lcom/motorola/camera/CameraKpi$CameraKpiListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/util/HashMap;

    .line 25
    return-void
.end method

.method private printLog(Lcom/motorola/camera/CameraKpi$KPI;J)V
    .locals 3
    .parameter "kpi"
    .parameter "time"

    .prologue
    .line 103
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CameraKpiTag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Lcom/motorola/camera/CameraKpi$KPI;)Z
    .locals 1
    .parameter "kpi"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public endKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V
    .locals 7
    .parameter "kpi"

    .prologue
    .line 85
    iget-object v3, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 86
    .local v1, startTime:Ljava/lang/Long;
    if-eqz v1, :cond_1

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 88
    .local v2, timeDiff:Ljava/lang/Long;
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {p0, p1, v3, v4}, Lcom/motorola/camera/CameraKpi;->printLog(Lcom/motorola/camera/CameraKpi$KPI;J)V

    .line 89
    iget-object v3, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/CameraKpi$CameraKpiListener;

    .line 90
    .local v0, listener:Lcom/motorola/camera/CameraKpi$CameraKpiListener;
    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v0, p1, v3, v4}, Lcom/motorola/camera/CameraKpi$CameraKpiListener;->onKpiUpdate(Lcom/motorola/camera/CameraKpi$KPI;J)V

    .line 94
    :cond_0
    iget-object v3, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .end local v0           #listener:Lcom/motorola/camera/CameraKpi$CameraKpiListener;
    .end local v2           #timeDiff:Ljava/lang/Long;
    :cond_1
    return-void
.end method

.method public setKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/ArrayList;)V
    .locals 4
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/CameraKpi$CameraKpiListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraKpi$KPI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p2, kpiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraKpi$KPI;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_2

    .line 61
    :cond_0
    sget-boolean v2, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "CameraKpiTag"

    const-string v3, "listener not setup "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_1
    return-void

    .line 65
    :cond_2
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/CameraKpi$KPI;

    .line 66
    .local v1, kpi:Lcom/motorola/camera/CameraKpi$KPI;
    iget-object v2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/util/HashMap;

    invoke-virtual {v2, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public startKpiRecord(Lcom/motorola/camera/CameraKpi$KPI;)V
    .locals 3
    .parameter "kpi"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    return-void
.end method

.method public unsetKpiListener(Lcom/motorola/camera/CameraKpi$CameraKpiListener;Ljava/util/ArrayList;)V
    .locals 3
    .parameter "listener"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/CameraKpi$CameraKpiListener;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/camera/CameraKpi$KPI;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 71
    .local p2, kpiList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/camera/CameraKpi$KPI;>;"
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 78
    :cond_0
    return-void

    .line 75
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/CameraKpi$KPI;

    .line 76
    .local v1, kpi:Lcom/motorola/camera/CameraKpi$KPI;
    iget-object v2, p0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
