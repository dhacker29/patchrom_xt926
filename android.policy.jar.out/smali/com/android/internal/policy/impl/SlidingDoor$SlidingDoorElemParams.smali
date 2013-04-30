.class public Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;
.super Ljava/lang/Object;
.source "SlidingDoor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/SlidingDoor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SlidingDoorElemParams"
.end annotation


# static fields
.field private static final OPEN_POS_VARIATIONS:I = 0x2


# instance fields
.field mAccelMoveK:F

.field mBuildCacheOnce:Z

.field mElement_ClosedOffset:I

.field mElement_OpenOffset:I

.field mElement_OpenOffsets:[I

.field mElement_OtherDimOffset:I

.field mFades:Z

.field mIsClosedAtStart:Z

.field mLead:Z

.field mLeadId:I

.field mMoveDelayDistance:I

.field mName:Ljava/lang/String;

.field mVisibleOnClose:Z

.field mVisibleOnOpen:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/SlidingDoor;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/SlidingDoor;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    iput-object p1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    .line 78
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    .line 79
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    .line 80
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    .line 81
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    .line 82
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mMoveDelayDistance:I

    .line 83
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    .line 84
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    .line 85
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    .line 86
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    .line 87
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    .line 88
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mBuildCacheOnce:Z

    .line 92
    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLeadId:I

    .line 94
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    .line 97
    return-void
.end method

.method constructor <init>(Lcom/android/internal/policy/impl/SlidingDoor;Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;)V
    .locals 5
    .parameter
    .parameter "params"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->this$0:Lcom/android/internal/policy/impl/SlidingDoor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    .line 78
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    .line 79
    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    .line 80
    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    .line 81
    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    .line 82
    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mMoveDelayDistance:I

    .line 83
    const/high16 v1, 0x3f80

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    .line 84
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    .line 86
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    .line 87
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    .line 88
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mBuildCacheOnce:Z

    .line 92
    iput v2, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLeadId:I

    .line 94
    new-array v1, v4, [I

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    .line 101
    iget-object v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mName:Ljava/lang/String;

    .line 102
    iget-boolean v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mIsClosedAtStart:Z

    .line 103
    iget v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffset:I

    .line 104
    iget v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_ClosedOffset:I

    .line 105
    iget v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mMoveDelayDistance:I

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mMoveDelayDistance:I

    .line 106
    iget v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mAccelMoveK:F

    .line 107
    iget-boolean v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mFades:Z

    .line 108
    iget-boolean v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnOpen:Z

    .line 109
    iget-boolean v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mVisibleOnClose:Z

    .line 110
    iget-boolean v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLead:Z

    .line 111
    iget v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OtherDimOffset:I

    .line 112
    iget-boolean v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mBuildCacheOnce:Z

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mBuildCacheOnce:Z

    .line 113
    iget v1, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLeadId:I

    iput v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mLeadId:I

    .line 115
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 116
    iget-object v1, p0, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    iget-object v2, p2, Lcom/android/internal/policy/impl/SlidingDoor$SlidingDoorElemParams;->mElement_OpenOffsets:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method
