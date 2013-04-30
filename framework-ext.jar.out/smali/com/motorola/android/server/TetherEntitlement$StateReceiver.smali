.class Lcom/motorola/android/server/TetherEntitlement$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TetherEntitlement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/TetherEntitlement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/server/TetherEntitlement;


# direct methods
.method private constructor <init>(Lcom/motorola/android/server/TetherEntitlement;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/server/TetherEntitlement;Lcom/motorola/android/server/TetherEntitlement$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;-><init>(Lcom/motorola/android/server/TetherEntitlement;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21
    .parameter "content"
    .parameter "intent"

    .prologue
    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, action:Ljava/lang/String;
    const-string v18, "motorola.intent.ENTITLEMENT_STATE_CHANGE"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v19

    const-string v20, "entitlement_state"

    invoke-virtual/range {v19 .. v20}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v19

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$102(Lcom/motorola/android/server/TetherEntitlement;I)I

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "APN_CHECK_STATE"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v20, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v20 .. v20}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v20

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v18

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 122
    const-string v18, "TetherEntitlement"

    const-string v19, "Entilement check fail."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "USB_TETHER_PENDING"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "vzw"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "entitlement_status_code"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 132
    .local v13, status_code:Ljava/lang/String;
    const-string v18, "TetherEntitlement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Status Code = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    if-eqz v13, :cond_2

    const-string v18, "-3"

    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->startSelfProvision()V
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$800(Lcom/motorola/android/server/TetherEntitlement;)V

    goto :goto_0

    .line 136
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "USB_TETHER_PENDING"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 142
    .end local v13           #status_code:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 143
    .local v14, tethered:[Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Ljava/lang/String;
    array-length v9, v3

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    move v7, v6

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .local v7, i$:I
    :goto_1
    if-ge v7, v9, :cond_0

    aget-object v8, v3, v7

    .line 144
    .local v8, iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$900()[Ljava/lang/String;

    move-result-object v4

    .local v4, arr$:[Ljava/lang/String;
    array-length v10, v4

    .local v10, len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_2
    if-ge v6, v10, :cond_5

    aget-object v11, v4, v6

    .line 145
    .local v11, regex:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 146
    const-string v18, "TetherEntitlement"

    const-string v19, "USB tethered : periodic timer scenario."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityManager;->untether(Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 144
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 143
    .end local v11           #regex:Ljava/lang/String;
    :cond_5
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_1

    .line 154
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #iface:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v14           #tethered:[Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_b

    .line 155
    const-string v18, "TetherEntitlement"

    const-string v19, "Entilement check success."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "USB_TETHER_PENDING"

    const/16 v20, 0x0

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v19, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mLastIfaceEnable:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$500(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v18

    if-eqz v18, :cond_7

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 163
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1100(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1100(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 168
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 175
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 176
    .restart local v14       #tethered:[Ljava/lang/String;
    move-object v3, v14

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    move v7, v6

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .restart local v7       #i$:I
    :goto_3
    if-ge v7, v9, :cond_0

    aget-object v8, v3, v7

    .line 177
    .restart local v8       #iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$900()[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v10, v4

    .restart local v10       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_4
    if-ge v6, v10, :cond_a

    aget-object v11, v4, v6

    .line 178
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 179
    const-string v18, "TetherEntitlement"

    const-string v19, "USB tethered : periodic timer scenario."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1200(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 177
    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 176
    .end local v11           #regex:Ljava/lang/String;
    :cond_a
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_3

    .line 186
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #iface:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v14           #tethered:[Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mEntitlementCheckState:I
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$100(Lcom/motorola/android/server/TetherEntitlement;)I

    move-result v18

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 187
    const-string v18, "TetherEntitlement"

    const-string v19, "Entilement check verifying."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    if-eqz v18, :cond_c

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$200(Lcom/motorola/android/server/TetherEntitlement;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "USB_TETHER_PENDING"

    const/16 v20, 0x1

    invoke-static/range {v18 .. v20}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$700(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 195
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v14

    .line 196
    .restart local v14       #tethered:[Ljava/lang/String;
    move-object v3, v14

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v6, 0x0

    .restart local v6       #i$:I
    move v7, v6

    .end local v3           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .restart local v7       #i$:I
    :goto_5
    if-ge v7, v9, :cond_0

    aget-object v8, v3, v7

    .line 197
    .restart local v8       #iface:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$900()[Ljava/lang/String;

    move-result-object v4

    .restart local v4       #arr$:[Ljava/lang/String;
    array-length v10, v4

    .restart local v10       #len$:I
    const/4 v6, 0x0

    .end local v7           #i$:I
    .restart local v6       #i$:I
    :goto_6
    if-ge v6, v10, :cond_e

    aget-object v11, v4, v6

    .line 198
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_d

    .line 199
    const-string v18, "TetherEntitlement"

    const-string v19, "USB tethered : periodic timer scenario."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1200(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 197
    :cond_d
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 196
    .end local v11           #regex:Ljava/lang/String;
    :cond_e
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    .end local v6           #i$:I
    .restart local v7       #i$:I
    goto :goto_5

    .line 207
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v8           #iface:Ljava/lang/String;
    .end local v10           #len$:I
    .end local v14           #tethered:[Ljava/lang/String;
    :cond_f
    const-string v18, "android.net.conn.TETHER_STATE_CHANGED"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 208
    const/16 v17, 0x0

    .line 209
    .local v17, usbTethered:Z
    const/16 v16, 0x0

    .line 210
    .local v16, usbErrored:Z
    const-string v18, "activeArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v15

    .line 212
    .local v15, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v18, "erroredArray"

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 214
    .local v5, errored:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_10
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_12

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 215
    .local v12, s:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$900()[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_7
    if-ge v7, v9, :cond_10

    aget-object v11, v3, v7

    .line 216
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_11

    const/16 v17, 0x1

    .line 215
    :cond_11
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 219
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #regex:Ljava/lang/String;
    .end local v12           #s:Ljava/lang/String;
    :cond_12
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 220
    .restart local v12       #s:Ljava/lang/String;
    invoke-static {}, Lcom/motorola/android/server/TetherEntitlement;->access$900()[Ljava/lang/String;

    move-result-object v3

    .restart local v3       #arr$:[Ljava/lang/String;
    array-length v9, v3

    .restart local v9       #len$:I
    const/4 v7, 0x0

    .restart local v7       #i$:I
    :goto_8
    if-ge v7, v9, :cond_13

    aget-object v11, v3, v7

    .line 221
    .restart local v11       #regex:Ljava/lang/String;
    invoke-virtual {v12, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/16 v16, 0x1

    .line 220
    :cond_14
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 224
    .end local v3           #arr$:[Ljava/lang/String;
    .end local v7           #i$:I
    .end local v9           #len$:I
    .end local v11           #regex:Ljava/lang/String;
    .end local v12           #s:Ljava/lang/String;
    :cond_15
    const-string v18, "TetherEntitlement"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "usbTethered:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",usbErrored:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    if-eqz v18, :cond_16

    if-nez v17, :cond_16

    if-nez v16, :cond_16

    .line 226
    const-string v18, "TetherEntitlement"

    const-string v19, "Ignoring this since tether is pending"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 231
    :cond_16
    if-eqz v17, :cond_17

    .line 232
    const-string v18, "TetherEntitlement"

    const-string v19, "Tethered..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 237
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1200(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 240
    :cond_17
    if-nez v16, :cond_18

    .line 241
    const-string v18, "TetherEntitlement"

    const-string v19, "Untethered"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherReadyNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1200(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0

    .line 246
    :cond_18
    if-eqz v16, :cond_0

    .line 247
    const-string v18, "TetherEntitlement"

    const-string v19, "usbErrored: "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$300(Lcom/motorola/android/server/TetherEntitlement;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/motorola/android/server/TetherEntitlement;->mPendingTetherEnable:Z
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$302(Lcom/motorola/android/server/TetherEntitlement;Z)Z

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    #getter for: Lcom/motorola/android/server/TetherEntitlement;->mOperatorName:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Lcom/motorola/android/server/TetherEntitlement;->access$400(Lcom/motorola/android/server/TetherEntitlement;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "att"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherAuthNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$600(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1000(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1100(Lcom/motorola/android/server/TetherEntitlement;Z)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/server/TetherEntitlement$StateReceiver;->this$0:Lcom/motorola/android/server/TetherEntitlement;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    #calls: Lcom/motorola/android/server/TetherEntitlement;->setUsbTetherConnectErrorNotif(Z)V
    invoke-static/range {v18 .. v19}, Lcom/motorola/android/server/TetherEntitlement;->access$1100(Lcom/motorola/android/server/TetherEntitlement;Z)V

    goto/16 :goto_0
.end method
