.class Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;
.super Ljava/lang/Object;
.source "LocalNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lde/appplant/cordova/plugin/localnotification/LocalNotification;->execute(Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$args:Lorg/json/JSONArray;

.field final synthetic val$callbackContext:Lorg/apache/cordova/CallbackContext;


# direct methods
.method constructor <init>(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Ljava/lang/String;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iput-object p2, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iput-object p4, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "ready"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$smdeviceready()V

    goto/16 :goto_0

    .line 160
    :cond_0
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "createChannel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mcreateChannel(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "deleteChannel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mdeleteChannel(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "hasPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 165
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mhasPermission(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 166
    :cond_3
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "requestPermission"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 167
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mrequestPermission(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "actions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mactions(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 170
    :cond_5
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "schedule"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mschedule(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 172
    :cond_6
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 173
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mupdate(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 174
    :cond_7
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "cancel"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 175
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mcancel(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 176
    :cond_8
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "cancelAll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 177
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mcancelAll(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 178
    :cond_9
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "clear"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 179
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mclear(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 180
    :cond_a
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "clearAll"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 181
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mclearAll(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 182
    :cond_b
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 183
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mtype(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 184
    :cond_c
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "ids"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 185
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mids(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 186
    :cond_d
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 187
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mnotification(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto/16 :goto_0

    .line 188
    :cond_e
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "notifications"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 189
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$args:Lorg/json/JSONArray;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, v1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mnotifications(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/json/JSONArray;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 190
    :cond_f
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "canScheduleExactAlarms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 191
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mcanScheduleExactAlarms(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 192
    :cond_10
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "openNotificationSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 193
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mopenNotificationSettings(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 194
    :cond_11
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "openAlarmSettings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 195
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mopenAlarmSettings(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 196
    :cond_12
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "getUnusedAppRestrictionsStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 197
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mgetUnusedAppRestrictionsStatus(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    goto :goto_0

    .line 198
    :cond_13
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$action:Ljava/lang/String;

    const-string v1, "openManageUnusedAppRestrictions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 199
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->this$0:Lde/appplant/cordova/plugin/localnotification/LocalNotification;

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/LocalNotification$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->-$$Nest$mopenManageUnusedAppRestrictions(Lde/appplant/cordova/plugin/localnotification/LocalNotification;Lorg/apache/cordova/CallbackContext;)V

    :cond_14
    :goto_0
    return-void
.end method
