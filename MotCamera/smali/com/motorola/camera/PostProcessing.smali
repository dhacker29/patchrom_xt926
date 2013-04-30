.class public Lcom/motorola/camera/PostProcessing;
.super Lcom/motorola/camera/ActivityBase;
.source "PostProcessing.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PostProcessingActivity"


# instance fields
.field private mAttach:Landroid/widget/ImageView;

.field private mCancel:Landroid/widget/ImageView;

.field private mInputUri:Landroid/net/Uri;

.field private mMimeType:I

.field private mOutputUri:Landroid/net/Uri;

.field private mPlay:Landroid/widget/ImageButton;

.field private mPostImage:Landroid/widget/ImageView;

.field private mRetake:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/motorola/camera/ActivityBase;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/PostProcessing;->mMimeType:I

    return-void
.end method

.method private getBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 222
    const/4 v0, 0x1

    iget v1, p0, Lcom/motorola/camera/PostProcessing;->mMimeType:I

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    invoke-static {v0, p0}, Lcom/motorola/camera/Util;->getPostViewfromUri(Landroid/net/Uri;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 225
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/motorola/camera/PostProcessing;->getVideoBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getVideoBitmap(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "mInputUri"

    .prologue
    const/4 v8, 0x0

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 238
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v4, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v4}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 239
    .local v4, mr:Landroid/media/MediaMetadataRetriever;
    const/4 v3, 0x0

    .line 241
    .local v3, fd:Landroid/os/ParcelFileDescriptor;
    :try_start_0
    const-string v5, "r"

    invoke-virtual {v1, p1, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 242
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 243
    const-wide/16 v5, -0x1

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 248
    :try_start_1
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 249
    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 257
    :cond_0
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v2

    .line 253
    .local v2, ex:Ljava/io/IOException;
    const-class v5, Lcom/motorola/camera/PostProcessing;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 244
    .end local v2           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 245
    .local v2, ex:Ljava/io/FileNotFoundException;
    :try_start_2
    const-class v5, Lcom/motorola/camera/PostProcessing;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 248
    :try_start_3
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 249
    if-eqz v3, :cond_0

    .line 250
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 252
    :catch_2
    move-exception v2

    .line 253
    .local v2, ex:Ljava/io/IOException;
    const-class v5, Lcom/motorola/camera/PostProcessing;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v5, v6, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 247
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 248
    :try_start_4
    invoke-virtual {v4}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 249
    if-eqz v3, :cond_1

    .line 250
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 254
    :cond_1
    :goto_1
    throw v5

    .line 252
    :catch_3
    move-exception v2

    .line 253
    .restart local v2       #ex:Ljava/io/IOException;
    const-class v6, Lcom/motorola/camera/PostProcessing;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7, v8, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private initializeViewElements()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 190
    const v1, 0x7f08004e

    invoke-virtual {p0, v1}, Lcom/motorola/camera/PostProcessing;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/PostProcessing;->mRetake:Landroid/widget/ImageView;

    .line 191
    iget-object v1, p0, Lcom/motorola/camera/PostProcessing;->mRetake:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget v1, p0, Lcom/motorola/camera/PostProcessing;->mMimeType:I

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/motorola/camera/PostProcessing;->mRetake:Landroid/widget/ImageView;

    const v2, 0x7f020099

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    :cond_0
    const v1, 0x7f08004f

    invoke-virtual {p0, v1}, Lcom/motorola/camera/PostProcessing;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/PostProcessing;->mAttach:Landroid/widget/ImageView;

    .line 195
    iget-object v1, p0, Lcom/motorola/camera/PostProcessing;->mAttach:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    const v1, 0x7f080050

    invoke-virtual {p0, v1}, Lcom/motorola/camera/PostProcessing;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/PostProcessing;->mCancel:Landroid/widget/ImageView;

    .line 198
    iget-object v1, p0, Lcom/motorola/camera/PostProcessing;->mCancel:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget v1, p0, Lcom/motorola/camera/PostProcessing;->mMimeType:I

    if-ne v1, v4, :cond_1

    .line 201
    const v1, 0x7f080053

    invoke-virtual {p0, v1}, Lcom/motorola/camera/PostProcessing;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/motorola/camera/PostProcessing;->mPlay:Landroid/widget/ImageButton;

    .line 202
    iget-object v1, p0, Lcom/motorola/camera/PostProcessing;->mPlay:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    iget-object v1, p0, Lcom/motorola/camera/PostProcessing;->mPlay:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 206
    :cond_1
    const v1, 0x7f08004c

    invoke-virtual {p0, v1}, Lcom/motorola/camera/PostProcessing;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/motorola/camera/PostProcessing;->mPostImage:Landroid/widget/ImageView;

    .line 207
    invoke-direct {p0}, Lcom/motorola/camera/PostProcessing;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 209
    iget-object v1, p0, Lcom/motorola/camera/PostProcessing;->mPostImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_2
    invoke-virtual {p0, v3}, Lcom/motorola/camera/PostProcessing;->setResult(I)V

    .line 212
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->finish()V

    goto :goto_0
.end method

.method private isInDcimFolder(Landroid/net/Uri;)Z
    .locals 10
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 163
    const-string v7, ""

    .line 165
    .local v7, filename:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 167
    .local v9, result:Ljava/lang/Boolean;
    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 169
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 179
    :cond_0
    :goto_0
    sget-object v0, Lcom/motorola/camera/saving/Storage;->DCIM_DIR:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 183
    :cond_1
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 171
    :cond_2
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 172
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 174
    .local v8, id:I
    if-ltz v8, :cond_0

    .line 175
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private removeFile(Landroid/net/Uri;)V
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 266
    const/4 v0, 0x1

    iget v1, p0, Lcom/motorola/camera/PostProcessing;->mMimeType:I

    if-ne v0, v1, :cond_2

    .line 267
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PostProcessingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 269
    :cond_2
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 271
    sget-boolean v0, Lcom/motorola/camera/Util;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "PostProcessingActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_3
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    const/4 v5, -0x1

    .line 117
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 153
    :goto_0
    :pswitch_0
    return-void

    .line 119
    :pswitch_1
    iget-object v3, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/motorola/camera/PostProcessing;->removeFile(Landroid/net/Uri;)V

    .line 120
    invoke-virtual {p0, v5}, Lcom/motorola/camera/PostProcessing;->setResult(I)V

    .line 121
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->finish()V

    goto :goto_0

    .line 124
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    iget-object v4, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 125
    .local v2, videoPlay:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/motorola/camera/PostProcessing;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 131
    .end local v2           #videoPlay:Landroid/content/Intent;
    :pswitch_3
    iget v3, p0, Lcom/motorola/camera/PostProcessing;->mMimeType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 132
    iget-object v3, p0, Lcom/motorola/camera/PostProcessing;->mOutputUri:Landroid/net/Uri;

    iget-object v4, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    iget v5, p0, Lcom/motorola/camera/PostProcessing;->mMimeType:I

    invoke-static {v3, v4, p0, v5}, Lcom/motorola/camera/Util;->copyMediatoURI(Landroid/net/Uri;Landroid/net/Uri;Landroid/content/Context;I)Lcom/motorola/camera/Util$ReturnResult;

    move-result-object v1

    .line 134
    .local v1, result:Lcom/motorola/camera/Util$ReturnResult;
    invoke-virtual {v1}, Lcom/motorola/camera/Util$ReturnResult;->getResult()I

    move-result v3

    invoke-virtual {v1}, Lcom/motorola/camera/Util$ReturnResult;->getResultIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/motorola/camera/PostProcessing;->setResult(ILandroid/content/Intent;)V

    .line 135
    iget-object v3, p0, Lcom/motorola/camera/PostProcessing;->mOutputUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/motorola/camera/PostProcessing;->isInDcimFolder(Landroid/net/Uri;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    iget-object v3, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/motorola/camera/PostProcessing;->removeFile(Landroid/net/Uri;)V

    .line 143
    .end local v1           #result:Lcom/motorola/camera/Util$ReturnResult;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->finish()V

    goto :goto_0

    .line 139
    :cond_1
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 140
    .local v0, data:Landroid/content/Intent;
    invoke-virtual {p0, v5, v0}, Lcom/motorola/camera/PostProcessing;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 146
    .end local v0           #data:Landroid/content/Intent;
    :pswitch_4
    iget-object v3, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/motorola/camera/PostProcessing;->removeFile(Landroid/net/Uri;)V

    .line 147
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/motorola/camera/PostProcessing;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->finish()V

    goto :goto_0

    .line 117
    nop

    :pswitch_data_0
    .packed-switch 0x7f08004e
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "icicle"

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/motorola/camera/ActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 65
    const v0, 0x7f03001b

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PostProcessing;->setContentView(I)V

    .line 67
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    .line 69
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "output"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/motorola/camera/PostProcessing;->mOutputUri:Landroid/net/Uri;

    .line 73
    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/motorola/camera/PostProcessing;->mMimeType:I

    .line 74
    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 90
    iget-object v2, p0, Lcom/motorola/camera/PostProcessing;->mPostImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/motorola/camera/PostProcessing;->mPostImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/motorola/camera/PostProcessing;->mPostImage:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 92
    .local v1, d:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    .line 93
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 94
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 95
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 100
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    iget-object v2, p0, Lcom/motorola/camera/PostProcessing;->mPostImage:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onDestroy()V

    .line 102
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 106
    packed-switch p1, :pswitch_data_0

    .line 113
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/PostProcessing;->mInputUri:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/motorola/camera/PostProcessing;->removeFile(Landroid/net/Uri;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/PostProcessing;->setResult(I)V

    .line 110
    invoke-virtual {p0}, Lcom/motorola/camera/PostProcessing;->finish()V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onPause()V

    .line 85
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/motorola/camera/ActivityBase;->onResume()V

    .line 79
    invoke-direct {p0}, Lcom/motorola/camera/PostProcessing;->initializeViewElements()V

    .line 80
    return-void
.end method
