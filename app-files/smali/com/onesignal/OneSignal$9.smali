.class Lcom/onesignal/OneSignal$9;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->onAppLostFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1362
    invoke-static {}, Lcom/onesignal/OneSignal;->access$100()Lcom/onesignal/OSLogger;

    move-result-object p0

    const-string v0, "Running onAppLostFocus() operation from a pending task queue."

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    .line 1363
    invoke-static {}, Lcom/onesignal/OneSignal;->backgroundSyncLogic()V

    return-void
.end method
