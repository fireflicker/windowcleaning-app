.class public Lnl/xservices/plugins/actionsheet/ActionSheet;
.super Lorg/apache/cordova/CordovaPlugin;
.source "ActionSheet.java"


# static fields
.field private static final ACTION_HIDE:Ljava/lang/String; = "hide"

.field private static final ACTION_SHOW:Ljava/lang/String; = "show"


# instance fields
.field private dialog:Landroid/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetdialog(Lnl/xservices/plugins/actionsheet/ActionSheet;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputdialog(Lnl/xservices/plugins/actionsheet/ActionSheet;Landroid/app/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetStringArray(Lnl/xservices/plugins/actionsheet/ActionSheet;Lorg/json/JSONArray;Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnl/xservices/plugins/actionsheet/ActionSheet;->getStringArray(Lorg/json/JSONArray;Z[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lorg/apache/cordova/CordovaPlugin;-><init>()V

    return-void
.end method

.method private varargs getStringArray(Lorg/json/JSONArray;Z[Ljava/lang/String;)[Ljava/lang/String;
    .locals 5

    .line 168
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    if-nez p2, :cond_1

    .line 172
    array-length v1, p3

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 173
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 174
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    move v1, v0

    .line 181
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 182
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_4

    .line 188
    array-length p1, p3

    :goto_2
    if-ge v0, p1, :cond_4

    aget-object p2, p3, v0

    .line 189
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 190
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 194
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    const-string v2, "show"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v10, 0x1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 37
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    const-string v2, "title"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 40
    const-string v4, "subtitle"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 41
    const-string v5, "androidTheme"

    invoke-virtual {v1, v5, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v8

    .line 42
    const-string v5, "buttonLabels"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 44
    const-string v6, "androidEnableCancelButton"

    invoke-virtual {v1, v6, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 45
    const-string v7, "destructiveButtonLast"

    invoke-virtual {v1, v7, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 47
    const-string v3, "addCancelButtonWithLabel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 48
    const-string v3, "addDestructiveButtonWithLabel"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v0, p0

    move-object v1, v2

    move-object v2, v4

    move-object v3, v5

    move-object v4, v9

    move v5, v6

    move-object v6, v11

    move-object v9, p3

    .line 50
    invoke-virtual/range {v0 .. v9}, Lnl/xservices/plugins/actionsheet/ActionSheet;->show(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;ZILorg/apache/cordova/CallbackContext;)V

    return v10

    .line 56
    :cond_0
    const-string v2, "hide"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 57
    iget-object v1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    iget-object v0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 59
    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p3, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    :cond_1
    return v10

    :cond_2
    return v3
.end method

.method public declared-synchronized show(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;ZLjava/lang/String;ZILorg/apache/cordova/CallbackContext;)V
    .locals 13

    move-object v12, p0

    monitor-enter p0

    .line 77
    :try_start_0
    iget-object v3, v12, Lnl/xservices/plugins/actionsheet/ActionSheet;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 79
    new-instance v0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    move-object v1, v0

    move-object v2, p0

    move/from16 v4, p8

    move-object v5, p1

    move/from16 v6, p5

    move-object/from16 v7, p4

    move-object/from16 v8, p3

    move/from16 v9, p7

    move-object/from16 v10, p6

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lnl/xservices/plugins/actionsheet/ActionSheet$1;-><init>(Lnl/xservices/plugins/actionsheet/ActionSheet;Lorg/apache/cordova/CordovaInterface;ILjava/lang/String;ZLjava/lang/String;Lorg/json/JSONArray;ZLjava/lang/String;Lorg/apache/cordova/CallbackContext;)V

    .line 163
    iget-object v1, v12, Lnl/xservices/plugins/actionsheet/ActionSheet;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v1}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
