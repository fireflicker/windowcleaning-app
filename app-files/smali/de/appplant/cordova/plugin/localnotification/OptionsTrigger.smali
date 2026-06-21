.class public Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;
.super Ljava/lang/Object;
.source "OptionsTrigger.java"


# instance fields
.field private triggerJSON:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getAfter()J
    .locals 3

    .line 61
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    const-string v0, "after"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAt()J
    .locals 3

    .line 39
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    const-string v0, "at"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBefore()J
    .locals 3

    .line 94
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    const-string v0, "before"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCount()I
    .locals 2

    .line 69
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    const-string v0, "count"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getEvery()Ljava/lang/Object;
    .locals 1

    .line 76
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    const-string v0, "every"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getEveryAsJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getEvery()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getEvery()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getEveryAsString()Ljava/lang/String;
    .locals 1

    .line 83
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getEvery()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getEvery()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getFirstAt()J
    .locals 3

    .line 54
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    const-string v0, "firstAt"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getIn()I
    .locals 2

    .line 43
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    const-string v0, "in"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 0

    .line 98
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    return-object p0
.end method

.method public getUnit()Ljava/lang/String;
    .locals 2

    .line 47
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    const-string v0, "unit"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public has(Ljava/lang/String;)Z
    .locals 0

    .line 35
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->triggerJSON:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
