.class Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;
.super Ljava/lang/Object;
.source "MSimLockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->keyguardScreenCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 3
    .parameter "isForgotten"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean p1, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public goToLockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mForgotPattern:Z

    .line 98
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iput-boolean v2, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    .line 102
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 109
    const/4 v1, 0x1

    .line 110
    .local v1, isPukRequired:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 111
    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z
    invoke-static {v4, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 112
    :goto_1
    if-nez v1, :cond_3

    .line 115
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->stuckOnLockScreenBecauseSimMissing()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isPukUnlockScreenEnable()Z

    move-result v4

    if-nez v4, :cond_4

    .line 127
    :cond_1
    :goto_2
    return-void

    :cond_2
    move v1, v3

    .line 111
    goto :goto_1

    .line 110
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->isSecure()Z

    move-result v4

    if-nez v4, :cond_5

    .line 123
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_2

    .line 125
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    sget-object v4, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    goto :goto_2
.end method

.method public isInSecurityTimeoutPeriod()Z
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isInSecurityTimeoutPeriod()Z

    move-result v0

    return v0
.end method

.method public isScreenTurnedOn()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->isScreenTurnedOn()Z

    move-result v0

    return v0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsVerifyUnlockOnly:Z

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 2
    .parameter "authenticated"

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSavedState:Landroid/os/Parcelable;

    .line 254
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 226
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 230
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "config"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 196
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mRecreateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->post(Ljava/lang/Runnable;)Z

    .line 197
    return-void
.end method

.method public reportFailedUnlockAttempt()V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 261
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 262
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v1

    .line 266
    .local v1, failedAttempts:I
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v8

    const/high16 v9, 0x1

    if-ne v8, v9, :cond_1

    move v5, v6

    .line 269
    .local v5, usingPattern:Z
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;)I

    move-result v2

    .line 272
    .local v2, failedAttemptsBeforeWipe:I
    const/16 v0, 0xf

    .line 275
    .local v0, failedAttemptWarning:I
    if-lez v2, :cond_2

    sub-int v3, v2, v1

    .line 279
    .local v3, remainingBeforeWipe:I
    :goto_1
    const/4 v8, 0x5

    if-ge v3, v8, :cond_4

    .line 284
    if-lez v3, :cond_3

    .line 285
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6, v1, v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showAlmostAtWipeDialog(II)V

    .line 310
    :cond_0
    :goto_2
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v6, v6, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 311
    return-void

    .end local v0           #failedAttemptWarning:I
    .end local v2           #failedAttemptsBeforeWipe:I
    .end local v3           #remainingBeforeWipe:I
    .end local v5           #usingPattern:Z
    :cond_1
    move v5, v7

    .line 266
    goto :goto_0

    .line 275
    .restart local v0       #failedAttemptWarning:I
    .restart local v2       #failedAttemptsBeforeWipe:I
    .restart local v5       #usingPattern:Z
    :cond_2
    const v3, 0x7fffffff

    goto :goto_1

    .line 288
    .restart local v3       #remainingBeforeWipe:I
    :cond_3
    const-string v6, "MSimLockPatternKeyguardView"

    const-string v7, "Too many unlock attempts; device will be wiped!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showWipeDialog(I)V

    goto :goto_2

    .line 292
    :cond_4
    rem-int/lit8 v8, v1, 0x5

    if-nez v8, :cond_6

    move v4, v6

    .line 294
    .local v4, showTimeout:Z
    :goto_3
    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-boolean v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mEnableFallback:Z

    if-eqz v8, :cond_5

    .line 295
    const/16 v8, 0xf

    if-ne v1, v8, :cond_7

    .line 296
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showAlmostAtAccountLoginDialog()V

    .line 297
    const/4 v4, 0x0

    .line 306
    :cond_5
    :goto_4
    if-eqz v4, :cond_0

    .line 307
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v6}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->showTimeoutDialog()V

    goto :goto_2

    .end local v4           #showTimeout:Z
    :cond_6
    move v4, v7

    .line 292
    goto :goto_3

    .line 298
    .restart local v4       #showTimeout:Z
    :cond_7
    const/16 v8, 0x14

    if-lt v1, v8, :cond_5

    .line 300
    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v6}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 301
    iget-object v6, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v8, v8, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-virtual {v6, v8, v7}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 303
    const/4 v4, 0x0

    goto :goto_4
.end method

.method public reportSuccessfulRecoveryUnlockAttempt()V
    .locals 0

    .prologue
    .line 324
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 319
    return-void
.end method

.method public showToastMessage(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 240
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 4

    .prologue
    .line 200
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mSuppressBiometricUnlock:Z

    .line 202
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    if-eqz v1, :cond_1

    .line 203
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    const-wide/16 v2, 0x3e8

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->show(J)V

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mBiometricUnlock:Lcom/android/internal/policy/impl/BiometricSensorUnlock;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/BiometricSensorUnlock;->stop()Z

    .line 212
    :cond_1
    const/16 v1, 0x2710

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->pokeWakelock(I)V

    .line 213
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 222
    :goto_0
    return-void

    .line 217
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public updatePinUnlockCancel(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    const-string v3, "MSimLockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePinUnlockCancel sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-nez p1, :cond_2

    move v0, v1

    .line 141
    .local v0, otherSub:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->isSimPukLocked(I)Z
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_3

    .line 143
    :cond_1
    const-string v1, "MSimLockPatternKeyguardView"

    const-string v3, "Cannot cancel PIN dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, p1

    .line 153
    :goto_1
    return-void

    .end local v0           #otherSub:I
    :cond_2
    move v0, v2

    .line 139
    goto :goto_0

    .line 146
    .restart local v0       #otherSub:I
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aput-boolean v1, v3, p1

    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPinUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$300(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    goto :goto_1
.end method

.method public updatePukUnlockCancel(I)V
    .locals 6
    .parameter "subscription"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 163
    const-string v3, "MSimLockPatternKeyguardView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePukUnlockCancel sub :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-nez p1, :cond_0

    move v0, v1

    .line 166
    .local v0, otherSub:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->getSimState(I)Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v3, v0}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;I)Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne v3, v4, :cond_1

    .line 167
    const-string v1, "MSimLockPatternKeyguardView"

    const-string v3, "Cannot cancel PUK dialog"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, p1

    .line 177
    :goto_1
    return-void

    .end local v0           #otherSub:I
    :cond_0
    move v0, v2

    .line 164
    goto :goto_0

    .line 170
    .restart local v0       #otherSub:I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v3}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v3

    aput-boolean v1, v3, p1

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->mIsPukUnlockCancelled:[Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/MSimLockPatternKeyguardView;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    goto :goto_1
.end method
