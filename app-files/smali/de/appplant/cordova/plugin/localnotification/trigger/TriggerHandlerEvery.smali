.class public Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;
.super Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;
.source "TriggerHandlerEvery.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TriggerHandlerEvery"


# instance fields
.field private triggerEveryJSONObject:Lorg/json/JSONObject;

.field private triggerEveryString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lde/appplant/cordova/plugin/localnotification/Options;)V
    .locals 2

    .line 48
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;-><init>(Lde/appplant/cordova/plugin/localnotification/Options;)V

    .line 51
    iget-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getEveryAsString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryString:Ljava/lang/String;

    .line 52
    iget-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getEveryAsJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    .line 55
    iget-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    const-string v0, "firstAt"

    invoke-virtual {p1, v0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getFirstAt()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->baseDate:Ljava/util/Date;

    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    const-string v0, "after"

    invoke-virtual {p1, v0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 59
    new-instance p1, Ljava/util/Date;

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getAfter()J

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->baseDate:Ljava/util/Date;

    :cond_1
    :goto_0
    return-void
.end method

.method private resetDayIfNotSetByTrigger(Ljava/util/Calendar;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v1, "day"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v0, "weekday"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    const/4 v0, 0x1

    .line 234
    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method private resetTimeIfNotSetByTrigger(Ljava/util/Calendar;)V
    .locals 2

    .line 223
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v1, "minute"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 225
    :cond_0
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v0, "hour"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/16 p0, 0xb

    invoke-virtual {p1, p0, v1}, Ljava/util/Calendar;->set(II)V

    :cond_1
    return-void
.end method

.method private resetWeekdayIfNotSetByTrigger(Ljava/util/Calendar;)V
    .locals 1

    .line 238
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v0, "weekday"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x7

    .line 239
    invoke-virtual {p1}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p1, p0, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method

.method private setEveryValues(Ljava/util/Calendar;)I
    .locals 8

    const/16 v0, 0xd

    const/4 v1, 0x0

    .line 128
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->set(II)V

    .line 131
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v2, "minute"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xa

    .line 138
    :cond_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v2, "hour"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x6

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 140
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetTimeIfNotSetByTrigger(Ljava/util/Calendar;)V

    move v1, v3

    .line 146
    :cond_1
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v2, "day"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    .line 147
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v4, v0}, Ljava/util/Calendar;->set(II)V

    .line 148
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetTimeIfNotSetByTrigger(Ljava/util/Calendar;)V

    move v1, v5

    .line 154
    :cond_2
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v2, "weekday"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-eqz v0, :cond_3

    .line 156
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v7

    const/4 v1, 0x7

    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 158
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetTimeIfNotSetByTrigger(Ljava/util/Calendar;)V

    move v1, v6

    .line 165
    :cond_3
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v2, "weekOfMonth"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 167
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    .line 168
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 171
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetTimeIfNotSetByTrigger(Ljava/util/Calendar;)V

    .line 172
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetWeekdayIfNotSetByTrigger(Ljava/util/Calendar;)V

    if-ne v0, v7, :cond_4

    .line 176
    invoke-virtual {p1, v4, v7}, Ljava/util/Calendar;->set(II)V

    .line 178
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->setWeekdayIfInFuture(Ljava/util/Calendar;)V

    :cond_4
    move v1, v5

    .line 186
    :cond_5
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v2, "week"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 187
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 188
    invoke-virtual {p1, v6, v0}, Ljava/util/Calendar;->set(II)V

    .line 190
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetTimeIfNotSetByTrigger(Ljava/util/Calendar;)V

    .line 191
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetWeekdayIfNotSetByTrigger(Ljava/util/Calendar;)V

    if-ne v0, v7, :cond_6

    .line 195
    invoke-virtual {p1, v3, v7}, Ljava/util/Calendar;->set(II)V

    .line 197
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->setWeekdayIfInFuture(Ljava/util/Calendar;)V

    :cond_6
    move v1, v7

    .line 204
    :cond_7
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v2, "month"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 206
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sub-int/2addr v0, v7

    invoke-virtual {p1, v5, v0}, Ljava/util/Calendar;->set(II)V

    .line 208
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetTimeIfNotSetByTrigger(Ljava/util/Calendar;)V

    .line 209
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->resetDayIfNotSetByTrigger(Ljava/util/Calendar;)V

    goto :goto_0

    :cond_8
    move v7, v1

    :goto_0
    return v7
.end method

.method private setWeekdayIfInFuture(Ljava/util/Calendar;)V
    .locals 4

    .line 248
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    const-string v1, "weekday"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x7

    .line 252
    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-ge v2, v3, :cond_1

    .line 253
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, v0, p0}, Ljava/util/Calendar;->set(II)V

    :cond_1
    return-void
.end method


# virtual methods
.method public calculateNextTrigger(Ljava/util/Calendar;)Ljava/util/Date;
    .locals 4

    .line 74
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->isLastOccurrence()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 76
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 79
    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryString:Ljava/lang/String;

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 81
    :try_start_0
    invoke-virtual {p0, v0, v2, v3}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->addInterval(Ljava/util/Calendar;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error calculating next trigger, trigger unit is wrong: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TriggerHandlerEvery"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 88
    :cond_1
    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->triggerEveryJSONObject:Lorg/json/JSONObject;

    if-eqz v2, :cond_3

    .line 92
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->setEveryValues(Ljava/util/Calendar;)I

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 101
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    if-gtz p1, :cond_3

    .line 102
    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 106
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->setEveryValues(Ljava/util/Calendar;)I

    .line 111
    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->isWithinTriggerbefore(Ljava/util/Calendar;)Z

    move-result p0

    if-nez p0, :cond_4

    return-object v1

    .line 113
    :cond_4
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public isLastOccurrence()Z
    .locals 2

    .line 65
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->occurrence:I

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getCount()I

    move-result p0

    if-lt v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
