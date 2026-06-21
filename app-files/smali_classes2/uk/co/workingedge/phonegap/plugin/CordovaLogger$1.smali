.class Luk/co/workingedge/phonegap/plugin/CordovaLogger$1;
.super Ljava/lang/Object;
.source "CordovaLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Luk/co/workingedge/phonegap/plugin/CordovaLogger;->executeGlobalJavascript(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Luk/co/workingedge/phonegap/plugin/CordovaLogger;

.field final synthetic val$jsString:Ljava/lang/String;


# direct methods
.method constructor <init>(Luk/co/workingedge/phonegap/plugin/CordovaLogger;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 123
    iput-object p1, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger$1;->this$0:Luk/co/workingedge/phonegap/plugin/CordovaLogger;

    iput-object p2, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger$1;->val$jsString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 126
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger$1;->this$0:Luk/co/workingedge/phonegap/plugin/CordovaLogger;

    invoke-static {v0}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->-$$Nest$fgetwebView(Luk/co/workingedge/phonegap/plugin/CordovaLogger;)Lorg/apache/cordova/CordovaWebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger$1;->val$jsString:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/cordova/CordovaWebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
