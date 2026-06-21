.class Lcom/onesignal/ActivityLifecycleHandler$1;
.super Ljava/lang/Thread;
.source "ActivityLifecycleHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/ActivityLifecycleHandler;->handleLostFocus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/ActivityLifecycleHandler;


# direct methods
.method constructor <init>(Lcom/onesignal/ActivityLifecycleHandler;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/onesignal/ActivityLifecycleHandler$1;->this$0:Lcom/onesignal/ActivityLifecycleHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 186
    invoke-static {}, Lcom/onesignal/OneSignal;->getFocusTimeController()Lcom/onesignal/FocusTimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onesignal/FocusTimeController;->appStopped()V

    .line 187
    iget-object p0, p0, Lcom/onesignal/ActivityLifecycleHandler$1;->this$0:Lcom/onesignal/ActivityLifecycleHandler;

    invoke-static {p0}, Lcom/onesignal/ActivityLifecycleHandler;->access$100(Lcom/onesignal/ActivityLifecycleHandler;)Lcom/onesignal/OSFocusHandler;

    move-result-object p0

    const-wide/16 v0, 0x7d0

    sget-object v2, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    const-string v3, "FOCUS_LOST_WORKER_TAG"

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/onesignal/OSFocusHandler;->startOnLostFocusWorker(Ljava/lang/String;JLandroid/content/Context;)V

    return-void
.end method
