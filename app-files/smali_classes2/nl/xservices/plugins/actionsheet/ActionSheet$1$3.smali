.class Lnl/xservices/plugins/actionsheet/ActionSheet$1$3;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnl/xservices/plugins/actionsheet/ActionSheet$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;

.field final synthetic val$buttons:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lnl/xservices/plugins/actionsheet/ActionSheet$1;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 146
    iput-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$3;->this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    iput-object p2, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$3;->val$buttons:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 153
    iget-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$3;->val$buttons:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x1

    .line 154
    iget-object p0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$3;->this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    iget-object p0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance v0, Lorg/apache/cordova/PluginResult;

    sget-object v1, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p0, v0}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method
