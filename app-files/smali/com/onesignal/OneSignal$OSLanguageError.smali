.class public Lcom/onesignal/OneSignal$OSLanguageError;
.super Ljava/lang/Object;
.source "OneSignal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSLanguageError"
.end annotation


# instance fields
.field private errorCode:I

.field private message:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 240
    iput p1, p0, Lcom/onesignal/OneSignal$OSLanguageError;->errorCode:I

    .line 241
    iput-object p2, p0, Lcom/onesignal/OneSignal$OSLanguageError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 0

    .line 244
    iget p0, p0, Lcom/onesignal/OneSignal$OSLanguageError;->errorCode:I

    return p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/onesignal/OneSignal$OSLanguageError;->message:Ljava/lang/String;

    return-object p0
.end method
