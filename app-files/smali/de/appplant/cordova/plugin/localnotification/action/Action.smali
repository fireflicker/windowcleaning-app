.class public final Lde/appplant/cordova/plugin/localnotification/action/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field public static final CLICK_ACTION_ID:Ljava/lang/String; = "click"

.field public static final EXTRA_ID:Ljava/lang/String; = "NOTIFICATION_ACTION_ID"


# instance fields
.field private final actionOptionsJSON:Lorg/json/JSONObject;

.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->context:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    return-void
.end method

.method private getChoices()[Ljava/lang/String;
    .locals 4

    .line 127
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    const-string v0, "choices"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 132
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 135
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public buildRemoteInput()Landroidx/core/app/RemoteInput;
    .locals 4

    .line 112
    new-instance v0, Landroidx/core/app/RemoteInput$Builder;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/action/Action;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    const-string v2, "emptyText"

    .line 113
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    const-string v2, "editable"

    const/4 v3, 0x1

    .line 118
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/core/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroidx/core/app/RemoteInput$Builder;

    move-result-object v0

    .line 119
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/action/Action;->getChoices()[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroidx/core/app/RemoteInput$Builder;

    move-result-object p0

    .line 120
    invoke-virtual {p0}, Landroidx/core/app/RemoteInput$Builder;->build()Landroidx/core/app/RemoteInput;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()I
    .locals 2

    .line 82
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->context:Landroid/content/Context;

    invoke-direct {v1, p0}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x0

    invoke-virtual {v1, v0, p0}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getResourceId(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_0

    const p0, 0x1080098

    :cond_0
    return p0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .line 68
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    const-string v1, "id"

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/action/Action;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .line 75
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    const-string v0, "title"

    const-string v1, "unknown"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isLaunchingApp()Z
    .locals 2

    .line 97
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    const-string v0, "launch"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isWithInput()Z
    .locals 1

    .line 104
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/action/Action;->actionOptionsJSON:Lorg/json/JSONObject;

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 105
    const-string v0, "input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
