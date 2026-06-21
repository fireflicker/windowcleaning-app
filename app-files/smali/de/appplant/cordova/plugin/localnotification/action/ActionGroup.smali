.class public final Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;
.super Ljava/lang/Object;
.source "ActionGroup.java"


# static fields
.field private static final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final actions:[Lde/appplant/cordova/plugin/localnotification/action/Action;

.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->groups:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Lde/appplant/cordova/plugin/localnotification/action/Action;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->id:Ljava/lang/String;

    .line 130
    iput-object p2, p0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->actions:[Lde/appplant/cordova/plugin/localnotification/action/Action;

    return-void
.end method

.method public static isRegistered(Ljava/lang/String;)Z
    .locals 1

    .line 84
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->groups:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static lookup(Ljava/lang/String;)Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;
    .locals 1

    .line 57
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->groups:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;

    return-object p0
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;
    .locals 5

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 107
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 108
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 109
    const-string v3, "type"

    const-string v4, "button"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "input"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 112
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unknown type: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Action"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 116
    :cond_0
    new-instance v3, Lde/appplant/cordova/plugin/localnotification/action/Action;

    invoke-direct {v3, p0, v2}, Lde/appplant/cordova/plugin/localnotification/action/Action;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    :cond_1
    new-instance p0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lde/appplant/cordova/plugin/localnotification/action/Action;

    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lde/appplant/cordova/plugin/localnotification/action/Action;

    invoke-direct {p0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;-><init>(Ljava/lang/String;[Lde/appplant/cordova/plugin/localnotification/action/Action;)V

    return-object p0
.end method

.method public static parse(Landroid/content/Context;Lorg/json/JSONArray;)Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;
    .locals 1

    const/4 v0, 0x0

    .line 95
    invoke-static {p0, v0, p1}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->parse(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONArray;)Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;

    move-result-object p0

    return-object p0
.end method

.method public static register(Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;)V
    .locals 2

    .line 66
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->groups:Ljava/util/Map;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static unregister(Ljava/lang/String;)V
    .locals 1

    .line 75
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->groups:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getActions()[Lde/appplant/cordova/plugin/localnotification/action/Action;
    .locals 0

    .line 144
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->actions:[Lde/appplant/cordova/plugin/localnotification/action/Action;

    return-object p0
.end method

.method public getId()Ljava/lang/String;
    .locals 0

    .line 137
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->id:Ljava/lang/String;

    return-object p0
.end method
