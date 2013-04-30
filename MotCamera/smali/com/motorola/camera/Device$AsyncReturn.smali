.class Lcom/motorola/camera/Device$AsyncReturn;
.super Ljava/lang/Object;
.source "Device.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/Device;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncReturn"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public exception:Ljava/lang/Exception;

.field final synthetic this$0:Lcom/motorola/camera/Device;

.field public value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/motorola/camera/Device;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter "ex"

    .prologue
    .line 1148
    .local p0, this:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<TT;>;"
    iput-object p1, p0, Lcom/motorola/camera/Device$AsyncReturn;->this$0:Lcom/motorola/camera/Device;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1149
    iput-object p2, p0, Lcom/motorola/camera/Device$AsyncReturn;->exception:Ljava/lang/Exception;

    .line 1150
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/Device;Ljava/lang/Exception;Lcom/motorola/camera/Device$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1139
    .local p0, this:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/Device$AsyncReturn;-><init>(Lcom/motorola/camera/Device;Ljava/lang/Exception;)V

    return-void
.end method

.method private constructor <init>(Lcom/motorola/camera/Device;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1144
    .local p0, this:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<TT;>;"
    .local p2, cameraDevice:Ljava/lang/Object;,"TT;"
    iput-object p1, p0, Lcom/motorola/camera/Device$AsyncReturn;->this$0:Lcom/motorola/camera/Device;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 1145
    iput-object p2, p0, Lcom/motorola/camera/Device$AsyncReturn;->value:Ljava/lang/Object;

    .line 1146
    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/camera/Device;Ljava/lang/Object;Lcom/motorola/camera/Device$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1139
    .local p0, this:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/motorola/camera/Device$AsyncReturn;-><init>(Lcom/motorola/camera/Device;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .locals 1

    .prologue
    .line 1157
    .local p0, this:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<TT;>;"
    iget-object v0, p0, Lcom/motorola/camera/Device$AsyncReturn;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 1153
    .local p0, this:Lcom/motorola/camera/Device$AsyncReturn;,"Lcom/motorola/camera/Device$AsyncReturn<TT;>;"
    iget-object v0, p0, Lcom/motorola/camera/Device$AsyncReturn;->value:Ljava/lang/Object;

    return-object v0
.end method
