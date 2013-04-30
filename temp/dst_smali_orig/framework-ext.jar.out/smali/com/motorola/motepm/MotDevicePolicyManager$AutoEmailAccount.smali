.class public interface abstract Lcom/motorola/motepm/MotDevicePolicyManager$AutoEmailAccount;
.super Ljava/lang/Object;
.source "MotDevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoEmailAccount"
.end annotation


# static fields
.field public static final EXTRA_ACC_AES_SYNC_AMOUNT:Ljava/lang/String; = "aes_sync_amount"

.field public static final EXTRA_ACC_AES_SYNC_CALENDAR:Ljava/lang/String; = "aes_sync_calendar"

.field public static final EXTRA_ACC_AES_SYNC_CONTACTS:Ljava/lang/String; = "aes_sync_contacts"

.field public static final EXTRA_ACC_AES_SYNC_EMAIL:Ljava/lang/String; = "aes_sync_email"

.field public static final EXTRA_ACC_AES_SYNC_TASKS:Ljava/lang/String; = "aes_sync_tasks"

.field public static final EXTRA_ACC_DOWNLOAD_WIFI:Ljava/lang/String; = "download_wifi"

.field public static final EXTRA_ACC_EMAIL:Ljava/lang/String; = "email"

.field public static final EXTRA_ACC_EMAIL_ARRAY:Ljava/lang/String; = "email_array"

.field public static final EXTRA_ACC_IN_AUTH_TYPE:Ljava/lang/String; = "in_auth_type"

.field public static final EXTRA_ACC_IN_LOGIN:Ljava/lang/String; = "in_login"

.field public static final EXTRA_ACC_IN_PASSWORD:Ljava/lang/String; = "in_password"

.field public static final EXTRA_ACC_IN_SECURITY:Ljava/lang/String; = "in_security"

.field public static final EXTRA_ACC_IN_SERVER_ADDRESS:Ljava/lang/String; = "in_server_address"

.field public static final EXTRA_ACC_IN_SERVER_PORT:Ljava/lang/String; = "in_server_port"

.field public static final EXTRA_ACC_NOTIFY:Ljava/lang/String; = "notify"

.field public static final EXTRA_ACC_OUT_AUTH_TYPE:Ljava/lang/String; = "out_auth_type"

.field public static final EXTRA_ACC_OUT_LOGIN:Ljava/lang/String; = "out_login"

.field public static final EXTRA_ACC_OUT_PASSWORD:Ljava/lang/String; = "out_password"

.field public static final EXTRA_ACC_OUT_SECURITY:Ljava/lang/String; = "out_security"

.field public static final EXTRA_ACC_OUT_SERVER_ADDRESS:Ljava/lang/String; = "out_server_address"

.field public static final EXTRA_ACC_OUT_SERVER_PORT:Ljava/lang/String; = "out_server_port"

.field public static final EXTRA_ACC_PASS_ENCRYPTED:Ljava/lang/String; = "pass_encrypted"

.field public static final EXTRA_ACC_PRETTY_NAME:Ljava/lang/String; = "pretty_name"

.field public static final EXTRA_ACC_SERVER_TYPE:Ljava/lang/String; = "server_type"

.field public static final EXTRA_ACC_SIGNATURE_B64:Ljava/lang/String; = "signature_b64"

.field public static final EXTRA_ACC_SYNC_INTERVAL:Ljava/lang/String; = "sync_interval"

.field public static final EXTRA_ACC_SYNC_WIFI_ONLY:Ljava/lang/String; = "sync_wifi_only"

.field public static final EXTRA_ACC_USER_NAME:Ljava/lang/String; = "user_name"

.field public static final EXTRA_ACC_VIBRATE:Ljava/lang/String; = "vibrate"

.field public static final EXTRA_ADD_RESULT:Ljava/lang/String; = "result"

.field public static final EXTRA_COMMON_ADJUSTABLE_LINE_VIEW:Ljava/lang/String; = "settings_adj_line"

.field public static final EXTRA_COMMON_FONT_SIZE:Ljava/lang/String; = "settings_font_size"

.field public static final EXTRA_COMMON_LIST_GESTURES:Ljava/lang/String; = "settings_gestures"

.field public static final EXTRA_EMAIL_COMMON_SETTINGS:Ljava/lang/String; = "email_settings"

.field public static final EXTRA_REQUESTER:Ljava/lang/String; = "requester"

.field public static final EXTRA_RESULT_ACCOUNT_ID:Ljava/lang/String; = "acc_id"

.field public static final EXTRA_RESULT_DELETED_IDs:Ljava/lang/String; = "deleted_ids"

.field public static final EXTRA_UPGRADE_MODE:Ljava/lang/String; = "upgrademode"

.field public static final INTENT_AUTO_CREATE_ACCOUNT:Ljava/lang/String; = "com.motorola.email.AUTO_CREATE_ACCOUNT"

.field public static final INTENT_AUTO_CREATE_ACCOUNT_FINISHED:Ljava/lang/String; = "com.motorola.email.AutoEmailAccountManager.FINISHED"

.field public static final INTENT_DELETE_ACCOUNT:Ljava/lang/String; = "com.motorola.email.DELETE_ACCOUNT"

.field public static final INTENT_DELETE_ACCOUNT_FINISHED:Ljava/lang/String; = "com.motorola.email.AutoEmailAccountManager.DELETE_FINISHED"

.field public static final PASSWORD_STORE_CBC_ENCRYPTED:I = 0x3

.field public static final PASSWORD_STORE_CLEAR:I = 0x0

.field public static final PASSWORD_STORE_ENCRYPTED:I = 0x1

.field public static final REQUESTER_MCAST:I = 0x1

.field public static final RESULT_CREATED_SUCCESS:I = 0x0

.field public static final RESULT_DELETE:I = 0x4

.field public static final RESULT_DUPLICATED_ACCOUNT:I = 0x1

.field public static final RESULT_FAILED:I = 0x3

.field public static final RESULT_FAILED_ALREADY_ADDING:I = 0x5

.field public static final RESULT_PARAMETERS_ISSUE:I = 0x2

.field public static final RESULT_WRONG_USER_PWD:I = 0x6

.field public static final SCHEME_EAS:Ljava/lang/String; = "eas"

.field public static final SCHEME_IMAP:Ljava/lang/String; = "imap"

.field public static final SCHEME_POP3:Ljava/lang/String; = "pop3"

.field public static final SECURITY_NONE:I = 0x0

.field public static final SECURITY_SSL:I = 0x1

.field public static final SECURITY_SSL_TRUST_ALL:I = 0x2

.field public static final SECURITY_TLS:I = 0x3

.field public static final SECURITY_TLS_TRUST_ALL:I = 0x4
