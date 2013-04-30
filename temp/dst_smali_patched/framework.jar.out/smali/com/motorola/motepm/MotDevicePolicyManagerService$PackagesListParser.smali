.class abstract Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;
.super Ljava/lang/Object;
.source "MotDevicePolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/motepm/MotDevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PackagesListParser"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;


# direct methods
.method private constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;Lcom/motorola/motepm/MotDevicePolicyManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;-><init>(Lcom/motorola/motepm/MotDevicePolicyManagerService;)V

    return-void
.end method

.method private skip(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 3
    .parameter "parser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_0
    const/4 v0, 0x1

    .local v0, depth:I
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected abstract addPackage(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V
.end method

.method protected abstract beforeLoading(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)V
.end method

.method protected abstract getAppTag()Ljava/lang/String;
.end method

.method protected abstract getOuterTag()Ljava/lang/String;
.end method

.method protected abstract getPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public loadAppListLocked()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "[BEGIN] loadAppListLocked"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v3

    .local v3, file:Ljava/io/File;
    const/4 v7, 0x0

    .local v7, stream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5

    .end local v7           #stream:Ljava/io/FileInputStream;
    .local v8, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v6

    .local v6, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->getOuterTag()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v6, v9, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v13, :cond_6

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v12, :cond_0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .local v5, name:Ljava/lang/String;
    const-string v9, "admin"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v9, 0x0

    const-string v10, "name"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .local v0, adminName:Landroid/content/ComponentName;
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Got an administrator, name="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v9, v9, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminMap:Ljava/util/HashMap;

    invoke-virtual {v9, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v1, currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-nez v1, :cond_2

    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "Administrator not mapped, skipping tag processing!"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_0

    .end local v0           #adminName:Landroid/content/ComponentName;
    .end local v1           #currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/NullPointerException;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :goto_1
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2           #e:Ljava/lang/NullPointerException;
    :goto_2
    if-eqz v7, :cond_1

    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_3
    const-string v9, "MotDevicePolicyManagerService"

    const-string v10, "[END] loadAppListLocked"

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v0       #adminName:Landroid/content/ComponentName;
    .restart local v1       #currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->beforeLoading(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)V

    :cond_3
    :goto_4
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    if-eq v9, v13, :cond_0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v9

    if-ne v9, v12, :cond_3

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->getAppTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x0

    const-string v10, "package-name"

    invoke-interface {v6, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v1, v9}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->addPackage(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;Ljava/lang/String;)V

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_7

    goto :goto_4

    .end local v0           #adminName:Landroid/content/ComponentName;
    .end local v1           #currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/lang/NumberFormatException;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :goto_5
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v2           #e:Ljava/lang/NumberFormatException;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v0       #adminName:Landroid/content/ComponentName;
    .restart local v1       #currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :cond_4
    :try_start_4
    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_7

    goto :goto_4

    .end local v0           #adminName:Landroid/content/ComponentName;
    .end local v1           #currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v2, e:Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :goto_6
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2           #e:Lorg/xmlpull/v1/XmlPullParserException;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v5       #name:Ljava/lang/String;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :cond_5
    :try_start_5
    invoke-direct {p0, v6}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_7

    goto/16 :goto_0

    .end local v5           #name:Ljava/lang/String;
    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_3
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .local v2, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    :goto_7
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2           #e:Ljava/io/IOException;
    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v6       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :cond_6
    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_2

    .end local v6           #parser:Lorg/xmlpull/v1/XmlPullParser;
    :catch_4
    move-exception v2

    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_8
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v2

    .local v2, e:Ljava/lang/IllegalStateException;
    :goto_9
    const-string v9, "MotDevicePolicyManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "failed parsing "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v9

    goto/16 :goto_3

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    goto :goto_9

    .end local v7           #stream:Ljava/io/FileInputStream;
    .restart local v8       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v7, v8

    .end local v8           #stream:Ljava/io/FileInputStream;
    .restart local v7       #stream:Ljava/io/FileInputStream;
    goto :goto_8

    :catch_9
    move-exception v2

    goto :goto_7

    :catch_a
    move-exception v2

    goto/16 :goto_6

    :catch_b
    move-exception v2

    goto/16 :goto_5

    :catch_c
    move-exception v2

    goto/16 :goto_1
.end method

.method protected abstract makeJournaledFile()Lcom/android/internal/util/JournaledFile;
.end method

.method public saveAppListLocked()V
    .locals 13

    .prologue
    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->makeJournaledFile()Lcom/android/internal/util/JournaledFile;

    move-result-object v4

    .local v4, journal:Lcom/android/internal/util/JournaledFile;
    const/4 v8, 0x0

    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v10

    const/4 v11, 0x0

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v9, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v5, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v5}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .local v5, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string v10, "utf-8"

    invoke-interface {v5, v9, v10}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->getOuterTag()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v10, p0, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->this$0:Lcom/motorola/motepm/MotDevicePolicyManagerService;

    iget-object v10, v10, Lcom/motorola/motepm/MotDevicePolicyManagerService;->mAdminList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;

    .local v0, currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    if-eqz v0, :cond_0

    const/4 v10, 0x0

    const-string v11, "admin"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "name"

    iget-object v12, v0, Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;->info:Lcom/motorola/motepm/MotDeviceAdminInfo;

    invoke-virtual {v12}, Lcom/motorola/motepm/MotDeviceAdminInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v5, v10, v11, v12}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-virtual {p0, v0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->getPackages(Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;)Ljava/util/List;

    move-result-object v7

    .local v7, packagesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .local v6, packageName:Ljava/lang/String;
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->getAppTag()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    const-string v11, "package-name"

    invoke-interface {v5, v10, v11, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->getAppTag()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v0           #currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v6           #packageName:Ljava/lang/String;
    .end local v7           #packagesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v1

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/lang/Exception;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v8, :cond_1

    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_3
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->rollback()V

    .end local v1           #e:Ljava/lang/Exception;
    :goto_4
    return-void

    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v0       #currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v7       #packagesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9       #stream:Ljava/io/FileOutputStream;
    :cond_2
    const/4 v10, 0x0

    :try_start_3
    const-string v11, "admin"

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .end local v0           #currentAdministrator:Lcom/motorola/motepm/MotDevicePolicyManagerService$ActiveAdmin;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #packagesList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/motorola/motepm/MotDevicePolicyManagerService$PackagesListParser;->getOuterTag()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {v5}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v8, v9

    .end local v9           #stream:Ljava/io/FileOutputStream;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v5           #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v1       #e:Ljava/lang/Exception;
    :catch_1
    move-exception v10

    goto :goto_3

    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_2
.end method
