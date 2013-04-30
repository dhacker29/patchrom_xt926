.class public Lcom/android/internal/telephony/GsmAlphabet$ShiftType;
.super Ljava/lang/Object;
.source "GsmAlphabet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GsmAlphabet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShiftType"
.end annotation


# instance fields
.field public lockShift:I

.field public singleShift:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/internal/telephony/GsmAlphabet$ShiftType;->singleShift:I

    iput v0, p0, Lcom/android/internal/telephony/GsmAlphabet$ShiftType;->lockShift:I

    return-void
.end method
