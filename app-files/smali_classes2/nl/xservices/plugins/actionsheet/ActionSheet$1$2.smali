.class Lnl/xservices/plugins/actionsheet/ActionSheet$1$2;
.super Ljava/lang/Object;
.source "ActionSheet.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lnl/xservices/plugins/actionsheet/ActionSheet$1;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$2;->this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 141
    iget-object p0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1$2;->this$1:Lnl/xservices/plugins/actionsheet/ActionSheet$1;

    iget-object p0, p0, Lnl/xservices/plugins/actionsheet/ActionSheet$1;->val$callbackContext:Lorg/apache/cordova/CallbackContext;

    new-instance p1, Lorg/apache/cordova/PluginResult;

    sget-object v0, Lorg/apache/cordova/PluginResult$Status;->OK:Lorg/apache/cordova/PluginResult$Status;

    add-int/lit8 p2, p2, 0x1

    invoke-direct {p1, v0, p2}, Lorg/apache/cordova/PluginResult;-><init>(Lorg/apache/cordova/PluginResult$Status;I)V

    invoke-virtual {p0, p1}, Lorg/apache/cordova/CallbackContext;->sendPluginResult(Lorg/apache/cordova/PluginResult;)V

    return-void
.end method
