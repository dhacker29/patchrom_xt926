.class public abstract Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;
.super Landroid/os/Binder;
.source "IMotDevicePolicyManager.java"

# interfaces
.implements Lcom/motorola/motepm/IMotDevicePolicyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/IMotDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/motepm/IMotDevicePolicyManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.motorola.motepm.IMotDevicePolicyManager"

.field static final TRANSACTION_addEmailAccount:I = 0x21

.field static final TRANSACTION_configureVpn:I = 0x25

.field static final TRANSACTION_deleteAuthentecVPNConfig:I = 0x1e

.field static final TRANSACTION_deleteVpn:I = 0x26

.field static final TRANSACTION_enforcePasswordSet:I = 0xa

.field static final TRANSACTION_getActiveAdmins:I = 0x4

.field static final TRANSACTION_getActiveSyncID:I = 0x22

.field static final TRANSACTION_getAppBlackList:I = 0x35

.field static final TRANSACTION_getAppWhiteList:I = 0x39

.field static final TRANSACTION_getDeviceEncryptionStatus:I = 0x30

.field static final TRANSACTION_getDisabledPackages:I = 0x2d

.field static final TRANSACTION_getExternalStorageEncryption:I = 0x20

.field static final TRANSACTION_getExternalStorageEncryptionStatus:I = 0x2f

.field static final TRANSACTION_getManualDataSyncinRoaming:I = 0xd

.field static final TRANSACTION_getOwnerInfo:I = 0x3d

.field static final TRANSACTION_getPackageDisableInfo:I = 0x2e

.field static final TRANSACTION_getPasswordExpirationStatus:I = 0x19

.field static final TRANSACTION_getPasswordHistoryLength:I = 0x15

.field static final TRANSACTION_getPasswordMinimumComplexity:I = 0x11

.field static final TRANSACTION_getRecoveryPassword:I = 0x1c

.field static final TRANSACTION_getRemoveWarning:I = 0x5

.field static final TRANSACTION_getVPNSplitTunnelingStatus:I = 0x33

.field static final TRANSACTION_getVPNStatus:I = 0x32

.field static final TRANSACTION_getVersion:I = 0x1

.field static final TRANSACTION_getVpnByID:I = 0x27

.field static final TRANSACTION_hasGrantedPolicy:I = 0x13

.field static final TRANSACTION_installCertificate:I = 0x28

.field static final TRANSACTION_installPackage:I = 0x3a

.field static final TRANSACTION_isActivePasswordSufficient:I = 0x12

.field static final TRANSACTION_isActivePasswordSufficientForComplexity:I = 0xf

.field static final TRANSACTION_isAdminActive:I = 0x3

.field static final TRANSACTION_isAdminLocked:I = 0x3f

.field static final TRANSACTION_isAppWhiteListDisabled:I = 0x38

.field static final TRANSACTION_isPasswordNeedChangetoNotSimple:I = 0x9

.field static final TRANSACTION_isPasswordRecoveryEnabled:I = 0x17

.field static final TRANSACTION_isPasswordSetEnforced:I = 0xb

.field static final TRANSACTION_isPolicyAllowed:I = 0x2a

.field static final TRANSACTION_isPolicySupported:I = 0x31

.field static final TRANSACTION_provisionAuthentecVPNConfig:I = 0x1d

.field static final TRANSACTION_removeActiveAdmin:I = 0x6

.field static final TRANSACTION_removeEmailAccount:I = 0x23

.field static final TRANSACTION_reportExpirationWarningShow:I = 0x1a

.field static final TRANSACTION_reportPasswordChanged:I = 0x1b

.field static final TRANSACTION_reportPolicyEnforcedResult:I = 0x2c

.field static final TRANSACTION_setActiveAdmin:I = 0x2

.field static final TRANSACTION_setActivePasswordComplexity:I = 0xe

.field static final TRANSACTION_setActivePasswordSimpleState:I = 0x8

.field static final TRANSACTION_setAdminLocked:I = 0x3e

.field static final TRANSACTION_setAllowPolicies:I = 0x29

.field static final TRANSACTION_setAppBlackList:I = 0x34

.field static final TRANSACTION_setAppWhiteList:I = 0x36

.field static final TRANSACTION_setAppWhiteListDisabled:I = 0x37

.field static final TRANSACTION_setExternalStorageEncryption:I = 0x1f

.field static final TRANSACTION_setIntentDisabled:I = 0x7

.field static final TRANSACTION_setManualDataSyncinRoaming:I = 0xc

.field static final TRANSACTION_setOwnerInfo:I = 0x3c

