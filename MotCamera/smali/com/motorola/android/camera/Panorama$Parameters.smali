.class public Lcom/motorola/android/camera/Panorama$Parameters;
.super Ljava/lang/Object;
.source "Panorama.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/camera/Panorama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Parameters"
.end annotation


# instance fields
.field private mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/motorola/android/camera/Panorama;


# direct methods
.method private constructor <init>(Lcom/motorola/android/camera/Panorama;)V
    .locals 1
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/motorola/android/camera/Panorama$Parameters;->this$0:Lcom/motorola/android/camera/Panorama;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 565
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    .line 566
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/camera/Panorama;Lcom/motorola/android/camera/Panorama$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 561
    invoke-direct {p0, p1}, Lcom/motorola/android/camera/Panorama$Parameters;-><init>(Lcom/motorola/android/camera/Panorama;)V

    return-void
.end method


# virtual methods
.method public flatten()Ljava/lang/String;
    .locals 4

    .prologue
    .line 577
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    .local v0, flattened:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 579
    .local v2, k:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    iget-object v3, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 585
    .end local v2           #k:Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 586
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 651
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    .line 661
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getMaxShotNumber()I
    .locals 1

    .prologue
    .line 726
    const-string v0, "supported-max-shot-number"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getPanoramaMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    const-string v0, "panorama-mode"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPanoramaResolution()Lcom/motorola/android/camera/Panorama$Size;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 681
    const-string v3, "panorama-resolution"

    invoke-virtual {p0, v3}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 682
    .local v1, pair:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object v2

    .line 684
    :cond_1
    const-string v3, "x"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, dims:[Ljava/lang/String;
    array-length v3, v0

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 688
    new-instance v2, Lcom/motorola/android/camera/Panorama$Size;

    iget-object v3, p0, Lcom/motorola/android/camera/Panorama$Parameters;->this$0:Lcom/motorola/android/camera/Panorama;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/motorola/android/camera/Panorama$Size;-><init>(Lcom/motorola/android/camera/Panorama;II)V

    goto :goto_0
.end method

.method public getPanoramaType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 762
    const-string v0, "panorama-type"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShotNumber()I
    .locals 1

    .prologue
    .line 717
    const-string v0, "shot-number"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSupportedPanoramaMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 771
    const-string v0, "supported-panorama-mode"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedPanoramaResolution()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    const-string v0, "supported-panorama-resolution"

    invoke-virtual {p0, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 612
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    return-void
.end method

.method public set(Ljava/lang/String;I)V
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/16 v3, 0x3d

    const/16 v2, 0x3b

    const/4 v1, -0x1

    .line 622
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 623
    :cond_0
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ;)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :goto_0
    return-void

    .line 626
    :cond_1
    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 627
    :cond_2
    const-string v0, "Panorama"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" contains invalid character (= or ;)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 631
    :cond_3
    iget-object v0, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setPanoramaMode(Ljava/lang/String;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 735
    const-string v0, "panorama-mode"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/Panorama$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    return-void
.end method

.method public setPanoramaResolution(II)V
    .locals 3
    .parameter "width"
    .parameter "height"

    .prologue
    .line 671
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, v:Ljava/lang/String;
    const-string v1, "panorama-resolution"

    invoke-virtual {p0, v1, v0}, Lcom/motorola/android/camera/Panorama$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    return-void
.end method

.method public setPanoramaType(Ljava/lang/String;)V
    .locals 1
    .parameter "type"

    .prologue
    .line 753
    const-string v0, "panorama-type"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/Panorama$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return-void
.end method

.method public setShotNumber(I)V
    .locals 1
    .parameter "number"

    .prologue
    .line 708
    const-string v0, "shot-number"

    invoke-virtual {p0, v0, p1}, Lcom/motorola/android/camera/Panorama$Parameters;->set(Ljava/lang/String;I)V

    .line 709
    return-void
.end method

.method public unflatten(Ljava/lang/String;)V
    .locals 9
    .parameter "flattened"

    .prologue
    .line 598
    iget-object v6, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    .line 599
    const-string v6, ";"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 600
    .local v5, pairs:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v0, v1

    .line 601
    .local v4, p:Ljava/lang/String;
    const-string v6, "="

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 602
    .local v2, kv:[Ljava/lang/String;
    array-length v6, v2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    .line 603
    iget-object v6, p0, Lcom/motorola/android/camera/Panorama$Parameters;->mMap:Ljava/util/HashMap;

    const/4 v7, 0x0

    aget-object v7, v2, v7

    const/4 v8, 0x1

    aget-object v8, v2, v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 605
    .end local v2           #kv:[Ljava/lang/String;
    .end local v4           #p:Ljava/lang/String;
    :cond_1
    return-void
.end method
