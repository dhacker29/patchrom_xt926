.class public Lcom/motorola/camera/IconListPreference;
.super Lcom/motorola/camera/ListPreference;
.source "IconListPreference.java"


# instance fields
.field private mFeedbackMessages:[Ljava/lang/CharSequence;

.field private mFeedbackPrefs:Ljava/lang/String;

.field private mFeedbackTitles:[Ljava/lang/CharSequence;

.field private mFeedbackTopicIds:[Ljava/lang/CharSequence;

.field private mIconIds:[I

.field private mInUseIconId:I

.field private mNotInUseIconId:I

.field private mSingleIconId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    sget-object v2, Lcom/motorola/camera/R$styleable;->IconListPreference:[I

    invoke-virtual {p1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 43
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/IconListPreference;->mSingleIconId:I

    .line 45
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/IconListPreference;->mNotInUseIconId:I

    .line 47
    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/motorola/camera/IconListPreference;->mInUseIconId:I

    .line 49
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/camera/IconListPreference;->getIds(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/IconListPreference;->mIconIds:[I

    .line 51
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTitles:[Ljava/lang/CharSequence;

    .line 52
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackMessages:[Ljava/lang/CharSequence;

    .line 53
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTopicIds:[Ljava/lang/CharSequence;

    .line 55
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    return-void
.end method

.method private getIds(Landroid/content/res/Resources;I)[I
    .locals 5
    .parameter "res"
    .parameter "iconsRes"

    .prologue
    .line 82
    if-nez p2, :cond_0

    const/4 v2, 0x0

    .line 90
    :goto_0
    return-object v2

    .line 83
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 84
    .local v0, array:Landroid/content/res/TypedArray;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 85
    .local v3, n:I
    new-array v2, v3, [I

    .line 86
    .local v2, ids:[I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 87
    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    aput v4, v2, v1

    .line 86
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 89
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public filterUnsupported(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/motorola/camera/IconListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    .local v0, entryValues:[Ljava/lang/CharSequence;
    new-instance v5, Lcom/motorola/camera/IntArray;

    invoke-direct {v5}, Lcom/motorola/camera/IntArray;-><init>()V

    .line 97
    .local v5, iconIds:Lcom/motorola/camera/IntArray;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 98
    .local v1, feedbackMessages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v2, feedbackTitles:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 100
    .local v3, feedbackTopicIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    if-eqz p1, :cond_4

    .line 101
    const/4 v4, 0x0

    .local v4, i:I
    array-length v6, v0

    .local v6, len:I
    :goto_0
    if-ge v4, v6, :cond_4

    .line 102
    aget-object v7, v0, v4

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-ltz v7, :cond_3

    .line 103
    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mIconIds:[I

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mIconIds:[I

    aget v7, v7, v4

    invoke-virtual {v5, v7}, Lcom/motorola/camera/IntArray;->add(I)V

    .line 104
    :cond_0
    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackMessages:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackMessages:[Ljava/lang/CharSequence;

    aget-object v7, v7, v4

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_1
    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTitles:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTitles:[Ljava/lang/CharSequence;

    aget-object v7, v7, v4

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    :cond_2
    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTopicIds:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTopicIds:[Ljava/lang/CharSequence;

    aget-object v7, v7, v4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 109
    .end local v4           #i:I
    .end local v6           #len:I
    :cond_4
    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mIconIds:[I

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Lcom/motorola/camera/IntArray;->size()I

    move-result v7

    new-array v7, v7, [I

    invoke-virtual {v5, v7}, Lcom/motorola/camera/IntArray;->toArray([I)[I

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/camera/IconListPreference;->mIconIds:[I

    .line 110
    :cond_5
    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackMessages:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_6

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackMessages:[Ljava/lang/CharSequence;

    .line 112
    :cond_6
    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTitles:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_7

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTitles:[Ljava/lang/CharSequence;

    .line 114
    :cond_7
    iget-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTopicIds:[Ljava/lang/CharSequence;

    if-eqz v7, :cond_8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/CharSequence;

    iput-object v7, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTopicIds:[Ljava/lang/CharSequence;

    .line 117
    :cond_8
    invoke-super {p0, p1}, Lcom/motorola/camera/ListPreference;->filterUnsupported(Ljava/util/List;)V

    .line 118
    return-void
.end method

.method public getFeedbackMessage()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 137
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackPrefs:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 138
    .local v0, index:I
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackMessages:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 139
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackMessages:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    .line 141
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFeedbackPref()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackPrefs:Ljava/lang/String;

    return-object v0
.end method

.method public getFeedbackTitle()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 129
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackPrefs:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 130
    .local v0, index:I
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTitles:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTitles:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    .line 133
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFeedbackTopicId()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 145
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackPrefs:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/motorola/camera/IconListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 146
    .local v0, index:I
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTopicIds:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-le v1, v0, :cond_0

    .line 147
    iget-object v1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackTopicIds:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    .line 149
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIconIds()[I
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/motorola/camera/IconListPreference;->mIconIds:[I

    return-object v0
.end method

.method public getSingleIcon()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/motorola/camera/IconListPreference;->mSingleIconId:I

    return v0
.end method

.method public getUnUsedIcon()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/motorola/camera/IconListPreference;->mNotInUseIconId:I

    return v0
.end method

.method public getUsedIcon()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/motorola/camera/IconListPreference;->mInUseIconId:I

    return v0
.end method

.method public hasUsedIcon()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/motorola/camera/IconListPreference;->mNotInUseIconId:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/motorola/camera/IconListPreference;->mInUseIconId:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setFeedbackPref(Ljava/lang/String;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/motorola/camera/IconListPreference;->mFeedbackPrefs:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setIconIds([I)V
    .locals 0
    .parameter "iconIds"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/motorola/camera/IconListPreference;->mIconIds:[I

    .line 79
    return-void
.end method
