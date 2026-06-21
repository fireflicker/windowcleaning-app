.class Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;
.super Ljava/lang/Object;
.source "LocalNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getUnusedAppRestrictionsStatus(Lorg/apache/cordova/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;

.field final synthetic val$listenableFuture:Lcom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;Lcom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 561
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iput-object p2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iput-object p3, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;->val$listenableFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 564
    :try_start_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;->val$listenableFuture:Lcom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v1}, Lcom/google/common/util/concurrent/ListenableFuture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/cordova/CallbackContext;->success(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 566
    :catch_0
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CallbackContext;->success(I)V

    :goto_0
    return-void
.end method
