.class public final Lde/appplant/cordova/plugin/localnotification/Options;
.super Ljava/lang/Object;
.source "Options.java"


# static fields
.field public static final EXTRA_LAUNCH:Ljava/lang/String; = "NOTIFICATION_LAUNCH"

.field public static final LARGE_ICON_TYPE_CIRCLE:Ljava/lang/String; = "circle"

.field public static final LARGE_ICON_TYPE_SQUARE:Ljava/lang/String; = "square"

.field private static final TAG:Ljava/lang/String; = "Options"


# instance fields
.field private final assetUtil:Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

.field private final context:Landroid/content/Context;

.field private final options:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5

    .line 82
    const-string v0, "1.1.8"

    const-string v1, "version"

    const-string v2, "meta"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/Options;->context:Landroid/content/Context;

    .line 92
    :try_start_0
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 94
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lde/appplant/cordova/plugin/localnotification/Options;->isVersionOlder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 95
    invoke-virtual {p0, p2}, Lde/appplant/cordova/plugin/localnotification/Options;->convertPropertiesForVersion110(Lorg/json/JSONObject;)V

    .line 96
    invoke-virtual {p0, p2}, Lde/appplant/cordova/plugin/localnotification/Options;->convertPropertiesForVersion111(Lorg/json/JSONObject;)V

    .line 97
    invoke-virtual {p0, p2}, Lde/appplant/cordova/plugin/localnotification/Options;->convertPropertiesForVersion118(Lorg/json/JSONObject;)V

    .line 99
    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 100
    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 103
    const-string v1, "Options"

    const-string v2, "Could not convert properties for current plugin version"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    :cond_0
    :goto_0
    iput-object p2, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    .line 107
    new-instance p2, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    invoke-direct {p2, p1}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lde/appplant/cordova/plugin/localnotification/Options;->assetUtil:Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    return-void
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 947
    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->versionStringToInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->versionStringToInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Integer;->compare(II)I

    move-result p0

    return p0
.end method

