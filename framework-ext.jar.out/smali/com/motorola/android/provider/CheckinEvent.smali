.class public final Lcom/motorola/android/provider/CheckinEvent;
.super Lcom/motorola/data/event/api/Event;
.source "CheckinEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "segmentName"
    .parameter "version"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/motorola/data/event/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "tag"
    .parameter "segmentName"
    .parameter "version"
    .parameter "timestamp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct/range {p0 .. p5}, Lcom/motorola/data/event/api/Event;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 57
    return-void
.end method


# virtual methods
.method public publish(Ljava/lang/Object;)V
    .locals 7
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 60
    instance-of v4, p1, Landroid/content/ContentResolver;

    if-nez v4, :cond_0

    .line 61
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "CheckinEvent:publish input object has to be of type ContentResolver"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v3

    .line 66
    .local v3, tag:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->serializeEvent()Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, serializedEvent:Ljava/lang/String;
    check-cast p1, Landroid/content/ContentResolver;

    .end local p1
    invoke-static {p1, v3, v2}, Lcom/motorola/android/provider/Checkin;->logEvent(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    return-void

    .line 68
    .end local v2           #serializedEvent:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 69
    .local v1, ie:Ljava/lang/IllegalArgumentException;
    const-string v4, "Checkin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckinEvent:publish Cannot publish event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    throw v1

    .line 71
    .end local v1           #ie:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "Checkin"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckinEvent:publish Cannot publish event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/android/provider/CheckinEvent;->getTagName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    throw v0
.end method
