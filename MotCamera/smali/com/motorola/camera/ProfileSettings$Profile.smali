.class Lcom/motorola/camera/ProfileSettings$Profile;
.super Ljava/lang/Object;
.source "ProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Profile"
.end annotation


# instance fields
.field normal:I

.field timelapse:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "normal"
    .parameter "timelapse"

    .prologue
    .line 47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p1, p0, Lcom/motorola/camera/ProfileSettings$Profile;->normal:I

    .line 49
    iput p2, p0, Lcom/motorola/camera/ProfileSettings$Profile;->timelapse:I

    .line 50
    return-void
.end method
