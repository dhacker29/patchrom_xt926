.class public final Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;
.super Ljava/lang/Object;
.source "EncryptionSystemProperties.java"


# static fields
.field private static final CONST_VALUE:I = 0x3e8

.field public static final ENCRYPTION_KEY_TYPE_DEVICE:I = 0x0

.field public static final ENCRYPTION_KEY_TYPE_DEVICE_AND_PASSWORD:I = 0x2

.field public static final ENCRYPTION_KEY_TYPE_PASSWORD:I = 0x1

.field public static final ENCRYPTION_OFF:I = 0x0

.field public static final ENCRYPTION_ON:I = 0x1

.field public static final ENCRYPTION_STRENGTH_NORMAL:I = 0x0

.field public static final ENCRYPTION_STRENGTH_STRONG:I = 0x1

.field public static final ENCRYPTION_STRENGTH_STRONGEST:I = 0x2

.field private static final ESP:Lcom/motorola/android/internal/encryption/EncryptionSystemProperties; = null

.field public static final KEY_APPLICATION_ENCRYPTION_KEY_TYPE:Ljava/lang/String; = "app_encr_key_type"

.field public static final KEY_APPLICATION_ENCRYPTION_STRENGTH:Ljava/lang/String; = "app_encr_strength"

.field public static final KEY_CALENDAR:Ljava/lang/String; = "calendar"

.field public static final KEY_CONTACTS:Ljava/lang/String; = "contacts"

.field public static final KEY_DEVICE_DATA_ENCRYPTION:Ljava/lang/String; = "device_encr"

.field public static final KEY_DEVICE_KEY_PROTECTION:Ljava/lang/String; = "device_key_protection"

.field public static final KEY_EMAIL:Ljava/lang/String; = "email"

.field public static final KEY_MEMORY_ENCRYPTION:Ljava/lang/String; = "memory_encr"

.field public static final KEY_MEMORY_ENCRYPTION_KEY_TYPE:Ljava/lang/String; = "mem_encr_key_type"

.field private static final ONE:I = 0x1

.field public static final PROPERTY_PERSISTENT:I = 0x0

.field public static final PROPERTY_SAVED:I = 0x2

.field public static final PROPERTY_SYSTEM:I = 0x1

.field private static final TWO:I = 0x2

.field private static final ZERO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    invoke-direct {v0}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;-><init>()V

    sput-object v0, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->ESP:Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->ESP:Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;

    return-object v0
.end method

