.class public abstract Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;
.super Ljava/lang/Object;
.source "TriggerHandler.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TriggerHandler"


# instance fields
.field baseDate:Ljava/util/Date;

.field occurrence:I

.field options:Lde/appplant/cordova/plugin/localnotification/Options;

.field optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

.field triggerDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Lde/appplant/cordova/plugin/localnotification/Options;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->occurrence:I

    .line 58
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 59
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->getOptionsTrigger()Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    move-result-object p1

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    .line 62
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->baseDate:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public addInterval(Ljava/util/Calendar;Ljava/lang/String;I)V
    .locals 5

    .line 157
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, -0x1

    sparse-switch p0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string p0, "quarter"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_1
    const-string p0, "month"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v4, v0

    goto :goto_0

    :sswitch_2
    const-string p0, "year"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_3
    const-string p0, "week"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_4
    const-string p0, "hour"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    move v4, v2

    goto :goto_0

    :sswitch_5
    const-string p0, "day"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_0

    :sswitch_6
    const-string p0, "second"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v4, v1

    goto :goto_0

    :sswitch_7
    const-string p0, "minute"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 191
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Unknown trigger unit: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    mul-int/2addr p3, v2

    .line 183
    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 179
    :pswitch_1
    invoke-virtual {p1, v3, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 187
    :pswitch_2
    invoke-virtual {p1, v1, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 175
    :pswitch_3
    invoke-virtual {p1, v2, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :pswitch_4
    const/16 p0, 0xb

    .line 167
    invoke-virtual {p1, p0, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    .line 171
    :pswitch_5
    invoke-virtual {p1, v0, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :pswitch_6
    const/16 p0, 0xd

    .line 159
    invoke-virtual {p1, p0, p3}, Ljava/util/Calendar;->add(II)V

    goto :goto_1

    :pswitch_7
    const/16 p0, 0xc

    .line 163
    invoke-virtual {p1, p0, p3}, Ljava/util/Calendar;->add(II)V

    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x400459ec -> :sswitch_7
        -0x3604bb8c -> :sswitch_6
        0x1839c -> :sswitch_5
        0x30f5e4 -> :sswitch_4
        0x379ff4 -> :sswitch_3
        0x38883d -> :sswitch_2
        0x6342280 -> :sswitch_1
        0x26d3a2ac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract calculateNextTrigger(Ljava/util/Calendar;)Ljava/util/Date;
.end method

.method dateToCalendar(Ljava/util/Date;)Ljava/util/Calendar;
    .locals 0

    .line 139
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    .line 140
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    return-object p0
.end method

.method public getBaseDate()Ljava/util/Date;
    .locals 0

    .line 125
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->baseDate:Ljava/util/Date;

    return-object p0
.end method

.method public getNextTriggerDate()Ljava/util/Date;
    .locals 5

    .line 80
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->triggerDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->baseDate:Ljava/util/Date;

    :cond_0
    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->triggerDate:Ljava/util/Date;

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Get next trigger date, baseDate="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->baseDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", triggerOptions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    .line 87
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", occurrence="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->occurrence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    const-string v2, "TriggerHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->isLastOccurrence()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    .line 93
    :cond_1
    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->baseDate:Ljava/util/Date;

    invoke-virtual {p0, v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->dateToCalendar(Ljava/util/Date;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {p0, v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->calculateNextTrigger(Ljava/util/Calendar;)Ljava/util/Date;

    move-result-object v1

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Next trigger date: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", notificationId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    return-object v0

    .line 100
    :cond_2
    iget v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->occurrence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->occurrence:I

    .line 103
    iput-object v1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->triggerDate:Ljava/util/Date;

    return-object v1
.end method

.method public getOccurrence()I
    .locals 0

    .line 132
    iget p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->occurrence:I

    return p0
.end method

.method public getTriggerDate()Ljava/util/Date;
    .locals 0

    .line 121
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->triggerDate:Ljava/util/Date;

    return-object p0
.end method

.method public abstract isLastOccurrence()Z
.end method

.method public isWithinTriggerbefore(Ljava/util/Calendar;)Z
    .locals 2

    .line 149
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    const-string v1, "before"

    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->optionsTrigger:Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getBefore()J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public restoreState(ILjava/util/Date;Ljava/util/Date;)V
    .locals 0

    .line 115
    iput p1, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->occurrence:I

    .line 116
    iput-object p2, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->baseDate:Ljava/util/Date;

    .line 117
    iput-object p3, p0, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->triggerDate:Ljava/util/Date;

    return-void
.end method
