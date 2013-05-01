.class Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;
.super Landroid/inputmethodservice/Keyboard$Key;
.source "PasswordEntryKeyboard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/PasswordEntryKeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LatinKey"
.end annotation


# instance fields
.field private mEnabled:Z

.field private mShiftLockEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V
    .locals 1
    .parameter "res"
    .parameter "parent"
    .parameter "x"
    .parameter "y"
    .parameter "parser"

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    :cond_0
    return-void
.end method

.method private sqDist(II)I
    .locals 2
    .parameter "a0"
    .parameter "a1"

    .prologue
    sub-int v0, p2, p1

    .local v0, dist:I
    mul-int v1, v0, v0

    return v1
.end method

.method private sqDist(IIII)I
    .locals 4
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    sub-int v0, p3, p1

    .local v0, xDist:I
    sub-int v1, p4, p2

    .local v1, yDist:I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method

.method private zone(III)I
    .locals 1
    .parameter "a"
    .parameter "a0"
    .parameter "a1"

    .prologue
    if-ge p1, p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    if-le p1, p3, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method enableShiftLock()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    return-void
.end method

.method public isInside(II)Z
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    const/4 v3, -0x5

    iget-boolean v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v0, v2, v1

    .local v0, code:I
    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_4

    :cond_1
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    if-ne v0, v4, :cond_2

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    :cond_2
    if-ne v0, v3, :cond_3

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    goto :goto_0

    :cond_4
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    sget v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_1
.end method

.method public onReleased(Z)V
    .locals 1
    .parameter "inside"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->pressed:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    return-void
.end method

.method public squaredDistanceFrom(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    add-int/2addr v4, v5

    invoke-direct {p0, p1, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->zone(III)I

    move-result v1

    .local v1, xZone:I
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    add-int/2addr v4, v5

    invoke-direct {p0, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->zone(III)I

    move-result v2

    .local v2, yZone:I
    mul-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v1

    packed-switch v3, :pswitch_data_0

    const/4 v0, 0x0

    .local v0, dist2:I
    :goto_0
    return v0

    .end local v0           #dist2:I
    :pswitch_0
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(IIII)I

    move-result v0

    .restart local v0       #dist2:I
    goto :goto_0

    .end local v0           #dist2:I
    :pswitch_1
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    invoke-direct {p0, p2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(II)I

    move-result v0

    .restart local v0       #dist2:I
    goto :goto_0

    .end local v0           #dist2:I
    :pswitch_2
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(IIII)I

    move-result v0

    .restart local v0       #dist2:I
    goto :goto_0

    .end local v0           #dist2:I
    :pswitch_3
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(II)I

    move-result v0

    .restart local v0       #dist2:I
    goto :goto_0

    .end local v0           #dist2:I
    :pswitch_4
    const/4 v0, 0x0

    .restart local v0       #dist2:I
    goto :goto_0

    .end local v0           #dist2:I
    :pswitch_5
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    add-int/2addr v3, v4

    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(II)I

    move-result v0

    .restart local v0       #dist2:I
    goto :goto_0

    .end local v0           #dist2:I
    :pswitch_6
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    add-int/2addr v4, v5

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(IIII)I

    move-result v0

    .restart local v0       #dist2:I
    goto :goto_0

    .end local v0           #dist2:I
    :pswitch_7
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    add-int/2addr v3, v4

    invoke-direct {p0, p2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(II)I

    move-result v0

    .restart local v0       #dist2:I
    goto :goto_0

    .end local v0           #dist2:I
    :pswitch_8
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    add-int/2addr v4, v5

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(IIII)I

    move-result v0

    .restart local v0       #dist2:I
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