.method private hexWithoutHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    .line 920
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v0, 0x23

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static isVersionOlder(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 957
    invoke-static {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Options;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static versionStringToInt(Ljava/lang/String;)I
    .locals 2

    .line 931
    const-string v0, "[.\\-]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 935
    aget-object v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public convertPropertiesForVersion110(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 115
    const-string p0, "Options"

    const-string v0, "Converting properties for version 1.1.0"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string p0, "autoClear"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    const-string v0, "androidAutoCancel"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 124
    :cond_0
    const-string p0, "badge"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "badgeNumber"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 130
    :cond_1
    const-string p0, "description"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "androidChannelDescription"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 136
    :cond_2
    const-string p0, "channelDescription"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 137
    const-string v0, "androidChannelDescription"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 142
    :cond_3
    const-string p0, "channelId"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 143
    const-string v0, "androidChannelId"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 148
    :cond_4
    const-string p0, "importance"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 149
    const-string v0, "androidChannelImportance"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 150
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 154
    :cond_5
    const-string p0, "channelImportance"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 155
    const-string v0, "androidChannelImportance"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 160
    :cond_6
    const-string p0, "channelName"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 161
    const-string v0, "androidChannelName"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 162
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 166
    :cond_7
    const-string p0, "clock"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 168
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 171
    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 172
    const-string v1, "androidShowWhen"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 175
    :cond_8
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 176
    check-cast v0, Ljava/lang/String;

    const-string v1, "chronometer"

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_0

    :cond_9
    const/4 v0, 0x0

    :goto_0
    const-string v1, "androidUsesChronometer"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 179
    :cond_a
    :goto_1
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 183
    :cond_b
    const-string p0, "color"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 184
    const-string v0, "androidColor"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 189
    :cond_c
    const-string p0, "defaults"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 190
    const-string v0, "androidDefaults"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    :cond_d
    const-string p0, "group"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 196
    const-string v0, "androidGroup"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 197
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 201
    :cond_e
    const-string p0, "groupSummary"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 202
    const-string v0, "androidGroupSummary"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 203
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    :cond_f
    const-string p0, "icon"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 208
    const-string v0, "androidLargeIcon"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 209
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    :cond_10
    const-string p0, "iconType"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 214
    const-string v0, "androidLargeIconType"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    :cond_11
    const-string p0, "lockscreen"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 220
    const-string v0, "androidLockscreen"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 225
    :cond_12
    const-string p0, "onlyAlertOnce"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 226
    const-string v0, "androidOnlyAlertOnce"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 231
    :cond_13
    const-string p0, "progressBar"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 232
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 237
    const-string v1, "enabled"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 239
    :cond_14
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    const-string v1, "androidProgressBar"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    :cond_15
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 248
    :cond_16
    const-string p0, "smallIcon"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 249
    const-string v0, "androidSmallIcon"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 250
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 254
    :cond_17
    const-string p0, "sticky"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 255
    const-string v0, "androidOngoing"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 260
    :cond_18
    const-string p0, "ongoing"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 261
    const-string v0, "androidOngoing"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 268
    :cond_19
    const-string p0, "sound"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1b

    .line 269
    const-string p0, "sound"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "default"

    goto :goto_2

    :cond_1a
    const/4 p0, 0x0

    :goto_2
    const-string v0, "sound"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    :cond_1b
    const-string p0, "soundUsage"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1c

    .line 274
    const-string p0, "soundUsage"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "androidChannelSoundUsage"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string p0, "soundUsage"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 279
    :cond_1c
    const-string p0, "summary"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1d

    .line 280
    const-string p0, "summary"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "androidSummary"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 281
    const-string p0, "summary"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 285
    :cond_1d
    const-string p0, "text"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 286
    const-string p0, "text"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "androidMessages"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string p0, "text"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 291
    :cond_1e
    const-string p0, "timeoutAfter"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1f

    .line 292
    const-string p0, "timeoutAfter"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "androidTimeoutAfter"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 293
    const-string p0, "timeoutAfter"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 297
    :cond_1f
    const-string p0, "titleCount"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_20

    .line 298
    const-string p0, "titleCount"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "androidTitleCount"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 299
    const-string p0, "titleCount"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 303
    :cond_20
    const-string p0, "wakeup"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_21

    .line 304
    const-string p0, "wakeup"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "androidWakeUpScreen"

    invoke-virtual {p1, v0, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 305
    const-string p0, "wakeup"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

.method public convertPropertiesForVersion111(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 313
    const-string p0, "Options"

    const-string v0, "Converting properties for version 1.1.1"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const-string p0, "vibrate"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 317
    const-string v0, "androidChannelEnableVibration"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public convertPropertiesForVersion118(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 326
    const-string p0, "Options"

    const-string v0, "Converting properties for version 1.1.8"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    const-string p0, "trigger"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 331
    const-string p1, "at"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "in"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "every"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method getActions()[Lde/appplant/cordova/plugin/localnotification/action/Action;
    .locals 3

    .line 829
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "actions"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 836
    :cond_0
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 837
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->lookup(Ljava/lang/String;)Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;

    move-result-object p0

    goto :goto_0

    .line 841
    :cond_1
    instance-of v2, v0, Lorg/json/JSONArray;

    if-eqz v2, :cond_2

    .line 842
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->context:Landroid/content/Context;

    check-cast v0, Lorg/json/JSONArray;

    invoke-static {p0, v0}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->parse(Landroid/content/Context;Lorg/json/JSONArray;)Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;

    move-result-object p0

    goto :goto_0

    :cond_2
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_3

    .line 845
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/action/ActionGroup;->getActions()[Lde/appplant/cordova/plugin/localnotification/action/Action;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public getAndroidAlarmType()I
    .locals 2

    .line 901
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidAlarmType"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getAndroidChannelDescription()Ljava/lang/String;
    .locals 2

    .line 486
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidChannelDescription"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getAndroidChannelEnableLights()Z
    .locals 2

    .line 664
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidChannelEnableLights"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public getAndroidChannelId()Ljava/lang/String;
    .locals 2

    .line 460
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidChannelId"

    const-string v1, "default_channel"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getAndroidChannelImportance()I
    .locals 2

    .line 478
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidChannelImportance"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getAndroidChannelName()Ljava/lang/String;
    .locals 2

    .line 469
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidChannelName"

    const-string v1, "Default channel"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAndroidLargeIcon()Ljava/lang/String;
    .locals 2

    .line 565
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidLargeIcon"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAndroidLargeIconType()Ljava/lang/String;
    .locals 2

    .line 573
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidLargeIconType"

    const-string v1, "square"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method getAndroidMessages()[Landroidx/core/app/NotificationCompat$MessagingStyle$Message;
    .locals 13

    .line 853
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "androidMessages"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 858
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v3, v2, [Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 861
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 864
    iget-object v6, p0, Lde/appplant/cordova/plugin/localnotification/Options;->assetUtil:Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    const-string v7, "personIcon"

    invoke-virtual {v5, v7, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 865
    invoke-static {v6}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    goto :goto_1

    :cond_1
    move-object v6, v1

    .line 867
    :goto_1
    new-instance v7, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    const-string v8, "message"

    .line 868
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "date"

    .line 869
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v5, v9, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v9

    new-instance v11, Landroidx/core/app/Person$Builder;

    invoke-direct {v11}, Landroidx/core/app/Person$Builder;-><init>()V

    const-string v12, "person"

    .line 871
    invoke-virtual {v5, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroidx/core/app/Person$Builder;->setName(Ljava/lang/CharSequence;)Landroidx/core/app/Person$Builder;

    move-result-object v5

    .line 872
    invoke-virtual {v5, v6}, Landroidx/core/app/Person$Builder;->setIcon(Landroidx/core/graphics/drawable/IconCompat;)Landroidx/core/app/Person$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/core/app/Person$Builder;->build()Landroidx/core/app/Person;

    move-result-object v5

    invoke-direct {v7, v8, v9, v10, v5}, Landroidx/core/app/NotificationCompat$MessagingStyle$Message;-><init>(Ljava/lang/CharSequence;JLandroidx/core/app/Person;)V

    aput-object v7, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v3
.end method

.method getAndroidTimeoutAfter()J
    .locals 3

    .line 452
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidTimeoutAfter"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method getAttachments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 806
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "attachments"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 809
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 811
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 812
    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/Options;->assetUtil:Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 817
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method public getBadgeNumber()I
    .locals 2

    .line 371
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "badgeNumber"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getColor()I
    .locals 4

    .line 514
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "androidColor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 520
    :cond_0
    :try_start_0
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/Options;->hexWithoutHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x10

    invoke-static {p0, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, -0x1000000

    add-int/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not parse androidColor hex to int: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Options"

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 340
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->context:Landroid/content/Context;

    return-object p0
.end method

.method getDefaults()I
    .locals 2

    .line 674
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "androidDefaults"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 676
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidChannelEnableVibration()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    and-int/lit8 v0, v0, 0x2

    .line 682
    :goto_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getSound()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    and-int/lit8 v0, v0, 0x1

    .line 690
    :goto_1
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_2

    or-int/lit8 p0, v0, 0x4

    goto :goto_2

    :cond_2
    and-int/lit8 p0, v0, 0x4

    :goto_2
    return p0
.end method

.method getGroup()Ljava/lang/String;
    .locals 2

    .line 423
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidGroup"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    .line 363
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getJSON()Lorg/json/JSONObject;
    .locals 0

    .line 347
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    return-object p0
.end method

.method getLed()Ljava/lang/Object;
    .locals 1

    .line 611
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "led"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method getLedColor()I
    .locals 3

    .line 620
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 621
    :goto_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    .line 622
    :cond_1
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "color"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-nez v0, :cond_3

    return v2

    .line 627
    :cond_3
    :try_start_0
    invoke-direct {p0, v0}, Lde/appplant/cordova/plugin/localnotification/Options;->hexWithoutHash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v0, -0x1000000

    add-int/2addr p0, v0

    return p0

    :catch_0
    move-exception p0

    .line 629
    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    return v2
.end method

.method getLedOff()I
    .locals 2

    .line 653
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    const/16 v1, 0x3e8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result p0

    return p0

    .line 654
    :cond_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const-string v0, "off"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method getLedOn()I
    .locals 2

    .line 641
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONArray;

    const/16 v1, 0x3e8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONArray;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONArray;->optInt(II)I

    move-result p0

    return p0

    .line 642
    :cond_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getLed()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    const-string v0, "on"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method public getOptionsTrigger()Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;
    .locals 1

    .line 400
    new-instance v0, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getTriggerJSON()Lorg/json/JSONObject;

    move-result-object p0

    invoke-direct {v0, p0}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method getPriorityByImportance()I
    .locals 2

    .line 715
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelImportance()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0

    :cond_1
    const/4 p0, -0x1

    return p0

    :cond_2
    const/4 p0, -0x2

    return p0
.end method

.method getProgressBar()Lorg/json/JSONObject;
    .locals 1

    .line 759
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidProgressBar"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method getProgressMaxValue()I
    .locals 2

    .line 777
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getProgressBar()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "maxValue"

    const/16 v1, 0x64

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getProgressValue()I
    .locals 2

    .line 768
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getProgressBar()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "value"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getSmallIcon()I
    .locals 4

    .line 584
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "androidSmallIcon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Options;->assetUtil:Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getResourceId(Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "androidSmallIcon not found, using system icon \'ic_popup_reminder\', androidSmallIcon="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Options"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->assetUtil:Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    const-string v0, "ic_popup_reminder"

    invoke-virtual {p0, v0, v2}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getResourceId(Ljava/lang/String;I)I

    move-result v1

    :cond_0
    return v1
.end method

.method getSound()Ljava/lang/String;
    .locals 2

    .line 534
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "sound"

    const-string v1, "default"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSoundUri()Landroid/net/Uri;
    .locals 2

    .line 542
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getSound()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 544
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x2

    .line 547
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 549
    :cond_1
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->assetUtil:Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getUri(Ljava/lang/String;I)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 544
    :cond_2
    :goto_0
    sget-object p0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object p0
.end method

.method getSoundUsage()I
    .locals 2

    .line 558
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidChannelSoundUsage"

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method getSummary()Ljava/lang/String;
    .locals 2

    .line 797
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidSummary"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .line 493
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "text"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 3

    .line 500
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v1, "title"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 503
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method getTitleCount()Ljava/lang/String;
    .locals 2

    .line 886
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidTitleCount"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTriggerJSON()Lorg/json/JSONObject;
    .locals 1

    .line 404
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "trigger"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method getVisibility()I
    .locals 2

    .line 707
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidLockscreen"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method public isAndroidAllowWhileIdle()Z
    .locals 2

    .line 905
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidAllowWhileIdle"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method isAndroidAutoCancel()Ljava/lang/Boolean;
    .locals 2

    .line 393
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidAutoCancel"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method isAndroidChannelEnableVibration()Z
    .locals 2

    .line 603
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidChannelEnableVibration"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAndroidOngoing()Ljava/lang/Boolean;
    .locals 2

    .line 385
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidOngoing"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method isAndroidShowWhen()Z
    .locals 2

    .line 739
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidShowWhen"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method isAndroidUsesChronometer()Z
    .locals 2

    .line 751
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidUsesChronometer"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isAndroidWakeUpScreen()Z
    .locals 2

    .line 913
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidWakeUpScreen"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method isGroupSummary()Z
    .locals 2

    .line 435
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidGroupSummary"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method isLaunch()Z
    .locals 2

    .line 442
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "launch"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isOnlyAlertOnce()Z
    .locals 2

    .line 894
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "androidOnlyAlertOnce"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method isProgressIndeterminate()Z
    .locals 2

    .line 785
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getProgressBar()Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "indeterminate"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method isSilent()Z
    .locals 2

    .line 411
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    const-string v0, "silent"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 354
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Options;->options:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