.field static final TRANSACTION_setPasswordExpirationPeriod:I = 0x18

.field static final TRANSACTION_setPasswordHistoryLength:I = 0x14

.field static final TRANSACTION_setPasswordMinimumComplexity:I = 0x10

.field static final TRANSACTION_setPasswordRecoveryEnabled:I = 0x16

.field static final TRANSACTION_uninstallPackage:I = 0x3b

.field static final TRANSACTION_wipeData:I = 0x2b

.field static final TRANSACTION_wipeExternalStorageData:I = 0x24


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string v0, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p0, p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/motorola/motepm/IMotDevicePolicyManager;
    .locals 2
    .parameter "obj"

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    const/4 v0, 0x0

    .line 35
    :goto_0
    return-object v0

    .line 31
    :cond_0
    const-string v1, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/motorola/motepm/IMotDevicePolicyManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Lcom/motorola/motepm/IMotDevicePolicyManager;

    goto :goto_0

    .line 35
    :cond_1
    new-instance v0, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 11
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 873
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 47
    :sswitch_0
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 52
    :sswitch_1
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getVersion()Ljava/lang/String;

    move-result-object v5

    .line 54
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_2
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_0

    .line 63
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 69
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1

    move v1, v8

    .line 70
    .local v1, _arg1:Z
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setActiveAdmin(Landroid/content/ComponentName;Z)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 66
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1

    :cond_1
    move v1, v9

    .line 69
    goto :goto_2

    .line 76
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3

    .line 79
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 84
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v5

    .line 85
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v5, :cond_2

    move v9, v8

    :cond_2
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_3

    .line 91
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_4
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getActiveAdmins()Ljava/util/List;

    move-result-object v6

    .line 93
    .local v6, _result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto :goto_0

    .line 99
    .end local v6           #_result:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    :sswitch_5
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_4

    .line 102
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 108
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    .line 109
    sget-object v9, Landroid/os/RemoteCallback;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallback;

    .line 114
    .local v1, _arg1:Landroid/os/RemoteCallback;
    :goto_5
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getRemoveWarning(Landroid/content/ComponentName;Landroid/os/RemoteCallback;)V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 105
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/RemoteCallback;
    :cond_4
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_4

    .line 112
    :cond_5
    const/4 v1, 0x0

    .restart local v1       #_arg1:Landroid/os/RemoteCallback;
    goto :goto_5

    .line 120
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Landroid/os/RemoteCallback;
    :sswitch_6
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_6

    .line 123
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 128
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_6
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 126
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :cond_6
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_6

    .line 134
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_7
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_7

    .line 137
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 143
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_8

    move v1, v8

    .line 144
    .local v1, _arg1:Z
    :goto_8
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setIntentDisabled(Landroid/content/ComponentName;Z)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 140
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    :cond_7
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_7

    :cond_8
    move v1, v9

    .line 143
    goto :goto_8

    .line 150
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_8
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_9

    move v0, v8

    .line 153
    .local v0, _arg0:Z
    :goto_9
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setActivePasswordSimpleState(Z)V

    .line 154
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_9
    move v0, v9

    .line 152
    goto :goto_9

    .line 159
    :sswitch_9
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPasswordNeedChangetoNotSimple()Z

    move-result v5

    .line 161
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v5, :cond_a

    move v9, v8

    :cond_a
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v5           #_result:Z
    :sswitch_a
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_b

    move v0, v8

    .line 170
    .restart local v0       #_arg0:Z
    :goto_a
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->enforcePasswordSet(Z)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    :cond_b
    move v0, v9

    .line 169
    goto :goto_a

    .line 176
    :sswitch_b
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPasswordSetEnforced()Z

    move-result v5

    .line 178
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v5, :cond_c

    move v9, v8

    :cond_c
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 184
    .end local v5           #_result:Z
    :sswitch_c
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_d

    .line 187
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 193
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_e

    move v1, v8

    .line 194
    .restart local v1       #_arg1:Z
    :goto_c
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setManualDataSyncinRoaming(Landroid/content/ComponentName;Z)I

    move-result v5

    .line 195
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 190
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    .end local v5           #_result:I
    :cond_d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_b

    :cond_e
    move v1, v9

    .line 193
    goto :goto_c

    .line 201
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_d
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_10

    .line 204
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 209
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_d
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getManualDataSyncinRoaming(Landroid/content/ComponentName;)Z

    move-result v5

    .line 210
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    if-eqz v5, :cond_f

    move v9, v8

    :cond_f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_10
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_d

    .line 216
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_e
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setActivePasswordComplexity(I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 225
    .end local v0           #_arg0:I
    :sswitch_f
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isActivePasswordSufficientForComplexity()Z

    move-result v5

    .line 227
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v5, :cond_11

    move v9, v8

    :cond_11
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 233
    .end local v5           #_result:Z
    :sswitch_10
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_12

    .line 236
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 242
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 243
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setPasswordMinimumComplexity(Landroid/content/ComponentName;I)I

    move-result v5

    .line 244
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 245
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 239
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:I
    :cond_12
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_e

    .line 250
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_11
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_13

    .line 253
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 258
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_f
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getPasswordMinimumComplexity(Landroid/content/ComponentName;)I

    move-result v5

    .line 259
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 256
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_13
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_f

    .line 265
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_12
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isActivePasswordSufficient()Z

    move-result v5

    .line 267
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v5, :cond_14

    move v9, v8

    :cond_14
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 273
    .end local v5           #_result:Z
    :sswitch_13
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_16

    .line 276
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 282
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 283
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 284
    .restart local v5       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 285
    if-eqz v5, :cond_15

    move v9, v8

    :cond_15
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 279
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_16
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_10

    .line 290
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_14
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_17

    .line 293
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 299
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 300
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setPasswordHistoryLength(Landroid/content/ComponentName;I)I

    move-result v5

    .line 301
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 296
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:I
    :cond_17
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_11

    .line 307
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_15
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_18

    .line 310
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 315
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_12
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v5

    .line 316
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 317
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 313
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_18
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_12

    .line 322
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_16
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_19

    .line 325
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 331
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_13
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1a

    move v1, v8

    .line 332
    .local v1, _arg1:Z
    :goto_14
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setPasswordRecoveryEnabled(Landroid/content/ComponentName;Z)I

    move-result v5

    .line 333
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 334
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 328
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    .end local v5           #_result:I
    :cond_19
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_13

    :cond_1a
    move v1, v9

    .line 331
    goto :goto_14

    .line 339
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_17
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1c

    .line 342
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 347
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_15
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPasswordRecoveryEnabled(Landroid/content/ComponentName;)Z

    move-result v5

    .line 348
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 349
    if-eqz v5, :cond_1b

    move v9, v8

    :cond_1b
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 345
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_1c
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_15

    .line 354
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_18
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1d

    .line 357
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 363
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 364
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setPasswordExpirationPeriod(Landroid/content/ComponentName;I)I

    move-result v5

    .line 365
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 366
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 360
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:I
    :cond_1d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_16

    .line 371
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_19
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getPasswordExpirationStatus()I

    move-result v5

    .line 373
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 379
    .end local v5           #_result:I
    :sswitch_1a
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->reportExpirationWarningShow()V

    .line 381
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 386
    :sswitch_1b
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->reportPasswordChanged()V

    .line 388
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 393
    :sswitch_1c
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_1e

    .line 396
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 401
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_17
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getRecoveryPassword(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    .line 402
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 399
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Ljava/lang/String;
    :cond_1e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_17

    .line 408
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_1d
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 412
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 413
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->provisionAuthentecVPNConfig([BI)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 419
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    :sswitch_1e
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->deleteAuthentecVPNConfig()V

    .line 421
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 426
    :sswitch_1f
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 428
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_1f

    .line 429
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 435
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_18
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_20

    move v1, v8

    .line 436
    .local v1, _arg1:Z
    :goto_19
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setExternalStorageEncryption(Landroid/content/ComponentName;Z)I

    move-result v5

    .line 437
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 438
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 432
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    .end local v5           #_result:I
    :cond_1f
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_18

    :cond_20
    move v1, v9

    .line 435
    goto :goto_19

    .line 443
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_20
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 445
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_22

    .line 446
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 451
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_1a
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getExternalStorageEncryption(Landroid/content/ComponentName;)Z

    move-result v5

    .line 452
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    if-eqz v5, :cond_21

    move v9, v8

    :cond_21
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 449
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_22
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1a

    .line 458
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_21
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 460
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_23

    .line 461
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 466
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_1b
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->addEmailAccount(Landroid/os/Bundle;)V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 464
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_23
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_1b

    .line 472
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_22
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getActiveSyncID()Ljava/lang/String;

    move-result-object v5

    .line 474
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 475
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 480
    .end local v5           #_result:Ljava/lang/String;
    :sswitch_23
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 483
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->removeEmailAccount(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 489
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_24
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 492
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->wipeExternalStorageData(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 498
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_25
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_24

    .line 501
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 506
    .local v0, _arg0:Landroid/os/Bundle;
    :goto_1c
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->configureVpn(Landroid/os/Bundle;)V

    .line 507
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 504
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_24
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_1c

    .line 512
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_26
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 514
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_25

    .line 515
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 520
    .restart local v0       #_arg0:Landroid/os/Bundle;
    :goto_1d
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->deleteVpn(Landroid/os/Bundle;)V

    .line 521
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 518
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_25
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_1d

    .line 526
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_27
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_26

    .line 529
    sget-object v9, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 534
    .restart local v0       #_arg0:Landroid/os/Bundle;
    :goto_1e
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getVpnByID(Landroid/os/Bundle;)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 532
    .end local v0           #_arg0:Landroid/os/Bundle;
    :cond_26
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/os/Bundle;
    goto :goto_1e

    .line 540
    .end local v0           #_arg0:Landroid/os/Bundle;
    :sswitch_28
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 542
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 544
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 548
    .local v3, _arg2:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 549
    .local v4, _arg3:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->installCertificate([BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 555
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:Ljava/lang/String;
    .end local v4           #_arg3:Ljava/lang/String;
    :sswitch_29
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_27

    .line 558
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 564
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_1f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 566
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_28

    move v3, v8

    .line 567
    .local v3, _arg2:Z
    :goto_20
    invoke-virtual {p0, v0, v1, v3}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setAllowPolicies(Landroid/content/ComponentName;IZ)I

    move-result v5

    .line 568
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 569
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 561
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:Z
    .end local v5           #_result:I
    :cond_27
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_1f

    .restart local v1       #_arg1:I
    :cond_28
    move v3, v9

    .line 566
    goto :goto_20

    .line 574
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    :sswitch_2a
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2a

    .line 577
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 583
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_21
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 584
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPolicyAllowed(Landroid/content/ComponentName;I)Z

    move-result v5

    .line 585
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 586
    if-eqz v5, :cond_29

    move v9, v8

    :cond_29
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 580
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v5           #_result:Z
    :cond_2a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_21

    .line 591
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_2b
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2b

    move v0, v8

    .line 595
    .local v0, _arg0:Z
    :goto_22
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2c

    move v1, v8

    .line 596
    .local v1, _arg1:Z
    :goto_23
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->wipeData(ZZ)V

    .line 597
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v1           #_arg1:Z
    :cond_2b
    move v0, v9

    .line 593
    goto :goto_22

    .restart local v0       #_arg0:Z
    :cond_2c
    move v1, v9

    .line 595
    goto :goto_23

    .line 602
    .end local v0           #_arg0:Z
    :sswitch_2c
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 604
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2d

    .line 605
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 611
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 613
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 615
    .local v3, _arg2:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_2e

    move v4, v8

    .line 616
    .local v4, _arg3:Z
    :goto_25
    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->reportPolicyEnforcedResult(Landroid/content/ComponentName;IIZ)V

    .line 617
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 608
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    .end local v4           #_arg3:Z
    :cond_2d
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_24

    .restart local v1       #_arg1:I
    .restart local v3       #_arg2:I
    :cond_2e
    move v4, v9

    .line 615
    goto :goto_25

    .line 622
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:I
    .end local v3           #_arg2:I
    :sswitch_2d
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getDisabledPackages()Ljava/util/List;

    move-result-object v7

    .line 624
    .local v7, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 625
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 630
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2e
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getPackageDisableInfo(Ljava/lang/String;)I

    move-result v5

    .line 634
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 635
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 640
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v5           #_result:I
    :sswitch_2f
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 641
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getExternalStorageEncryptionStatus()I

    move-result v5

    .line 642
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 648
    .end local v5           #_result:I
    :sswitch_30
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getDeviceEncryptionStatus()I

    move-result v5

    .line 650
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 656
    .end local v5           #_result:I
    :sswitch_31
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 659
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isPolicySupported(I)Z

    move-result v5

    .line 660
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 661
    if-eqz v5, :cond_2f

    move v9, v8

    :cond_2f
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 666
    .end local v0           #_arg0:I
    .end local v5           #_result:Z
    :sswitch_32
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getVPNStatus()I

    move-result v5

    .line 668
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 669
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 674
    .end local v5           #_result:I
    :sswitch_33
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getVPNSplitTunnelingStatus()I

    move-result v5

    .line 676
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 682
    .end local v5           #_result:I
    :sswitch_34
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_30

    .line 685
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 691
    .local v0, _arg0:Landroid/content/ComponentName;
    :goto_26
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 692
    .local v2, _arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setAppBlackList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v5

    .line 693
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 694
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 688
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #_result:I
    :cond_30
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_26

    .line 699
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_35
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_31

    .line 702
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 707
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_27
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getAppBlackList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v7

    .line 708
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 709
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 705
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_31
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_27

    .line 714
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_36
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_32

    .line 717
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 723
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_28
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v2

    .line 724
    .restart local v2       #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, v0, v2}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setAppWhiteList(Landroid/content/ComponentName;Ljava/util/List;)I

    move-result v5

    .line 725
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 726
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 720
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v2           #_arg1:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #_result:I
    :cond_32
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_28

    .line 731
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_37
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 733
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_33

    .line 734
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 739
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_29
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setAppWhiteListDisabled(Landroid/content/ComponentName;)I

    move-result v5

    .line 740
    .restart local v5       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 741
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 737
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:I
    :cond_33
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_29

    .line 746
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_38
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 748
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_35

    .line 749
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 754
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2a
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isAppWhiteListDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    .line 755
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 756
    if-eqz v5, :cond_34

    move v9, v8

    :cond_34
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 752
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_35
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2a

    .line 761
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_39
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 763
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_36

    .line 764
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 769
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2b
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getAppWhiteList(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v7

    .line 770
    .restart local v7       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 771
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 767
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v7           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_36
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2b

    .line 776
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3a
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 778
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_37

    .line 779
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 785
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2c
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 788
    .restart local v3       #_arg2:I
    invoke-virtual {p0, v0, v1, v3}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->installPackage(Landroid/content/ComponentName;Ljava/lang/String;I)V

    .line 789
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 782
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_arg2:I
    :cond_37
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2c

    .line 794
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3b
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 796
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_38

    .line 797
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 803
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2d
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 804
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->uninstallPackage(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 800
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Ljava/lang/String;
    :cond_38
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2d

    .line 810
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3c
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_39

    .line 813
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 819
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2e
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 820
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setOwnerInfo(Landroid/content/ComponentName;Ljava/lang/String;)I

    move-result v5

    .line 821
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 822
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 816
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v5           #_result:I
    :cond_39
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2e

    .line 827
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3d
    const-string v9, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 829
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3a

    .line 830
    sget-object v9, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 835
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_2f
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->getOwnerInfo(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v5

    .line 836
    .local v5, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 837
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 833
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Ljava/lang/String;
    :cond_3a
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_2f

    .line 842
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3e
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 844
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3b

    .line 845
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 851
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_30
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3c

    move v1, v8

    .line 852
    .local v1, _arg1:Z
    :goto_31
    invoke-virtual {p0, v0, v1}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->setAdminLocked(Landroid/content/ComponentName;Z)I

    move-result v5

    .line 853
    .local v5, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 854
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 848
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v1           #_arg1:Z
    .end local v5           #_result:I
    :cond_3b
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_30

    :cond_3c
    move v1, v9

    .line 851
    goto :goto_31

    .line 859
    .end local v0           #_arg0:Landroid/content/ComponentName;
    :sswitch_3f
    const-string v10, "com.motorola.motepm.IMotDevicePolicyManager"

    invoke-virtual {p2, v10}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    if-eqz v10, :cond_3e

    .line 862
    sget-object v10, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v10, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 867
    .restart local v0       #_arg0:Landroid/content/ComponentName;
    :goto_32
    invoke-virtual {p0, v0}, Lcom/motorola/motepm/IMotDevicePolicyManager$Stub;->isAdminLocked(Landroid/content/ComponentName;)Z

    move-result v5

    .line 868
    .local v5, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 869
    if-eqz v5, :cond_3d

    move v9, v8

    :cond_3d
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 865
    .end local v0           #_arg0:Landroid/content/ComponentName;
    .end local v5           #_result:Z
    :cond_3e
    const/4 v0, 0x0

    .restart local v0       #_arg0:Landroid/content/ComponentName;
    goto :goto_32

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x30 -> :sswitch_30
        0x31 -> :sswitch_31
        0x32 -> :sswitch_32
        0x33 -> :sswitch_33
        0x34 -> :sswitch_34
        0x35 -> :sswitch_35
        0x36 -> :sswitch_36
        0x37 -> :sswitch_37
        0x38 -> :sswitch_38
        0x39 -> :sswitch_39
        0x3a -> :sswitch_3a
        0x3b -> :sswitch_3b
        0x3c -> :sswitch_3c
        0x3d -> :sswitch_3d
        0x3e -> :sswitch_3e
        0x3f -> :sswitch_3f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
