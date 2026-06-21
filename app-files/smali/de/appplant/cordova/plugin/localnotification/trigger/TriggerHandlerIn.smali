.class public Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerIn;
.super Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;
.source "TriggerHandlerIn.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TriggerHandlerIn"


# direct methods
.method public constructor <init>(Lde/appplant/cordova/plugin/localnotification/Options;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;-><init>(Lde/appplant/cordova/plugin/localnotification/Options;)V

    return-void
.end method


# virtual methods
.method public calculateNextTrigger(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 3

    .line 57
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerIn;->isLastOccurrence()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 62
    :cond_0
    :try_start_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerIn;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getUnit()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerIn;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getIn()I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerIn;->addInterval(Ljava/util/Calendar;Ljava/lang/String;I)V

    .line 63
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 65
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error calculating trigger, trigger unit is wrong: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TriggerHandlerIn"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public isLastOccurrence()Z
    .locals 1

    .line 48
    iget p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerIn;->occurrence:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
