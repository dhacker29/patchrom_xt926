.class Lcom/motorola/camera/CameraRoll$SortComparator;
.super Ljava/lang/Object;
.source "CameraRoll.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/CameraRoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/motorola/camera/CameraRoll$CameraData;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/camera/CameraRoll;


# direct methods
.method private constructor <init>(Lcom/motorola/camera/CameraRoll;)V
    .locals 0
    .parameter

    .prologue
    .line 281
    iput-object p1, p0, Lcom/motorola/camera/CameraRoll$SortComparator;->this$0:Lcom/motorola/camera/CameraRoll;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/CameraRoll;Lcom/motorola/camera/CameraRoll$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    invoke-direct {p0, p1}, Lcom/motorola/camera/CameraRoll$SortComparator;-><init>(Lcom/motorola/camera/CameraRoll;)V

    return-void
.end method


# virtual methods
.method public compare(Lcom/motorola/camera/CameraRoll$CameraData;Lcom/motorola/camera/CameraRoll$CameraData;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 285
    #getter for: Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J
    invoke-static {p1}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1100(Lcom/motorola/camera/CameraRoll$CameraData;)J

    move-result-wide v0

    #getter for: Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J
    invoke-static {p2}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1100(Lcom/motorola/camera/CameraRoll$CameraData;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 286
    const/4 v0, 0x1

    .line 291
    :goto_0
    return v0

    .line 288
    :cond_0
    #getter for: Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J
    invoke-static {p1}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1100(Lcom/motorola/camera/CameraRoll$CameraData;)J

    move-result-wide v0

    #getter for: Lcom/motorola/camera/CameraRoll$CameraData;->dateTaken:J
    invoke-static {p2}, Lcom/motorola/camera/CameraRoll$CameraData;->access$1100(Lcom/motorola/camera/CameraRoll$CameraData;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 289
    const/4 v0, -0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 281
    check-cast p1, Lcom/motorola/camera/CameraRoll$CameraData;

    .end local p1
    check-cast p2, Lcom/motorola/camera/CameraRoll$CameraData;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/motorola/camera/CameraRoll$SortComparator;->compare(Lcom/motorola/camera/CameraRoll$CameraData;Lcom/motorola/camera/CameraRoll$CameraData;)I

    move-result v0

    return v0
.end method
