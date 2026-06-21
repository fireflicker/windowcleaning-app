.class public Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerAt;
.super Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;
.source "TriggerHandlerAt.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TriggerHandlerAt"


# direct methods
.method public constructor <init>(Lde/appplant/cordova/plugin/localnotification/Options;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;-><init>(Lde/appplant/cordova/plugin/localnotification/Options;)V

    return-void
.end method


# virtual methods
.method public calculateNextTrigger(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerAt;->isLastOccurrence()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 60
    :cond_0
    new-instance p1, Ljava/util/Date;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerAt;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getAt()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    return-object p1
.end method

.method public isLastOccurrence()Z
    .locals 1

    .line 48
    iget p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerAt;->occurrence:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
