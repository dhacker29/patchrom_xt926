.class public Landroid/view/PtfViewDebug;
.super Landroid/view/ViewDebug;
.source "PtfViewDebug.java"


# static fields
.field private static final LOCAL_LOGV:Z = false

.field private static final PTF_COMMAND_DUMP:Ljava/lang/String; = "PTF_DUMP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/view/ViewDebug;-><init>()V

    return-void
.end method

.method private static configureEscapeSequence(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "text"

    .prologue
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    const-string v1, "\\,"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    const-string v1, "\\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "view"
    .parameter "command"
    .parameter "parameters"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "PTF_DUMP"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/view/PtfViewDebug;->dump(Landroid/view/View;Ljava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/view/ViewDebug;->dispatchCommand(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_0
.end method

.method private static dump(Landroid/view/View;Ljava/io/OutputStream;)V
    .locals 9
    .parameter "root"
    .parameter "clientStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .local v4, out:Ljava/io/BufferedWriter;
    :try_start_0
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    invoke-direct {v7, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const v8, 0x8000

    invoke-direct {v5, v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #out:Ljava/io/BufferedWriter;
    .local v5, out:Ljava/io/BufferedWriter;
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    .local v6, view:Landroid/view/View;
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    move-object v0, v6

    check-cast v0, Landroid/view/ViewGroup;

    move-object v2, v0

    .local v2, group:Landroid/view/ViewGroup;
    const/4 v7, 0x0

    invoke-static {v2, v5, v7}, Landroid/view/PtfViewDebug;->dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    .end local v2           #group:Landroid/view/ViewGroup;
    .end local v6           #view:Landroid/view/View;
    :cond_0
    :goto_0
    const-string v7, "DONE."

    invoke-virtual {v5, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    :cond_1
    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :cond_2
    :goto_1
    return-void

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    .restart local v6       #view:Landroid/view/View;
    :cond_3
    const/4 v7, 0x0

    :try_start_2
    invoke-static {v6, v5, v7}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    instance-of v7, v6, Lcom/motorola/automation/WidgetDebugInterface;

    if-eqz v7, :cond_0

    check-cast v6, Lcom/motorola/automation/WidgetDebugInterface;

    .end local v6           #view:Landroid/view/View;
    const/4 v7, 0x0

    invoke-static {v6, v5, v7}, Landroid/view/PtfViewDebug;->dumpCompositeViewWithProperties(Lcom/motorola/automation/WidgetDebugInterface;Ljava/io/BufferedWriter;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .local v3, iae:Ljava/lang/IllegalArgumentException;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    :goto_2
    if-eqz v4, :cond_4

    :try_start_3
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const-string v7, "ERROR 0A"

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_4
    :goto_3
    if-eqz v4, :cond_2

    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :goto_4
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    goto :goto_1

    :catch_1
    move-exception v1

    .local v1, e:Ljava/lang/Exception;
    :goto_5
    :try_start_4
    const-string v7, "View"

    const-string v8, "Unable to dump PTF hierarchy tree."

    invoke-static {v7, v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    const-string v7, "ERROR 00"

    invoke-virtual {v4, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :cond_5
    :goto_6
    if-eqz v4, :cond_2

    goto :goto_4

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    :cond_6
    throw v7

    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_7

    .restart local v1       #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    goto :goto_6

    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #out:Ljava/io/BufferedWriter;
    .restart local v5       #out:Ljava/io/BufferedWriter;
    :catch_3
    move-exception v1

    move-object v4, v5

    .end local v5           #out:Ljava/io/BufferedWriter;
    .restart local v4       #out:Ljava/io/BufferedWriter;
    goto :goto_5

    .restart local v3       #iae:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v7

    goto :goto_3

    .end local v3           #iae:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v3

    goto :goto_2
.end method

.method private static dumpCompositeViewWithProperties(Lcom/motorola/automation/WidgetDebugInterface;Ljava/io/BufferedWriter;I)Z
    .locals 4
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    invoke-interface {p0}, Lcom/motorola/automation/WidgetDebugInterface;->dumpCompositeView()Ljava/util/ArrayList;

    move-result-object v1

    .local v1, nodeEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    if-nez v1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/motorola/automation/WidgetDebugNode;

    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpWidgetDebugNode(Lcom/motorola/automation/WidgetDebugNode;Ljava/io/BufferedWriter;I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V
    .locals 5
    .parameter "group"
    .parameter "out"
    .parameter "level"

    .prologue
    invoke-static {p0, p1, p2}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    move-result v3

    if-nez v3, :cond_1

    .end local p0
    :cond_0
    :goto_0
    return-void

    .restart local p0
    :cond_1
    instance-of v3, p0, Lcom/motorola/automation/WidgetDebugInterface;

    if-eqz v3, :cond_2

    check-cast p0, Lcom/motorola/automation/WidgetDebugInterface;

    .end local p0
    invoke-static {p0, p1, p2}, Landroid/view/PtfViewDebug;->dumpCompositeViewWithProperties(Lcom/motorola/automation/WidgetDebugInterface;Ljava/io/BufferedWriter;I)Z

    goto :goto_0

    .restart local p0
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .local v2, view:Landroid/view/View;
    if-nez v2, :cond_3

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Null value for Child Views. Inconsistent capture"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_3
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_5

    check-cast v2, Landroid/view/ViewGroup;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpViewHierarchyWithProperties(Landroid/view/ViewGroup;Ljava/io/BufferedWriter;I)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .restart local v2       #view:Landroid/view/View;
    :cond_5
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z

    instance-of v3, v2, Lcom/motorola/automation/WidgetDebugInterface;

    if-eqz v3, :cond_4

    check-cast v2, Lcom/motorola/automation/WidgetDebugInterface;

    .end local v2           #view:Landroid/view/View;
    add-int/lit8 v3, p2, 0x1

    invoke-static {v2, p1, v3}, Landroid/view/PtfViewDebug;->dumpCompositeViewWithProperties(Lcom/motorola/automation/WidgetDebugInterface;Ljava/io/BufferedWriter;I)Z

    goto :goto_2
.end method

.method private static dumpViewWithProperties(Landroid/view/View;Ljava/io/BufferedWriter;I)Z
    .locals 22
    .parameter "view"
    .parameter "out"
    .parameter "level"

    .prologue
    if-nez p0, :cond_0

    const/16 v19, 0x0

    :goto_0
    return v19

    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-eqz v19, :cond_1

    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    move/from16 v0, p2

    if-ge v4, v0, :cond_2

    const/16 v19, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const/16 v19, 0x20

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, dumpStr:Ljava/lang/StringBuilder;
    const-string v6, "NO_ID"

    .local v6, idStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v5

    .local v5, id:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v12

    .local v12, resources:Landroid/content/res/Resources;
    if-ltz v5, :cond_3

    :try_start_1
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2f

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v12, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    :cond_3
    :goto_2
    :try_start_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v8, v0, [I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .local v8, position:[I
    :try_start_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    :try_start_4
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v8, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isClickable()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isSelected()Z

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/AbsListView;

    move/from16 v19, v0

    if-eqz v19, :cond_a

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getCount()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/AbsListView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/widget/Checkable;->isChecked()Z

    move-result v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    .local v15, text:Ljava/lang/String;
    invoke-static {v15}, Landroid/view/PtfViewDebug;->configureEscapeSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v15           #text:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v19, v0

    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ProgressBar;->getMax()I

    move-result v7

    .local v7, max:I
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v9, v19, v20

    .local v9, progress1:F
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/ProgressBar;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v7

    move/from16 v20, v0

    div-float v10, v19, v20

    .local v10, progress2:F
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/high16 v20, 0x42c8

    mul-float v20, v20, v9

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/high16 v20, 0x42c8

    mul-float v20, v20, v10

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v7           #max:I
    .end local v9           #progress1:F
    .end local v10           #progress2:F
    :goto_5
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v19, v0

    if-eqz v19, :cond_c

    const/4 v11, 0x0

    .local v11, resString:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, tempDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v13, :cond_7

    invoke-static {v13}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v11

    :cond_7
    if-eqz v11, :cond_8

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v11           #resString:Ljava/lang/String;
    .end local v13           #tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_8
    const-string v19, ","

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/io/BufferedWriter;->newLine()V

    const/16 v19, 0x1

    goto/16 :goto_0

    .end local v8           #position:[I
    :catch_0
    move-exception v3

    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UNKNOWN"

    goto/16 :goto_2

    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .restart local v8       #position:[I
    :catch_1
    move-exception v3

    .local v3, e:Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    .local v18, viewParent:Landroid/view/ViewParent;
    :goto_6
    move-object/from16 v0, v18

    instance-of v0, v0, Landroid/view/View;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v0, v18

    check-cast v0, Landroid/view/View;

    move-object/from16 v17, v0

    .local v17, viewP:Landroid/view/View;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v19, v0

    if-eqz v19, :cond_9

    const/16 v19, 0x0

    aget v20, v8, v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move/from16 v21, v0

    add-int v20, v20, v21

    aput v20, v8, v19

    const/16 v19, 0x1

    aget v20, v8, v19

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    move/from16 v21, v0

    add-int v20, v20, v21

    aput v20, v8, v19
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_3

    .end local v2           #dumpStr:Ljava/lang/StringBuilder;
    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v4           #i:I
    .end local v5           #id:I
    .end local v6           #idStr:Ljava/lang/String;
    .end local v8           #position:[I
    .end local v12           #resources:Landroid/content/res/Resources;
    .end local v17           #viewP:Landroid/view/View;
    .end local v18           #viewParent:Landroid/view/ViewParent;
    :catch_2
    move-exception v3

    .local v3, e:Ljava/io/IOException;
    const-string v19, "View"

    const-string v20, "Error while dumping PTF hierarchy tree."

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v19, 0x0

    goto/16 :goto_0

    .restart local v2       #dumpStr:Ljava/lang/StringBuilder;
    .local v3, e:Ljava/lang/NullPointerException;
    .restart local v4       #i:I
    .restart local v5       #id:I
    .restart local v6       #idStr:Ljava/lang/String;
    .restart local v8       #position:[I
    .restart local v12       #resources:Landroid/content/res/Resources;
    .restart local v17       #viewP:Landroid/view/View;
    .restart local v18       #viewParent:Landroid/view/ViewParent;
    :cond_9
    :try_start_5
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object/from16 v18, v0

    goto :goto_6

    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v17           #viewP:Landroid/view/View;
    .end local v18           #viewParent:Landroid/view/ViewParent;
    :cond_a
    const-string v19, ",,"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_b
    const-string v19, ",,"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .local v14, tempDrawables:[Landroid/graphics/drawable/Drawable;
    if-eqz v14, :cond_8

    const/4 v4, 0x0

    :goto_7
    array-length v0, v14

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v4, v0, :cond_8

    aget-object v13, v14, v4

    .restart local v13       #tempDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v13, :cond_e

    const-string v16, ""

    .local v16, tmpResString:Ljava/lang/String;
    :goto_8
    if-eqz v4, :cond_d

    const-string v19, ";"

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .end local v16           #tmpResString:Ljava/lang/String;
    :cond_e
    invoke-static {v13}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v16

    goto :goto_8
.end method

.method private static dumpWidgetDebugNode(Lcom/motorola/automation/WidgetDebugNode;Ljava/io/BufferedWriter;I)Z
    .locals 7
    .parameter "entry"
    .parameter "out"
    .parameter "level"

    .prologue
    const/4 v4, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, dumpStr:Ljava/lang/StringBuilder;
    if-nez p0, :cond_0

    :goto_0
    return v4

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getNodeLevel()I

    move-result v5

    add-int v3, p2, v5

    .local v3, levelAdj:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_1

    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    :goto_2
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(I)V

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getUniqueIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getXPosition()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getXPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getYPosition()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getYPosition()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getViewWidth()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_d

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getViewWidth()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getViewHeight()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getViewHeight()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_7
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getHasFocus()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getHasFocus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsClickable()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_10

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsClickable()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsEnabled()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsEnabled()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsFocused()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_12

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsFocused()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_b
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsSelected()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_13

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getIsSelected()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_c
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "LIST_COUNT"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    const-string v5, "LIST_COUNT"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SELECTED_ITEM_POSITION"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v5, "SELECTED_ITEM_POSITION"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "IS_CHECKED"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v5, "IS_CHECKED"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getText()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "PRIMARY_PROGRESS"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    const-string v5, "PRIMARY_PROGRESS"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "SECONDARY_PROGRESS"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v5, "SECONDARY_PROGRESS"

    invoke-virtual {p0, v5}, Lcom/motorola/automation/WidgetDebugNode;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getImage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getImage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getHashCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_14

    invoke-virtual {p0}, Lcom/motorola/automation/WidgetDebugNode;->getHashCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .end local v1           #i:I
    .end local v3           #levelAdj:I
    :catch_0
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    const-string v5, "View"

    const-string v6, "Error unable to dump view Hierarchy"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v2           #ioe:Ljava/io/IOException;
    .restart local v1       #i:I
    .restart local v3       #levelAdj:I
    :cond_a
    :try_start_1
    const-string v5, "NO_ID"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_b
    const-string v5, "-1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_c
    const-string v5, "-1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_5

    :cond_d
    const-string v5, "-1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6

    :cond_e
    const-string v5, "-1"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    :cond_f
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_8

    :cond_10
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_9

    :cond_11
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_a

    :cond_12
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    :cond_13
    const-string v5, "false"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_14
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_d
.end method

.method public static generateHierarchyFromView(Landroid/view/View;)Ljava/util/ArrayList;
    .locals 3
    .parameter "view"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/automation/WidgetDebugNode;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .local v0, toReturn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #toReturn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .restart local v0       #toReturn:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/view/PtfViewDebug;->hierarchyGeneratorHelper(Landroid/view/View;Ljava/util/ArrayList;I)V

    move-object v1, v0

    goto :goto_0
.end method

.method private static generateNodeFromView(Landroid/view/View;I)Lcom/motorola/automation/WidgetDebugNode;
    .locals 26
    .parameter "view"
    .parameter "level"

    .prologue
    const/16 v20, 0x0

    .local v20, toReturn:Lcom/motorola/automation/WidgetDebugNode;
    if-nez p0, :cond_0

    const/16 v23, 0x0

    :goto_0
    return-object v23

    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_1

    const/16 v23, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .local v2, className:Ljava/lang/String;
    const-string v6, "NO_ID"

    .local v6, idStr:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getId()I

    move-result v5

    .local v5, id:I
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    if-eqz v23, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    .local v14, resources:Landroid/content/res/Resources;
    if-ltz v5, :cond_2

    :try_start_0
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const/16 v24, 0x2f

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v14, v5}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .end local v14           #resources:Landroid/content/res/Resources;
    :cond_2
    :goto_1
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v10, v0, [I

    .local v10, position:[I
    :try_start_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationOnScreen([I)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_2
    new-instance v20, Lcom/motorola/automation/WidgetDebugNode;

    .end local v20           #toReturn:Lcom/motorola/automation/WidgetDebugNode;
    invoke-direct/range {v20 .. v20}, Lcom/motorola/automation/WidgetDebugNode;-><init>()V

    .restart local v20       #toReturn:Lcom/motorola/automation/WidgetDebugNode;
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setNodeLevel(I)Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lcom/motorola/automation/WidgetDebugNode;->setClassName(Ljava/lang/String;)Z

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Lcom/motorola/automation/WidgetDebugNode;->setUniqueIdentifier(Ljava/lang/String;)Z

    const/16 v23, 0x0

    aget v23, v10, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setXPosition(Ljava/lang/String;)Z

    const/16 v23, 0x1

    aget v23, v10, v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setYPosition(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setViewWidth(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setViewHeight(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->hasFocus()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setHasFocus(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isClickable()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setIsClickable(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isEnabled()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setIsEnabled(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isFocused()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setIsFocused(Ljava/lang/String;)Z

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->isSelected()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setIsSelected(Ljava/lang/String;)Z

    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/AbsListView;

    move/from16 v23, v0

    if-eqz v23, :cond_4

    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/AbsListView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AbsListView;->getCount()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .local v8, listCount:Ljava/lang/String;
    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/AbsListView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/AbsListView;->getSelectedItemPosition()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .local v15, selectedItemPosition:Ljava/lang/String;
    const-string v23, "LIST_COUNT"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v23, "SELECTED_ITEM_POSITION"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v15}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .end local v8           #listCount:Ljava/lang/String;
    .end local v15           #selectedItemPosition:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/Checkable;

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/Checkable;

    invoke-interface/range {v23 .. v23}, Landroid/widget/Checkable;->isChecked()Z

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v7

    .local v7, isChecked:Ljava/lang/String;
    const-string v23, "IS_CHECKED"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v7}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .end local v7           #isChecked:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    .local v19, text:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/view/PtfViewDebug;->configureEscapeSequence(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setText(Ljava/lang/String;)Z

    .end local v19           #text:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ProgressBar;

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/ProgressBar;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getMax()I

    move-result v9

    .local v9, max:I
    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/ProgressBar;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    div-float v23, v23, v24

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    .local v11, progress1:Ljava/lang/String;
    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/ProgressBar;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ProgressBar;->getSecondaryProgress()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    int-to-float v0, v9

    move/from16 v24, v0

    div-float v23, v23, v24

    const/high16 v24, 0x42c8

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .local v12, progress2:Ljava/lang/String;
    const-string v23, "PRIMARY_PROGRESS"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v23, "SECONDARY_PROGRESS"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v12}, Lcom/motorola/automation/WidgetDebugNode;->addProperty(Ljava/lang/String;Ljava/lang/String;)Z

    .end local v9           #max:I
    .end local v11           #progress1:Ljava/lang/String;
    .end local v12           #progress2:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v23, v0

    if-eqz v23, :cond_b

    const/4 v13, 0x0

    .local v13, resString:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, tempDrawable:Landroid/graphics/drawable/Drawable;
    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/ImageView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    if-eqz v16, :cond_8

    invoke-static/range {v16 .. v16}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v13

    :cond_8
    if-eqz v13, :cond_9

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Lcom/motorola/automation/WidgetDebugNode;->setImage(Ljava/lang/String;)Z

    .end local v13           #resString:Ljava/lang/String;
    .end local v16           #tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_9
    :goto_3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setHashCode(Ljava/lang/String;)Z

    move-object/from16 v23, v20

    goto/16 :goto_0

    .end local v10           #position:[I
    .restart local v14       #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v3

    .local v3, e:Landroid/content/res/Resources$NotFoundException;
    const-string v6, "UNKNOWN"

    goto/16 :goto_1

    .end local v3           #e:Landroid/content/res/Resources$NotFoundException;
    .end local v14           #resources:Landroid/content/res/Resources;
    .restart local v10       #position:[I
    :catch_1
    move-exception v3

    .local v3, e:Ljava/lang/NullPointerException;
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/view/View;->getLocationInWindow([I)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    .local v22, viewParent:Landroid/view/ViewParent;
    :goto_4
    move-object/from16 v0, v22

    instance-of v0, v0, Landroid/view/View;

    move/from16 v23, v0

    if-eqz v23, :cond_3

    move-object/from16 v21, v22

    check-cast v21, Landroid/view/View;

    .local v21, viewP:Landroid/view/View;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    const/16 v23, 0x0

    aget v24, v10, v23

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowLeft:I

    move/from16 v25, v0

    add-int v24, v24, v25

    aput v24, v10, v23

    const/16 v23, 0x1

    aget v24, v10, v23

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/view/View$AttachInfo;->mWindowTop:I

    move/from16 v25, v0

    add-int v24, v24, v25

    aput v24, v10, v23

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    move-object/from16 v22, v0

    goto :goto_4

    .end local v3           #e:Ljava/lang/NullPointerException;
    .end local v21           #viewP:Landroid/view/View;
    .end local v22           #viewParent:Landroid/view/ViewParent;
    :cond_b
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/widget/TextView;

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v23, p0

    check-cast v23, Landroid/widget/TextView;

    invoke-virtual/range {v23 .. v23}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v17

    .local v17, tempDrawables:[Landroid/graphics/drawable/Drawable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .local v13, resString:Ljava/lang/StringBuilder;
    if-eqz v17, :cond_e

    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v4, v0, :cond_e

    aget-object v16, v17, v4

    .restart local v16       #tempDrawable:Landroid/graphics/drawable/Drawable;
    if-nez v16, :cond_d

    const-string v18, ""

    .local v18, tempResString:Ljava/lang/String;
    :goto_6
    if-lez v4, :cond_c

    const-string v23, ";"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    move-object/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v18           #tempResString:Ljava/lang/String;
    :cond_d
    invoke-static/range {v16 .. v16}, Landroid/view/PtfViewDebug;->getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;

    move-result-object v18

    goto :goto_6

    .end local v4           #i:I
    .end local v16           #tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_e
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v23

    if-ltz v23, :cond_9

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/motorola/automation/WidgetDebugNode;->setImage(Ljava/lang/String;)Z

    goto/16 :goto_3
.end method

.method private static getDrawableImageSource(Landroid/graphics/drawable/Drawable;)Ljava/lang/String;
    .locals 3
    .parameter "image"

    .prologue
    const/4 v1, 0x0

    .local v1, tempDrawable:Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .local v0, imgSource:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    instance-of v2, v1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .end local v1           #tempDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getImageSourceName()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .end local v0           #imgSource:Ljava/lang/String;
    :goto_1
    return-object v0

    .restart local v0       #imgSource:Ljava/lang/String;
    .restart local v1       #tempDrawable:Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v2, v1, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v2, :cond_0

    check-cast v1, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v1           #tempDrawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/NinePatchDrawable;->getImageSourceName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_1
.end method

.method private static hierarchyGeneratorHelper(Landroid/view/View;Ljava/util/ArrayList;I)V
    .locals 7
    .parameter "view"
    .parameter
    .parameter "level"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/automation/WidgetDebugNode;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/motorola/automation/WidgetDebugNode;>;"
    const/4 v3, 0x0

    .local v3, temp:Lcom/motorola/automation/WidgetDebugNode;
    invoke-static {p0, p2}, Landroid/view/PtfViewDebug;->generateNodeFromView(Landroid/view/View;I)Lcom/motorola/automation/WidgetDebugNode;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v5, p0, Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    .local v1, group:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .local v4, viewChild:Landroid/view/View;
    if-nez v4, :cond_2

    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Null value for Child Views. Inconsistent capture."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_2
    add-int/lit8 v5, p2, 0x1

    invoke-static {v4, p1, v5}, Landroid/view/PtfViewDebug;->hierarchyGeneratorHelper(Landroid/view/View;Ljava/util/ArrayList;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
