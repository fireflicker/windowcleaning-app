.class public Lcom/squareup/plugin/square/SquarePOS;
.super Lorg/apache/cordova/CordovaPlugin;
.source "SquarePOS.java"


# static fields
.field private static final ACTION_REQUEST_CHARGE:Ljava/lang/String; = "initTransaction"

.field private static final ACTION_SET_OPTIONS:Ljava/lang/String; = "setOptions"

.field private static final DEFAULT_CURRENCY:Ljava/lang/String; = "GBP"

.field private static final DEFAULT_TIMEOUT:I = 0xdac

.field private static final LOGTAG:Ljava/lang/String; = "SquarePOS"

.field private static final OPT_AMOUNT:Ljava/lang/String; = "amount"

.field private static final OPT_APPLICATION_ID:Ljava/lang/String; = "squareApplicationId"

.field private static final OPT_CURRENCY_CODE:Ljava/lang/String; = "currencyCode"

.field private static final OPT_LOCATION_ID:Ljava/lang/String; = "locationId"

.field private static final OPT_METADATA:Ljava/lang/String; = "state"

.field private static final OPT_NOTES:Ljava/lang/String; = "notes"

.field private static final OPT_TENDERS:Ljava/lang/String; = "tenders"

.field private static final OPT_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final RANDOM:Ljava/util/Random;


# instance fields
.field private applicationId:Ljava/lang/String;

.field private currency:Ljava/lang/String;

.field private locationId:Ljava/lang/String;

.field private metadata:Ljava/lang/String;

.field private note:Ljava/lang/String;

.field private registerClient:Lcom/squareup/sdk/pos/PosClient;

.field private requestCallback:Lorg/apache/cordova/CallbackContext;

.field private requestCode:I

.field private tenders:Lorg/json/JSONArray;

.field private timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 78
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/squareup/plugin/square/SquarePOS;->RANDOM:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    .line 71
    const-string v0, "GBP"

    iput-object v0, p0, Lcom/squareup/plugin/square/SquarePOS;->currency:Ljava/lang/String;

    const/16 v0, 0xdac

    .line 74
    iput v0, p0, Lcom/squareup/plugin/square/SquarePOS;->timeout:I

    .line 81
    sget-object v0, Lcom/squareup/plugin/square/SquarePOS;->RANDOM:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/squareup/plugin/square/SquarePOS;->requestCode:I

    return-void
.end method

