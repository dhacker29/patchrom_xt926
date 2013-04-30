.class public Lcom/motorola/camera/ui/v2/AlertPopup$Builder;
.super Ljava/lang/Object;
.source "AlertPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/v2/AlertPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 5
    .parameter "context"
    .parameter "root"

    .prologue
    .line 157
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 158
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 160
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f080008

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, alertRootView:Landroid/view/View;
    if-eqz p2, :cond_0

    .line 162
    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 164
    :cond_0
    const/high16 v3, 0x7f03

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 165
    .local v2, view:Landroid/view/View;
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 166
    const v3, 0x7f080009

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/v2/AlertPopup;

    iput-object v3, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    .line 167
    iget-object v3, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->initializeParent()V
    invoke-static {v3}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$000(Lcom/motorola/camera/ui/v2/AlertPopup;)V

    .line 168
    return-void
.end method


# virtual methods
.method public create()Lcom/motorola/camera/ui/v2/AlertPopup;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    return-object v0
.end method

.method public setAlertPopupData(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)Lcom/motorola/camera/ui/v2/AlertPopup$Builder;
    .locals 3
    .parameter "popup"

    .prologue
    .line 178
    iget v0, p1, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->message:I

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    iget v1, p1, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->message:I

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->setMessage(I)V
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$100(Lcom/motorola/camera/ui/v2/AlertPopup;I)V

    .line 182
    :cond_0
    iget v0, p1, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->title:I

    if-eqz v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    iget v1, p1, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->title:I

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->setTitle(I)V
    invoke-static {v0, v1}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$200(Lcom/motorola/camera/ui/v2/AlertPopup;I)V

    .line 186
    :cond_1
    #getter for: Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveButtonText:I
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->access$300(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)I

    move-result v0

    if-eqz v0, :cond_2

    #getter for: Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->access$400(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    #getter for: Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveButtonText:I
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->access$300(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)I

    move-result v1

    #getter for: Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->access$400(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    move-result-object v2

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$500(Lcom/motorola/camera/ui/v2/AlertPopup;ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    .line 190
    :cond_2
    #getter for: Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->negativeButtonText:I
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->access$600(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)I

    move-result v0

    if-eqz v0, :cond_3

    #getter for: Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->positiveCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->access$400(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 191
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    #getter for: Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->negativeButtonText:I
    invoke-static {p1}, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->access$600(Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;)I

    move-result v1

    iget-object v2, p1, Lcom/motorola/camera/ui/v2/AlertPopup$AlertPopupData;->negativeCallback:Lcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->setNegativeButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    invoke-static {v0, v1, v2}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$700(Lcom/motorola/camera/ui/v2/AlertPopup;ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    .line 193
    :cond_3
    return-object p0
.end method

.method public setMessage(I)Lcom/motorola/camera/ui/v2/AlertPopup$Builder;
    .locals 1
    .parameter "message"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->setMessage(I)V
    invoke-static {v0, p1}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$100(Lcom/motorola/camera/ui/v2/AlertPopup;I)V

    .line 213
    return-object p0
.end method

.method public setNegativeButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)Lcom/motorola/camera/ui/v2/AlertPopup$Builder;
    .locals 1
    .parameter "textId"
    .parameter "click"

    .prologue
    .line 202
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    invoke-static {v0, p1, p2}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$500(Lcom/motorola/camera/ui/v2/AlertPopup;ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    .line 203
    return-object p0
.end method

.method public setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)Lcom/motorola/camera/ui/v2/AlertPopup$Builder;
    .locals 1
    .parameter "textId"
    .parameter "click"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->setPositiveButton(ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V
    invoke-static {v0, p1, p2}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$500(Lcom/motorola/camera/ui/v2/AlertPopup;ILcom/motorola/camera/ui/v2/AlertPopup$OnClickListener;)V

    .line 198
    return-object p0
.end method

.method public setTitle(I)Lcom/motorola/camera/ui/v2/AlertPopup$Builder;
    .locals 1
    .parameter "textId"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/motorola/camera/ui/v2/AlertPopup$Builder;->mPopup:Lcom/motorola/camera/ui/v2/AlertPopup;

    #calls: Lcom/motorola/camera/ui/v2/AlertPopup;->setTitle(I)V
    invoke-static {v0, p1}, Lcom/motorola/camera/ui/v2/AlertPopup;->access$200(Lcom/motorola/camera/ui/v2/AlertPopup;I)V

    .line 208
    return-object p0
.end method
