.class public final Lde/appplant/cordova/plugin/localnotification/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field static final PREF_KEY_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field public static final TAG:Ljava/lang/String; = "Manager"

.field private static final randomGenerator:Ljava/util/Random;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 69
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/Manager;->randomGenerator:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    return-void
.end method

.method public static canScheduleExactAlarms(Landroid/content/Context;)Z
    .locals 2

    .line 80
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-ge v0, v1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 81
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 82
    invoke-virtual {p0}, Landroid/app/AlarmManager;->canScheduleExactAlarms()Z

    move-result p0

    return p0
.end method

.method public static createChannel(Landroid/content/Context;Lde/appplant/cordova/plugin/localnotification/Options;)V
    .locals 5

    .line 101
    invoke-static {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Manager;->getChannel(Landroid/content/Context;Lde/appplant/cordova/plugin/localnotification/Options;)Landroid/app/NotificationChannel;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 106
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Create channel, id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 108
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    const-string v1, "Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    new-instance v0, Landroid/app/NotificationChannel;

    .line 113
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelId()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelImportance()I

    move-result v4

    invoke-direct {v0, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 116
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidChannelEnableVibration()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 118
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelEnableLights()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 120
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getSoundUri()Landroid/net/Uri;

    move-result-object v2

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sound uri: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 129
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getSoundUsage()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 131
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationManagerCompat;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public static getChannel(Landroid/content/Context;Lde/appplant/cordova/plugin/localnotification/Options;)Landroid/app/NotificationChannel;
    .locals 0

    .line 88
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public static getRandomRequestCode()I
    .locals 2

    .line 325
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/Manager;->randomGenerator:Ljava/util/Random;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .line 289
    const-string v0, "NOTIFICATION_ID"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static grantUriPermission(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 318
    const-string v0, "com.android.systemui"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    return-void
.end method

.method public static wakeUpScreen(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    .line 304
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const v0, 0x10000006

    .line 305
    const-string v1, "LocalNotification"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    .line 307
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-object p0
.end method


# virtual methods
.method public cancelAll()V
    .locals 2

    .line 184
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationsFromSharedPreferences()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/appplant/cordova/plugin/localnotification/Notification;

    .line 185
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Notification;->cancel()V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    return-void
.end method

.method public clearAll()V
    .locals 2

    .line 173
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getByType(Lde/appplant/cordova/plugin/localnotification/Notification$Type;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/appplant/cordova/plugin/localnotification/Notification;

    .line 174
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Notification;->clear()V

    goto :goto_0

    .line 177
    :cond_0
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->cancelAll()V

    return-void
.end method

.method public deleteChannel(Ljava/lang/String;)V
    .locals 3

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Delete channel, id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Manager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    new-instance v0, Lde/appplant/cordova/plugin/localnotification/Manager;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/appplant/cordova/plugin/localnotification/Manager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationsFromSharedPreferences()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lde/appplant/cordova/plugin/localnotification/Notification;

    .line 147
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getOptions()Lde/appplant/cordova/plugin/localnotification/Options;

    move-result-object v2

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 148
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Notification;->cancel()V

    goto :goto_0

    .line 152
    :cond_1
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/core/app/NotificationManagerCompat;->deleteNotificationChannel(Ljava/lang/String;)V

    return-void
.end method

.method getActiveNotification(I)Landroid/service/notification/StatusBarNotification;
    .locals 2

    .line 272
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getActiveNotifications()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/notification/StatusBarNotification;

    .line 273
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getActiveNotifications()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/core/app/NotificationManagerCompat;->getActiveNotifications()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getByType(Lde/appplant/cordova/plugin/localnotification/Notification$Type;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/localnotification/Notification$Type;",
            ")",
            "Ljava/util/List<",
            "Lde/appplant/cordova/plugin/localnotification/Notification;",
            ">;"
        }
    .end annotation

    .line 263
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationsFromSharedPreferences()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationIdsByType(Lde/appplant/cordova/plugin/localnotification/Notification$Type;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationsFromSharedPreferences(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getNotificationIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 198
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 200
    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 205
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getNotificationIdsByType(Lde/appplant/cordova/plugin/localnotification/Notification$Type;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/appplant/cordova/plugin/localnotification/Notification$Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 218
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationIds()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 220
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 222
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getActiveNotifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    .line 223
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 226
    :cond_1
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    if-ne p1, v1, :cond_2

    return-object v0

    .line 229
    :cond_2
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationIds()Ljava/util/List;

    move-result-object p0

    .line 231
    invoke-interface {p0, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public getNotificationsFromSharedPreferences()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lde/appplant/cordova/plugin/localnotification/Notification;",
            ">;"
        }
    .end annotation

    .line 240
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationIds()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getNotificationsFromSharedPreferences(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationsFromSharedPreferences(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/List<",
            "Lde/appplant/cordova/plugin/localnotification/Notification;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 250
    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 251
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 0

    .line 282
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public update(ILorg/json/JSONObject;)Lde/appplant/cordova/plugin/localnotification/Notification;
    .locals 0

    .line 161
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Manager;->context:Landroid/content/Context;

    invoke-static {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 164
    :cond_0
    invoke-virtual {p0, p2}, Lde/appplant/cordova/plugin/localnotification/Notification;->update(Lorg/json/JSONObject;)V

    return-object p0
.end method
