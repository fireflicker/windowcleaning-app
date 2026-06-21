.class Lorg/apache/cordova/statusbar/StatusBar$5;
.super Ljava/lang/Object;
.source "StatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/cordova/statusbar/StatusBar;->execute(Ljava/lang/String;Lorg/apache/cordova/CordovaArgs;Lorg/apache/cordova/CallbackContext;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/cordova/statusbar/StatusBar;

.field final synthetic val$args:Lorg/apache/cordova/CordovaArgs;


# direct methods
.method constructor <init>(Lorg/apache/cordova/statusbar/StatusBar;Lorg/apache/cordova/CordovaArgs;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    iput-object p1, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iput-object p2, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$args:Lorg/apache/cordova/CordovaArgs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 162
    :try_start_0
    iget-object v0, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->this$0:Lorg/apache/cordova/statusbar/StatusBar;

    iget-object p0, p0, Lorg/apache/cordova/statusbar/StatusBar$5;->val$args:Lorg/apache/cordova/CordovaArgs;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lorg/apache/cordova/CordovaArgs;->getBoolean(I)Z

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/cordova/statusbar/StatusBar;->-$$Nest$msetStatusBarTransparent(Lorg/apache/cordova/statusbar/StatusBar;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    const-string p0, "StatusBar"

    const-string v0, "Invalid boolean argument"

    invoke-static {p0, v0}, Lorg/apache/cordova/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
