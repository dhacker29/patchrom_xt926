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
    .line 225
    invoke-direct/range {p0 .. p5}, Landroid/inputmethodservice/Keyboard$Key;-><init>(Landroid/content/res/Resources;Landroid/inputmethodservice/Keyboard$Row;IILandroid/content/res/XmlResourceParser;)V

    .line 221
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 226
    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupCharacters:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 228
    const/4 v0, 0x0

    iput v0, p0, Landroid/inputmethodservice/Keyboard$Key;->popupResId:I

    .line 230
    :cond_0
    return-void
.end method

.method private sqDist(II)I
    .locals 2
    .parameter "a0"
    .parameter "a1"

    .prologue
    .line 328
    sub-int v0, p2, p1

    .line 329
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
    .line 333
    sub-int v0, p3, p1

    .line 334
    .local v0, xDist:I
    sub-int v1, p4, p2

    .line 335
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
    .line 319
    if-ge p1, p2, :cond_0

    .line 320
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    .line 321
    :cond_0
    if-le p1, p3, :cond_1

    .line 322
    const/4 v0, 0x2

    goto :goto_0

    .line 324
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method enableShiftLock()V
    .locals 1

    .prologue
    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    .line 238
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

    .line 254
    iget-boolean v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    if-nez v2, :cond_0

    .line 265
    :goto_0
    return v1

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->codes:[I

    aget v0, v2, v1

    .line 258
    .local v0, code:I
    if-eq v0, v4, :cond_1

    if-ne v0, v3, :cond_4

    .line 259
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    div-int/lit8 v1, v1, 0xa

    sub-int/2addr p2, v1

    .line 260
    if-ne v0, v4, :cond_2

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    add-int/2addr p1, v1

    .line 261
    :cond_2
    if-ne v0, v3, :cond_3

    iget v1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    div-int/lit8 v1, v1, 0x6

    sub-int/2addr p1, v1

    .line 265
    :cond_3
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/inputmethodservice/Keyboard$Key;->isInside(II)Z

    move-result v1

    goto :goto_0

    .line 262
    :cond_4
    const/16 v1, 0x20

    if-ne v0, v1, :cond_3

    .line 263
    sget v1, Lcom/android/internal/widget/PasswordEntryKeyboard;->sSpacebarVerticalCorrection:I

    add-int/2addr p2, v1

    goto :goto_1
.end method

.method public onReleased(Z)V
    .locals 1
    .parameter "inside"

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mShiftLockEnabled:Z

    if-nez v0, :cond_0

    .line 243
    invoke-super {p0, p1}, Landroid/inputmethodservice/Keyboard$Key;->onReleased(Z)V

    .line 247
    :goto_0
    return-void

    .line 245
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
    .line 233
    iput-boolean p1, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->mEnabled:Z

    .line 234
    return-void
.end method

.method public squaredDistanceFrom(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 280
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    add-int/2addr v4, v5

    invoke-direct {p0, p1, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->zone(III)I

    move-result v1

    .line 281
    .local v1, xZone:I
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    add-int/2addr v4, v5

    invoke-direct {p0, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->zone(III)I

    move-result v2

    .line 283
    .local v2, yZone:I
    mul-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v1

    packed-switch v3, :pswitch_data_0

    .line 313
    const/4 v0, 0x0

    .line 315
    .local v0, dist2:I
    :goto_0
    return v0

    .line 285
    .end local v0           #dist2:I
    :pswitch_0
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(IIII)I

    move-result v0

    .line 286
    .restart local v0       #dist2:I
    goto :goto_0

    .line 288
    .end local v0           #dist2:I
    :pswitch_1
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    invoke-direct {p0, p2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(II)I

    move-result v0

    .line 289
    .restart local v0       #dist2:I
    goto :goto_0

    .line 291
    .end local v0           #dist2:I
    :pswitch_2
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(IIII)I

    move-result v0

    .line 292
    .restart local v0       #dist2:I
    goto :goto_0

    .line 294
    .end local v0           #dist2:I
    :pswitch_3
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(II)I

    move-result v0

    .line 295
    .restart local v0       #dist2:I
    goto :goto_0

    .line 297
    .end local v0           #dist2:I
    :pswitch_4
    const/4 v0, 0x0

    .line 298
    .restart local v0       #dist2:I
    goto :goto_0

    .line 300
    .end local v0           #dist2:I
    :pswitch_5
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->width:I

    add-int/2addr v3, v4

    invoke-direct {p0, p1, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(II)I

    move-result v0

    .line 301
    .restart local v0       #dist2:I
    goto :goto_0

    .line 303
    .end local v0           #dist2:I
    :pswitch_6
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->x:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v5, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    add-int/2addr v4, v5

    invoke-direct {p0, p1, p2, v3, v4}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(IIII)I

    move-result v0

    .line 304
    .restart local v0       #dist2:I
    goto :goto_0

    .line 306
    .end local v0           #dist2:I
    :pswitch_7
    iget v3, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->y:I

    iget v4, p0, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->height:I

    add-int/2addr v3, v4

    invoke-direct {p0, p2, v3}, Lcom/android/internal/widget/PasswordEntryKeyboard$LatinKey;->sqDist(II)I

    move-result v0

    .line 307
    .restart local v0       #dist2:I
    goto :goto_0

    .line 309
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

    .line 310
    .restart local v0       #dist2:I
    goto :goto_0

    .line 283
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
