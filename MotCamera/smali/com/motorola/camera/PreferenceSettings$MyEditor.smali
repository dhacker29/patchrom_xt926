.class Lcom/motorola/camera/PreferenceSettings$MyEditor;
.super Ljava/lang/Object;
.source "PreferenceSettings.java"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/PreferenceSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyEditor"
.end annotation


# instance fields
.field private mEditorGlobal:Landroid/content/SharedPreferences$Editor;

.field private mEditorLocal:Landroid/content/SharedPreferences$Editor;

.field final synthetic this$0:Lcom/motorola/camera/PreferenceSettings;


# direct methods
.method constructor <init>(Lcom/motorola/camera/PreferenceSettings;)V
    .locals 1
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->this$0:Lcom/motorola/camera/PreferenceSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 280
    #getter for: Lcom/motorola/camera/PreferenceSettings;->mPrefGlobal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->access$000(Lcom/motorola/camera/PreferenceSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    .line 281
    #getter for: Lcom/motorola/camera/PreferenceSettings;->mPrefLocal:Landroid/content/SharedPreferences;
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->access$100(Lcom/motorola/camera/PreferenceSettings;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    .line 282
    return-void
.end method


# virtual methods
.method public apply()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 292
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 293
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 298
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 299
    return-object p0
.end method

.method public commit()Z
    .locals 3

    .prologue
    .line 285
    iget-object v2, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 286
    .local v0, result1:Z
    iget-object v2, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 287
    .local v1, result2:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 345
    #calls: Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 350
    :goto_0
    return-object p0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 336
    #calls: Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 341
    :goto_0
    return-object p0

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 318
    #calls: Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 323
    :goto_0
    return-object p0

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 327
    #calls: Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 332
    :goto_0
    return-object p0

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter "value"

    .prologue
    .line 309
    #calls: Lcom/motorola/camera/PreferenceSettings;->isGlobal(Ljava/lang/String;)Z
    invoke-static {p1}, Lcom/motorola/camera/PreferenceSettings;->access$200(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 314
    :goto_0
    return-object p0

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/content/SharedPreferences$Editor;"
        }
    .end annotation

    .prologue
    .line 355
    .local p2, values:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .locals 1
    .parameter "key"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorGlobal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 304
    iget-object v0, p0, Lcom/motorola/camera/PreferenceSettings$MyEditor;->mEditorLocal:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 305
    return-object p0
.end method
