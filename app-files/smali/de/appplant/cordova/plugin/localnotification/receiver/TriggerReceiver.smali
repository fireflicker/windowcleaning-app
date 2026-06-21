.class public Lde/appplant/cordova/plugin/localnotification/receiver/TriggerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TriggerReceiver.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TriggerReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 49
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Received action: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "TriggerReceiver"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_3

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_1

    .line 56
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p2, "NOTIFICATION_ID"

    const/4 v1, -0x1

    invoke-virtual {p0, p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    .line 57
    invoke-static {p1, p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object p1

    if-nez p1, :cond_2

    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Notification not found in shared preferences for ID: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 p0, 0x0

    .line 65
    invoke-virtual {p1, p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->show(Z)V

    .line 66
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->scheduleNext()Z

    return-void

    .line 52
    :cond_3
    :goto_1
    const-string p0, "Intent or extras is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