.method private executeRequestCharge(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 6

    .line 182
    const-string v0, "executeRequestCharge"

    const-string v1, "SquarePOS"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const-string v0, "amount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 192
    iput-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->requestCallback:Lorg/apache/cordova/CallbackContext;

    .line 194
    invoke-direct {p0, p1}, Lcom/squareup/plugin/square/SquarePOS;->setOptions(Lorg/json/JSONObject;)V

    .line 198
    iget-object p1, p0, Lcom/squareup/plugin/square/SquarePOS;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {p1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->applicationId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/squareup/sdk/pos/PosSdk;->createClient(Landroid/content/Context;Ljava/lang/String;)Lcom/squareup/sdk/pos/PosClient;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/plugin/square/SquarePOS;->registerClient:Lcom/squareup/sdk/pos/PosClient;

    .line 202
    new-instance p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->currency:Ljava/lang/String;

    invoke-static {p2}, Lcom/squareup/sdk/pos/CurrencyCode;->valueOf(Ljava/lang/String;)Lcom/squareup/sdk/pos/CurrencyCode;

    move-result-object p2

    invoke-direct {p1, v0, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;-><init>(ILcom/squareup/sdk/pos/CurrencyCode;)V

    iget p2, p0, Lcom/squareup/plugin/square/SquarePOS;->timeout:I

    int-to-long v2, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 203
    invoke-virtual {p1, v2, v3, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->autoReturn(JLjava/util/concurrent/TimeUnit;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    .line 205
    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->note:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 206
    invoke-virtual {p1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->note(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    .line 209
    :cond_0
    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->metadata:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 210
    invoke-virtual {p1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->requestMetadata(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    .line 213
    :cond_1
    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->tenders:Lorg/json/JSONArray;

    if-eqz p2, :cond_3

    .line 214
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    const/4 v0, 0x0

    .line 215
    :goto_0
    iget-object v2, p0, Lcom/squareup/plugin/square/SquarePOS;->tenders:Lorg/json/JSONArray;

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 216
    iget-object v2, p0, Lcom/squareup/plugin/square/SquarePOS;->tenders:Lorg/json/JSONArray;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->valueOf(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->restrictTendersTo(Ljava/util/Collection;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    .line 221
    :cond_3
    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->locationId:Ljava/lang/String;

    if-eqz p2, :cond_4

    .line 222
    invoke-virtual {p1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->enforceBusinessLocation(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    .line 227
    :cond_4
    :try_start_0
    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->registerClient:Lcom/squareup/sdk/pos/PosClient;

    invoke-virtual {p1}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->build()Lcom/squareup/sdk/pos/ChargeRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/squareup/sdk/pos/PosClient;->createChargeIntent(Lcom/squareup/sdk/pos/ChargeRequest;)Landroid/content/Intent;

    move-result-object p1

    .line 230
    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->cordova:Lorg/apache/cordova/CordovaInterface;

    iget v0, p0, Lcom/squareup/plugin/square/SquarePOS;->requestCode:I

    invoke-interface {p2, p0, p1, v0}, Lorg/apache/cordova/CordovaInterface;->startActivityForResult(Lorg/apache/cordova/CordovaPlugin;Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 232
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Caught Exception: %s"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object p0, p0, Lcom/squareup/plugin/square/SquarePOS;->registerClient:Lcom/squareup/sdk/pos/PosClient;

    invoke-interface {p0}, Lcom/squareup/sdk/pos/PosClient;->openPointOfSalePlayStoreListing()V

    :goto_1
    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_5
    new-instance p0, Lorg/apache/cordova/PluginResult;

    sget-object p1, Lorg/apache/cordova/PluginResult$Status;->ERROR:Lorg/apache/cordova/PluginResult$Status;

    const-string p2, "amount in cents is required for charging with Square"

    invoke-direct {p0, p1, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;Ljava/lang/String;)V

    return-object p0
.end method

.method private executeSetOptions(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;
    .locals 1

    .line 162
    const-string p2, "SquarePOS"

    const-string v0, "executeSetOptions"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0, p1}, Lcom/squareup/plugin/square/SquarePOS;->setOptions(Lorg/json/JSONObject;)V

    .line 166
    new-instance p0, Lorg/apache/cordova/PluginResult;

    sget-object p1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    return-object p0
.end method

.method private setOptions(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 172
    :cond_0
    const-string v0, "squareApplicationId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/plugin/square/SquarePOS;->applicationId:Ljava/lang/String;

    .line 173
    :cond_1
    const-string v0, "currencyCode"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/plugin/square/SquarePOS;->currency:Ljava/lang/String;

    .line 174
    :cond_2
    const-string v0, "tenders"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/plugin/square/SquarePOS;->tenders:Lorg/json/JSONArray;

    .line 175
    :cond_3
    const-string v0, "locationId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/plugin/square/SquarePOS;->locationId:Ljava/lang/String;

    .line 176
    :cond_4
    const-string v0, "timeout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/squareup/plugin/square/SquarePOS;->timeout:I

    .line 177
    :cond_5
    const-string v0, "notes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/plugin/square/SquarePOS;->note:Ljava/lang/String;

    .line 178
    :cond_6
    const-string v0, "state"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/plugin/square/SquarePOS;->metadata:Ljava/lang/String;

    :cond_7
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 94
    const-string v0, "setOptions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 96
    invoke-direct {p0, p1, p3}, Lcom/squareup/plugin/square/SquarePOS;->executeSetOptions(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object p0

    goto :goto_0

    .line 97
    :cond_0
    const-string v0, "initTransaction"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 99
    invoke-direct {p0, p1, p3}, Lcom/squareup/plugin/square/SquarePOS;->executeRequestCharge(Lorg/json/JSONObject;Lorg/apache/cordova/CallbackContext;)Lorg/apache/cordova/PluginResult;

    move-result-object p0

    goto :goto_0

    .line 101
    :cond_1
    const-string p0, "Invalid action passed: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "SquarePOS"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    new-instance p0, Lorg/apache/cordova/PluginResult;

    sget-object p1, Lorg/apache/cordova/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {p0, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;)V

    :goto_0
    if-eqz p0, :cond_2

    .line 105
    invoke-virtual {p3, p0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 111
    const-string v0, "onActivityResult"

    const-string v1, "SquarePOS"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget v0, p0, Lcom/squareup/plugin/square/SquarePOS;->requestCode:I

    if-ne v0, p1, :cond_3

    if-nez p3, :cond_0

    return-void

    .line 119
    :cond_0
    iget-object p1, p0, Lcom/squareup/plugin/square/SquarePOS;->requestCallback:Lorg/apache/cordova/CallbackContext;

    if-nez p1, :cond_1

    return-void

    .line 124
    :cond_1
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, -0x1

    .line 125
    const-string v2, "metadata"

    if-ne p2, v0, :cond_2

    .line 126
    :try_start_1
    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->registerClient:Lcom/squareup/sdk/pos/PosClient;

    invoke-interface {p2, p3}, Lcom/squareup/sdk/pos/PosClient;->parseChargeSuccess(Landroid/content/Intent;)Lcom/squareup/sdk/pos/ChargeRequest$Success;

    move-result-object p2

    .line 130
    const-string p3, "clientTransactionId"

    iget-object v0, p2, Lcom/squareup/sdk/pos/ChargeRequest$Success;->clientTransactionId:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string p3, "serverTransactionId"

    iget-object v0, p2, Lcom/squareup/sdk/pos/ChargeRequest$Success;->serverTransactionId:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    iget-object p2, p2, Lcom/squareup/sdk/pos/ChargeRequest$Success;->requestMetadata:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    iget-object p0, p0, Lcom/squareup/plugin/square/SquarePOS;->requestCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->success(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 140
    :cond_2
    iget-object p2, p0, Lcom/squareup/plugin/square/SquarePOS;->registerClient:Lcom/squareup/sdk/pos/PosClient;

    invoke-interface {p2, p3}, Lcom/squareup/sdk/pos/PosClient;->parseChargeError(Landroid/content/Intent;)Lcom/squareup/sdk/pos/ChargeRequest$Error;

    move-result-object p2

    .line 143
    const-string p3, "errorCode"

    iget-object v0, p2, Lcom/squareup/sdk/pos/ChargeRequest$Error;->code:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    invoke-virtual {v0}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string p3, "errorDescription"

    iget-object v0, p2, Lcom/squareup/sdk/pos/ChargeRequest$Error;->debugDescription:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    iget-object p2, p2, Lcom/squareup/sdk/pos/ChargeRequest$Error;->requestMetadata:Ljava/lang/String;

    invoke-virtual {p1, v2, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    iget-object p0, p0, Lcom/squareup/plugin/square/SquarePOS;->requestCallback:Lorg/apache/cordova/CallbackContext;

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->error(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Caught JSON Exception: %s"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 157
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/apache/cordova/CordovaPlugin;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method
