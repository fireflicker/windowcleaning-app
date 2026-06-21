.class public Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;
.super Lorg/apache/cordova/CordovaPlugin;
.source "LaunchNavigatorPlugin.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "LaunchNavigatorPlugin"

.field private static final MANIFEST_API_KEY:Ljava/lang/String; = "launchnavigator.GOOGLE_API_KEY"


# instance fields
.field private launchNavigator:Luk/co/workingedge/LaunchNavigator;

.field private logger:Luk/co/workingedge/phonegap/plugin/CordovaLogger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private handleError(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 0

    .line 159
    iget-object p0, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->logger:Luk/co/workingedge/phonegap/plugin/CordovaLogger;

    invoke-virtual {p0, p1}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->error(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2, p1}, Lorg/apache/cordova/CallbackContext;->error(Ljava/lang/String;)V

    return-void
.end method

.method private handleException(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    .locals 1

    .line 164
    const-string v0, "Exception occurred: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 165
    invoke-direct {p0, p1, p2}, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->handleError(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    return-void
.end method

.method private setApiKey(Ljava/lang/String;)V
    .locals 0

    .line 155
    iget-object p0, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    invoke-virtual {p0, p1}, Luk/co/workingedge/LaunchNavigator;->setGoogleApiKey(Ljava/lang/String;)V

    return-void
.end method

.method private setDebug(Z)V
    .locals 1

    .line 150
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->logger:Luk/co/workingedge/phonegap/plugin/CordovaLogger;

    invoke-virtual {v0, p1}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->setEnabled(Z)V

    .line 151
    iget-object p0, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    invoke-virtual {p0}, Luk/co/workingedge/LaunchNavigator;->getLogger()Luk/co/workingedge/ILogger;

    move-result-object p0

    invoke-interface {p0, p1}, Luk/co/workingedge/ILogger;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "Plugin action="

    const/4 v1, 0x1

    .line 75
    :try_start_0
    iget-object v2, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->logger:Luk/co/workingedge/phonegap/plugin/CordovaLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->debug(Ljava/lang/String;)V

    .line 77
    const-string v0, "enableDebug"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    .line 79
    invoke-direct {p0, p1}, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->setDebug(Z)V

    .line 80
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0

    .line 81
    :cond_0
    const-string v0, "setApiKey"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->setApiKey(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto/16 :goto_0

    .line 85
    :cond_1
    const-string v0, "navigate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 p1, 0xa

    .line 101
    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result p1

    invoke-virtual {v0, p1}, Luk/co/workingedge/LaunchNavigator;->setGeocoding(Z)V

    .line 105
    :cond_2
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 106
    const-string v0, "app"

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    const-string v0, "dType"

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v0, "dest"

    const/4 v2, 0x2

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v0, "destNickname"

    const/4 v2, 0x3

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v0, "sType"

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v0, "start"

    const/4 v2, 0x5

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v0, "startNickname"

    const/4 v2, 0x6

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v0, "transportMode"

    const/4 v2, 0x7

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v0, "launchMode"

    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v0, "extras"

    const/16 v2, 0x9

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iget-object p2, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    invoke-virtual {p2, p1}, Luk/co/workingedge/LaunchNavigator;->navigate(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 119
    invoke-virtual {p3}, Lorg/apache/cordova/CallbackContext;->success()V

    goto :goto_0

    .line 121
    :cond_3
    invoke-direct {p0, p1, p3}, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->handleError(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 123
    :cond_4
    const-string v0, "discoverSupportedApps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 125
    iget-object p1, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    invoke-virtual {p1}, Luk/co/workingedge/LaunchNavigator;->getGeoApps()Lorg/json/JSONObject;

    move-result-object p1

    .line 126
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 127
    :cond_5
    const-string v0, "availableApps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 128
    iget-object p1, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    invoke-virtual {p1}, Luk/co/workingedge/LaunchNavigator;->getAvailableApps()Lorg/json/JSONObject;

    move-result-object p1

    .line 129
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 130
    :cond_6
    const-string v0, "isAppAvailable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 131
    iget-object p1, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    invoke-virtual {p2, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Luk/co/workingedge/LaunchNavigator;->isAppAvailable(Ljava/lang/String;)Z

    move-result p1

    .line 132
    invoke-virtual {p3, p1}, Lorg/apache/cordova/CallbackContext;->success(I)V

    goto :goto_0

    .line 134
    :cond_7
    const-string p1, "Invalid action"

    .line 135
    invoke-direct {p0, p1, p3}, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->handleError(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->handleException(Ljava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    :goto_0
    return v1
.end method

.method protected pluginInitialize()V
    .locals 7

    .line 60
    const-string v0, "LaunchNavigatorPlugin"

    :try_start_0
    new-instance v1, Luk/co/workingedge/phonegap/plugin/CordovaLogger;

    iget-object v2, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v3, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    invoke-direct {v1, v2, v3, v0}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;-><init>(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    iput-object v1, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->logger:Luk/co/workingedge/phonegap/plugin/CordovaLogger;

    .line 61
    new-instance v1, Luk/co/workingedge/LaunchNavigator;

    iget-object v2, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Luk/co/workingedge/phonegap/plugin/CordovaLogger;

    iget-object v4, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget-object v5, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->webView:Lorg/apache/cordova/CordovaWebView;

    const-string v6, "LaunchNavigator"

    invoke-direct {v3, v4, v5, v6}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;-><init>(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Luk/co/workingedge/LaunchNavigator;-><init>(Landroid/content/Context;Luk/co/workingedge/ILogger;)V

    iput-object v1, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    .line 62
    iget-object v1, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v2}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "launchnavigator.GOOGLE_API_KEY"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object p0, p0, Luk/co/workingedge/phonegap/plugin/LaunchNavigatorPlugin;->launchNavigator:Luk/co/workingedge/LaunchNavigator;

    invoke-virtual {p0, v1}, Luk/co/workingedge/LaunchNavigator;->setGoogleApiKey(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
