.class public Lde/appplant/cordova/plugin/localnotification/LocalNotification;
.super Lorg/apache/cordova/CordovaPlugin;
.source "LocalNotification.java"


# static fields
.field private static REQUEST_CODE_MANAGE_UNUSED_APP_RESTRICTIONS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "LocalNotification"

.field private static deviceready:Ljava/lang/Boolean;

.field private static eventQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static launchDetails:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static weakReferenceCordovaWebView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/apache/cordova/CordovaWebView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mactions(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->actions(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanScheduleExactAlarms(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->canScheduleExactAlarms(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancel(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cancel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelAll(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cancelAll(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclear(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->clear(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mclearAll(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->clearAll(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateChannel(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->createChannel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdeleteChannel(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deleteChannel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetUnusedAppRestrictionsStatus(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getUnusedAppRestrictionsStatus(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhasPermission(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->hasPermission(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mids(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->ids(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotification(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->notification(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifications(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->notifications(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenAlarmSettings(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->openAlarmSettings(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenManageUnusedAppRestrictions(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->openManageUnusedAppRestrictions(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenNotificationSettings(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->openNotificationSettings(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrequestPermission(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->requestPermission(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mschedule(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->schedule(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtype(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->type(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->update(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smdeviceready()V
    .locals 0

    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 89
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    const/16 v0, 0x3ed

    .line 97
    sput v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->REQUEST_CODE_MANAGE_UNUSED_APP_RESTRICTIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 81
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private actions(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    const/4 v0, 0x1

    .line 301
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 304
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v0, :cond_1

    if-eq v2, v3, :cond_0

    goto :goto_0

    .line 318
    :cond_0
    invoke-static {v1}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->isRegistered(Ljava/lang/String;)Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->successBoolean(Lorg/apache/cordova/CallbackContext;Z)V

    goto :goto_0

    .line 313
    :cond_1
    invoke-static {v1}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->unregister(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 307
    :cond_2
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->parse(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;

    move-result-object p0

    .line 308
    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->register(Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;)V

    .line 309
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    :goto_0
    return-void
.end method

.method private canScheduleExactAlarms(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 239
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->canScheduleExactAlarms(Landroid/content/Context;)Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->successBoolean(Lorg/apache/cordova/CallbackContext;Z)V

    return-void
.end method

.method private cancel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 383
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 384
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    invoke-static {v2, v3}, Lde/appplant/cordova/plugin/localnotification/Notification;->getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 385
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Notification;->cancel()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 388
    :cond_1
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private cancelAll(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 395
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->cancelAll()V

    .line 396
    const-string v0, "cancelall"

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private clear(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 405
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 406
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONArray;->optInt(II)I

    move-result v3

    invoke-static {v2, v3}, Lde/appplant/cordova/plugin/localnotification/Notification;->getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 407
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Notification;->clear()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private clearAll(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 417
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->clearAll()V

    .line 418
    const-string v0, "clearall"

    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private createChannel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    .line 344
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lde/appplant/cordova/plugin/localnotification/Options;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lde/appplant/cordova/plugin/localnotification/Manager;->createChannel(Landroid/content/Context;Lde/appplant/cordova/plugin/localnotification/Options;)V

    .line 345
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private deleteChannel(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Manager;->deleteChannel(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private static declared-synchronized deviceready()V
    .locals 3

    const-class v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    monitor-enter v0

    const/4 v1, 0x1

    .line 614
    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    .line 616
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 617
    invoke-static {v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->sendJavascript(Ljava/lang/String;)V

    goto :goto_0

    .line 620
    :cond_0
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private fireEvent(Ljava/lang/String;)V
    .locals 1

    .line 637
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;)V
    .locals 1

    .line 647
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-static {p0, p1, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;Lorg/json/JSONObject;)V

    return-void
.end method

.method static fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;Lorg/json/JSONObject;)V
    .locals 2

    .line 659
    :try_start_0
    const-string v0, "event"

    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 660
    const-string v0, "foreground"

    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isInForeground()Z

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 661
    const-string v0, "queued"

    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 664
    const-string v0, "notification"

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getId()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 667
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 670
    :cond_0
    :goto_0
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    if-nez v0, :cond_1

    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 671
    new-instance v0, Landroid/util/Pair;

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    .line 674
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_2

    .line 678
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getOptions()Lde/appplant/cordova/plugin/localnotification/Options;

    move-result-object p1

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 674
    const-string p1, "cordova.plugins.notification.local.fireEvent(\'%s\', %s)"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->sendJavascript(Ljava/lang/String;)V

    return-void
.end method

.method public static getAppName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 743
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 0

    .line 769
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    return-object p0
.end method

.method private getManager()Lde/appplant/cordova/plugin/localnotification/Manager;
    .locals 1

    .line 765
    new-instance v0, Lde/appplant/cordova/plugin/localnotification/Manager;

    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lde/appplant/cordova/plugin/localnotification/Manager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getUnusedAppRestrictionsStatus(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 560
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/content/PackageManagerCompat;->getUnusedAppRestrictionsStatus(Landroid/content/Context;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 561
    new-instance v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;

    invoke-direct {v1, p0, p1, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification$2;-><init>(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;Lcom/google/common/util/concurrent/ListenableFuture;)V

    .line 569
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/content/ContextCompat;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object p0

    .line 561
    invoke-interface {v0, v1, p0}, Lcom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method private hasPermission(Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 232
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    invoke-direct {p0, p1, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->successBoolean(Lorg/apache/cordova/CallbackContext;Z)V

    return-void
.end method

.method private ids(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    const/4 v0, 0x0

    .line 451
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    .line 452
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object p0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    .line 466
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    .line 463
    :cond_0
    sget-object p1, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationIdsByType(Lde/appplant/cordova/plugin/localnotification/Notification$Type;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 460
    :cond_1
    sget-object p1, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationIdsByType(Lde/appplant/cordova/plugin/localnotification/Notification$Type;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 457
    :cond_2
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationIds()Ljava/util/List;

    move-result-object p0

    .line 470
    :goto_0
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    return-void
.end method

.method public static isAppRunning()Z
    .locals 1

    .line 722
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->weakReferenceCordovaWebView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isInForeground()Z
    .locals 4

    .line 706
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->weakReferenceCordovaWebView:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 708
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CordovaWebView;

    .line 711
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "keyguard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    .line 715
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-interface {v0}, Lorg/apache/cordova/CordovaWebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private launch(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 212
    sget-object p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    if-nez p0, :cond_0

    return-void

    .line 214
    :cond_0
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 217
    :try_start_0
    const-string v0, "id"

    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v0, "action"

    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 220
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 223
    :goto_0
    invoke-virtual {p1, p0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    const/4 p0, 0x0

    .line 225
    sput-object p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchDetails:Landroid/util/Pair;

    return-void
.end method

.method public static launchApp(Landroid/content/Context;)V
    .locals 2

    .line 729
    const-string v0, "LocalNotification"

    const-string v1, "Launching the app"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x20020000

    .line 734
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 735
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private notification(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 477
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    invoke-static {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 480
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getOptions()Lde/appplant/cordova/plugin/localnotification/Options;

    move-result-object p0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getJSON()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p2}, Lorg/apache/cordova/CallbackContext;->success()V

    :goto_0
    return-void
.end method

.method private notifications(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    const/4 v0, 0x0

    .line 490
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 491
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object p1

    .line 492
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 505
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object v0

    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationsFromSharedPreferences(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 502
    :cond_1
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object p0

    sget-object p1, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Manager;->getByType(Lde/appplant/cordova/plugin/localnotification/Notification$Type;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 499
    :cond_2
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object p0

    sget-object p1, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Manager;->getByType(Lde/appplant/cordova/plugin/localnotification/Notification$Type;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 496
    :cond_3
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object p0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationsFromSharedPreferences()Ljava/util/List;

    move-result-object v2

    .line 509
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 511
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lde/appplant/cordova/plugin/localnotification/Notification;

    .line 512
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getOptions()Lde/appplant/cordova/plugin/localnotification/Options;

    move-result-object v0

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getJSON()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 515
    :cond_4
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, p0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONArray;)V

    return-void
.end method

.method private openAlarmSettings(Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    .line 544
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 545
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "package:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 547
    invoke-interface {p0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "android.settings.REQUEST_SCHEDULE_EXACT_ALARM"

    invoke-direct {v1, v2, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 545
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 550
    :cond_0
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private openManageUnusedAppRestrictions(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 577
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 576
    invoke-static {v0, v1}, Landroidx/core/content/IntentCompat;->createManageUnusedAppRestrictionsIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 580
    sget v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->REQUEST_CODE_MANAGE_UNUSED_APP_RESTRICTIONS:I

    invoke-static {p1, v1}, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->storeContext(Lorg/apache/cordova/CallbackContext;I)I

    .line 583
    iget-object p1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    sget v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->REQUEST_CODE_MANAGE_UNUSED_APP_RESTRICTIONS:I

    invoke-interface {p1, p0, v0, v1}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V

    return-void
.end method

.method private openNotificationSettings(Lorg/apache/cordova/CallbackContext;)V
    .locals 3

    .line 521
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 522
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 525
    const-string v2, "android.settings.APP_NOTIFICATION_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    const-string v2, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 533
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->startActivity(Landroid/content/Intent;)V

    .line 534
    invoke-virtual {p1}, Lorg/apache/cordova/CallbackContext;->success()V

    return-void
.end method

.method private requestPermission(Lorg/apache/cordova/CallbackContext;)V
    .locals 2

    .line 248
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 249
    invoke-direct {p0, p1, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->successBoolean(Lorg/apache/cordova/CallbackContext;Z)V

    return-void

    .line 255
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    const/4 v0, 0x0

    .line 256
    invoke-direct {p0, p1, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->successBoolean(Lorg/apache/cordova/CallbackContext;Z)V

    return-void

    .line 262
    :cond_1
    invoke-static {p1}, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->storeContext(Lorg/apache/cordova/CallbackContext;)I

    move-result p1

    .line 265
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-interface {v0, p0, p1, v1}, Lorg/apache/cordova/CordovaInterface;->requestPermission(Lorg/apache/cordova/CordovaPlugin;ILjava/lang/String;)V

    return-void
.end method

.method private schedule(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 4

    const/4 v0, 0x0

    .line 328
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 329
    new-instance v1, Lde/appplant/cordova/plugin/localnotification/Notification;

    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lde/appplant/cordova/plugin/localnotification/Notification;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 330
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Notification;->scheduleNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "add"

    invoke-static {v2, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 333
    :cond_1
    invoke-direct {p0, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->hasPermission(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private static declared-synchronized sendJavascript(Ljava/lang/String;)V
    .locals 4

    const-class v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    monitor-enter v0

    .line 688
    :try_start_0
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->weakReferenceCordovaWebView:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/cordova/CordovaWebView;

    .line 695
    invoke-interface {v1}, Lorg/apache/cordova/CordovaWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lde/appplant/cordova/plugin/localnotification/LocalNotification$3;

    invoke-direct {v3, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification$3;-><init>(Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    monitor-exit v0

    return-void

    .line 689
    :cond_1
    :goto_0
    :try_start_1
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->eventQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 690
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private successBoolean(Lorg/apache/cordova/CallbackContext;Z)V
    .locals 1

    .line 628
    new-instance p0, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, v0, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Z)V

    invoke-virtual {p1, p0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method

.method private toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 752
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 754
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 755
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private type(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 426
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    invoke-static {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object p0

    .line 428
    const-string p1, "unknown"

    if-nez p0, :cond_0

    .line 429
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    return-void

    .line 433
    :cond_0
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$4;->$SwitchMap$de$appplant$cordova$plugin$localnotification$Notification$Type:[I

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getType()Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    move-result-object p0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    .line 441
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 438
    :cond_1
    const-string p0, "triggered"

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_2
    const-string p0, "scheduled"

    invoke-virtual {p2, p0}, Lorg/apache/cordova/CallbackContext;->success(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private update(Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 363
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 365
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 366
    const-string v3, "id"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    .line 367
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getManager()Lde/appplant/cordova/plugin/localnotification/Manager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Lde/appplant/cordova/plugin/localnotification/Manager;->update(ILorg/json/JSONObject;)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 373
    :cond_0
    const-string v3, "update"

    invoke-static {v3, v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-direct {p0, p2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->hasPermission(Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "execute, action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", args="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v0, "launch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 152
    invoke-direct {p0, p3}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launch(Lorg/apache/cordova/CallbackContext;)V

    return v1

    .line 156
    :cond_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v2, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;

    invoke-direct {v2, p0, p1, p2, p3}, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;-><init>(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return v1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 596
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "onActivityResult, requestCode="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", resultCode="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", intent="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p3, "LocalNotification"

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {p1}, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->getCallbackContext(I)Lorg/apache/cordova/CallbackContext;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 604
    invoke-virtual {p0, p2}, Lorg/apache/cordova/CallbackContext;->success(I)V

    .line 607
    :cond_0
    invoke-static {p1}, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->clearContext(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 126
    invoke-super {p0}, Lorg/apache/cordova/CordovaPlugin;->onDestroy()V

    .line 127
    const-string p0, "LocalNotification"

    const-string v0, "onDestroy"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .line 128
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready:Ljava/lang/Boolean;

    return-void
.end method

.method public onRequestPermissionResult(I[Ljava/lang/String;[I)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 279
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRequestPermissionResult, requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", permissions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 281
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", grantResults="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 282
    invoke-static {p3}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 279
    const-string v0, "LocalNotification"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    array-length p2, p3

    const/4 v0, 0x0

    if-lez p2, :cond_0

    aget p2, p3, v0

    if-nez p2, :cond_0

    const/4 v0, 0x1

    .line 287
    :cond_0
    invoke-static {p1}, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->getCallbackContext(I)Lorg/apache/cordova/CallbackContext;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 289
    invoke-direct {p0, p2, v0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->successBoolean(Lorg/apache/cordova/CallbackContext;Z)V

    .line 292
    :cond_1
    invoke-static {p1}, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->clearContext(I)V

    return-void
.end method

.method public onResume(Z)V
    .locals 0

    .line 116
    invoke-super {p0, p1}, Lorg/apache/cordova/CordovaPlugin;->onResume(Z)V

    .line 117
    const-string p0, "LocalNotification"

    const-string p1, "onResume"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->deviceready()V

    return-void
.end method

.method protected pluginInitialize()V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->weakReferenceCordovaWebView:Ljava/lang/ref/WeakReference;

    .line 106
    new-instance v0, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getSharedDirectory()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    return-void
.end method
