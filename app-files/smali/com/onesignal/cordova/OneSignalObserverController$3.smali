.class Lcom/onesignal/cordova/OneSignalObserverController$3;
.super Ljava/lang/Object;
.source "OneSignalObserverController.java"

# interfaces
.implements Lcom/onesignal/OSEmailSubscriptionObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/cordova/OneSignalObserverController;->addEmailSubscriptionObserver(Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOSEmailSubscriptionChanged(Lcom/onesignal/OSEmailSubscriptionStateChanges;)V
    .locals 2

    .line 109
    invoke-virtual {p1}, Lcom/onesignal/OSEmailSubscriptionStateChanges;->getFrom()Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/OSEmailSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p0

    .line 110
    invoke-virtual {p1}, Lcom/onesignal/OSEmailSubscriptionStateChanges;->getTo()Lcom/onesignal/OSEmailSubscriptionState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onesignal/OSEmailSubscriptionState;->toJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 113
    const-string v0, "isSubscribed"

    const-string v1, "isEmailSubscribed"

    invoke-static {p0, p1, v0, v1}, Lcom/onesignal/cordova/OneSignalObserverController;->-$$Nest$smrenameStateChangesKey(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 115
    invoke-static {}, Lcom/onesignal/cordova/OneSignalObserverController;->-$$Nest$sfgetjsEmailSubscriptionObserverCallBack()Lorg/apache/cordova/CallbackContext;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/onesignal/cordova/OneSignalObserverController;->-$$Nest$smcallbackSuccess(Lorg/apache/cordova/CallbackContext;Lorg/json/JSONObject;)V

    return-void
.end method
