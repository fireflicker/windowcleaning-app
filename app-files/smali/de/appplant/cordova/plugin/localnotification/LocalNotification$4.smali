.class synthetic Lde/appplant/cordova/plugin/localnotification/LocalNotification$4;
.super Ljava/lang/Object;
.source "LocalNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/appplant/cordova/plugin/localnotification/LocalNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$de$appplant$cordova$plugin$localnotification$Notification$Type:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 433
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->values()[Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$4;->$SwitchMap$de$appplant$cordova$plugin$localnotification$Notification$Type:[I

    :try_start_0
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$4;->$SwitchMap$de$appplant$cordova$plugin$localnotification$Notification$Type:[I

    sget-object v1, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