.method private getMaxValue(Ljava/lang/String;)I
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x1

    const-string v2, "memory_encr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v2, "mem_encr_key_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const-string v2, "device_encr"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "email"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "calendar"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "contacts"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "app_encr_key_type"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "app_encr_strength"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    const-string v1, "device_key_protection"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getPropertyTypeAndIndex(Ljava/lang/String;)I
    .locals 1
    .parameter "key"

    .prologue
    const-string v0, "memory_encr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryIndex()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    :goto_0
    return v0

    :cond_0
    const-string v0, "mem_encr_key_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryKeyTypeIndex()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    goto :goto_0

    :cond_1
    const-string v0, "device_encr"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDeviceIndex()I

    move-result v0

    goto :goto_0

    :cond_2
    const-string v0, "email"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getEmailIndex()I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getCalendarIndex()I

    move-result v0

    goto :goto_0

    :cond_4
    const-string v0, "contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getContactsIndex()I

    move-result v0

    goto :goto_0

    :cond_5
    const-string v0, "app_encr_key_type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getApplicationsKeyTypeIndex()I

    move-result v0

    goto :goto_0

    :cond_6
    const-string v0, "app_encr_strength"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getApplicationsStrengthIndex()I

    move-result v0

    goto :goto_0

    :cond_7
    const-string v0, "device_key_protection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDeviceKeyProtectionIndex()I

    move-result v0

    goto :goto_0

    :cond_8
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private isValueValid(ILjava/lang/String;)Z
    .locals 1
    .parameter "val"
    .parameter "name"

    .prologue
    if-ltz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getMaxValue(Ljava/lang/String;)I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deviceEncryptionPolicyImplemented()Z
    .locals 11

    .prologue
    const/4 v8, 0x1

    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDevicePropertyValues()[I

    move-result-object v7

    .local v7, values:[I
    if-nez v7, :cond_0

    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "The array with device values from native is null."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #values:[I
    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v9, "Incorrect index for the array with values."

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .end local v5           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v7       #values:[I
    :cond_0
    :try_start_1
    const-string v9, "device_encr"

    invoke-direct {p0, v9}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v4

    .local v4, deviceEncrIndex:I
    const-string v9, "email"

    invoke-direct {p0, v9}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v6

    .local v6, emailEncrIndex:I
    const-string v9, "calendar"

    invoke-direct {p0, v9}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v2

    .local v2, calendarEncrIndex:I
    const-string v9, "contacts"

    invoke-direct {p0, v9}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v3

    .local v3, contactsEncrIndex:I
    const-string v9, "app_encr_key_type"

    invoke-direct {p0, v9}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v0

    .local v0, appEncrKeyTypeIndex:I
    const-string v9, "app_encr_strength"

    invoke-direct {p0, v9}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, appEncrStrengthIndex:I
    aget v9, v7, v4

    if-ne v9, v8, :cond_1

    aget v9, v7, v6

    if-ne v9, v8, :cond_1

    aget v9, v7, v2

    if-ne v9, v8, :cond_1

    aget v9, v7, v3

    if-ne v9, v8, :cond_1

    aget v9, v7, v0

    if-ne v9, v8, :cond_1

    aget v9, v7, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    :goto_0
    return v8

    :cond_1
    const/4 v8, 0x0

    goto :goto_0
.end method

.method public getEncryptionSystemPropertiesAll()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .local v4, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryPropertyValues()[I

    move-result-object v3

    .local v3, memoryValues:[I
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDevicePropertyValues()[I

    move-result-object v0

    .local v0, deviceValues:[I
    if-nez v3, :cond_0

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The array with memory values from native is null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    if-nez v0, :cond_1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The array with device values from native is null."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryIndex()I

    move-result v5

    aget v2, v3, v5

    .local v2, i:I
    const-string v5, "memory_encr"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryKeyTypeIndex()I

    move-result v5

    aget v2, v3, v5

    const-string v5, "mem_encr_key_type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDeviceIndex()I

    move-result v5

    aget v2, v0, v5

    const-string v5, "device_encr"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getEmailIndex()I

    move-result v5

    aget v2, v0, v5

    const-string v5, "email"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getCalendarIndex()I

    move-result v5

    aget v2, v0, v5

    const-string v5, "calendar"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getContactsIndex()I

    move-result v5

    aget v2, v0, v5

    const-string v5, "contacts"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getApplicationsKeyTypeIndex()I

    move-result v5

    aget v2, v0, v5

    const-string v5, "app_encr_key_type"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getApplicationsStrengthIndex()I

    move-result v5

    aget v2, v0, v5

    const-string v5, "app_encr_strength"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDeviceKeyProtectionIndex()I

    move-result v5

    aget v2, v0, v5

    const-string v5, "device_key_protection"

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .end local v2           #i:I
    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Incorrect index for the array with memory values."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v1           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2       #i:I
    :catch_1
    move-exception v1

    .restart local v1       #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Incorrect index for the array with device values."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public getEncryptionSystemProperty(Ljava/lang/String;)I
    .locals 5
    .parameter "name"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v1

    .local v1, index:I
    if-gez v1, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Incorrect name. Index not found."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    const/16 v3, 0x3e8

    if-lt v1, v3, :cond_2

    add-int/lit16 v1, v1, -0x3e8

    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryPropertyValues()[I

    move-result-object v2

    .local v2, values:[I
    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The array with memory values from native is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #values:[I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Incorrect index for the array with values."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v2       #values:[I
    :cond_1
    :try_start_1
    aget v3, v2, v1

    :goto_0
    return v3

    .end local v2           #values:[I
    :cond_2
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDevicePropertyValues()[I

    move-result-object v2

    .restart local v2       #values:[I
    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "The array with device values from native is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    aget v3, v2, v1
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public memoryEncryptionPolicyImplemented()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryPropertyValues()[I

    move-result-object v3

    .local v3, values:[I
    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "The array with memory values from native is null."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v3           #values:[I
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Incorrect index for the array with values."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v0           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v3       #values:[I
    :cond_0
    :try_start_1
    const-string v5, "memory_encr"

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v5

    add-int/lit16 v1, v5, -0x3e8

    .local v1, memoryEncrIndex:I
    const-string v5, "mem_encr_key_type"

    invoke-direct {p0, v5}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->getPropertyTypeAndIndex(Ljava/lang/String;)I

    move-result v5

    add-int/lit16 v2, v5, -0x3e8

    .local v2, memoryEncrKeyTypeIndex:I
    aget v5, v3, v1

    if-ne v5, v4, :cond_1

    aget v5, v3, v2
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v5, v4, :cond_1

    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setEncryptionDeviceSystemProperty(Ljava/util/Map;I)V
    .locals 6
    .parameter
    .parameter "destination"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, -0x2

    .local v2, i:I
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDevicePropertyValuesCount()I

    move-result v3

    new-array v0, v3, [I

    .local v0, deviceValues:[I
    :try_start_0
    const-string v3, "device_encr"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "device_encr"

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_DEVICE_DATA_ENCRYPTION: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for Encryption Device System Property: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDeviceIndex()I

    move-result v3

    aput v2, v0, v3

    const-string v3, "email"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "email"

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_EMAIL: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getEmailIndex()I

    move-result v3

    aput v2, v0, v3

    const-string v3, "calendar"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "calendar"

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_CALENDAR: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getCalendarIndex()I

    move-result v3

    aput v2, v0, v3

    const-string v3, "contacts"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "contacts"

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_CONTACTS: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getContactsIndex()I

    move-result v3

    aput v2, v0, v3

    const-string v3, "app_encr_key_type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "app_encr_key_type"

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_APPLICATION_ENCRYPTION_KEY_TYPE: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getApplicationsKeyTypeIndex()I

    move-result v3

    aput v2, v0, v3

    const-string v3, "app_encr_strength"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "app_encr_strength"

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_APPLICATION_ENCRYPTION_STRENGTH: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getApplicationsStrengthIndex()I

    move-result v3

    aput v2, v0, v3

    const-string v3, "device_key_protection"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "device_key_protection"

    invoke-direct {p0, v2, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_DEVICE_KEY_PROTECTION: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getDeviceKeyProtectionIndex()I

    move-result v3

    aput v2, v0, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v0, p2}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->setDevicePropertyValues([II)I

    return-void
.end method

.method public setEncryptionMemorySystemProperty(Ljava/util/Map;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, -0x2

    .local v1, i:I
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryPropertyValuesCount()I

    move-result v3

    new-array v2, v3, [I

    .local v2, memoryValues:[I
    :try_start_0
    const-string v3, "memory_encr"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "memory_encr"

    invoke-direct {p0, v1, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_MEMORY_ENCRYPTION: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for Encryption Memory System Property: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryIndex()I

    move-result v3

    aput v1, v2, v3

    const-string v3, "mem_encr_key_type"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v3, "mem_encr_key_type"

    invoke-direct {p0, v1, v3}, Lcom/motorola/android/internal/encryption/EncryptionSystemProperties;->isValueValid(ILjava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid value for KEY_MEMORY_ENCRYPTION_KEY_TYPE: i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-static {}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->getMemoryKeyTypeIndex()I

    move-result v3

    aput v1, v2, v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-static {v2}, Lcom/motorola/android/internal/encryption/NativeEncryptionSystemProperties;->setMemoryPropertyValues([I)I

    return-void
.end method
