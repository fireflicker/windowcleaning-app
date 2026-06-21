.class public Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;
.super Landroid/app/Activity;
.source "NotificationClickActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NotificationClickActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private setTextInput(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Landroidx/core/app/RemoteInput;->getResultsFromIntent(Landroid/content/Intent;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 104
    :cond_0
    :try_start_0
    const-string v0, "text"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 106
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 57
    const-string v0, "Creating NotificationClickActivity"

    const-string v1, "NotificationClickActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "NOTIFICATION_ID"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "notification clicked, id="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object p1

    if-nez p1, :cond_0

    .line 69
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchApp(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->finish()V

    return-void

    .line 75
    :cond_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "NOTIFICATION_ACTION_ID"

    const-string v2, "click"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 77
    invoke-direct {p0, v0, v1}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->setTextInput(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 79
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "NOTIFICATION_LAUNCH"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->launchApp(Landroid/content/Context;)V

    .line 81
    :cond_1
    invoke-static {v0, p1, v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;Lorg/json/JSONObject;)V

    .line 83
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getOptions()Lde/appplant/cordova/plugin/localnotification/Options;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidOngoing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 88
    :cond_2
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->clear()V

    .line 91
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;->finish()V

    return-void
.end method
