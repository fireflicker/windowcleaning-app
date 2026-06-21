.class public Luk/co/workingedge/phonegap/plugin/CordovaLogger;
.super Ljava/lang/Object;
.source "CordovaLogger.java"

# interfaces
.implements Luk/co/workingedge/ILogger;


# instance fields
.field private cordova:Lorg/apache/cordova/CordovaInterface;

.field private enabled:Z

.field private logTag:Ljava/lang/String;

.field private webView:Lorg/apache/cordova/CordovaWebView;


# direct methods
.method static bridge synthetic -$$Nest$fgetwebView(Luk/co/workingedge/phonegap/plugin/CordovaLogger;)Lorg/apache/cordova/CordovaWebView;
    .locals 0

    iget-object p0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->webView:Lorg/apache/cordova/CordovaWebView;

    return-object p0
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->enabled:Z

    .line 50
    invoke-direct {p0, p1, p2, p3}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;Z)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->enabled:Z

    .line 54
    invoke-direct {p0, p1, p2, p3}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0, p4}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->setEnabled(Z)V

    return-void
.end method

.method private escapeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 117
    const-string p0, "\""

    const-string v0, "\\\""

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 118
    const-string p1, "%22"

    const-string v0, "\\%22"

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private executeGlobalJavascript(Ljava/lang/String;)V
    .locals 2

    .line 123
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->cordova:Lorg/apache/cordova/CordovaInterface;

    invoke-interface {v0}, Lorg/apache/cordova/CordovaInterface;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    new-instance v1, Luk/co/workingedge/phonegap/plugin/CordovaLogger$1;

    invoke-direct {v1, p0, p1}, Luk/co/workingedge/phonegap/plugin/CordovaLogger$1;-><init>(Luk/co/workingedge/phonegap/plugin/CordovaLogger;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initialize(Lorg/apache/cordova/CordovaInterface;Lorg/apache/cordova/CordovaWebView;Ljava/lang/String;)V
    .locals 0

    .line 105
    iput-object p1, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->cordova:Lorg/apache/cordova/CordovaInterface;

    .line 106
    iput-object p2, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->webView:Lorg/apache/cordova/CordovaWebView;

    .line 107
    iput-object p3, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logTag:Ljava/lang/String;

    return-void
.end method

.method private logToCordova(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-boolean v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->enabled:Z

    if-eqz v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "console."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "(\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ": "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0, p1}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->escapeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->executeGlobalJavascript(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "log"

    invoke-direct {p0, p1, v0}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logToCordova(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 73
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    const-string v0, "error"

    invoke-direct {p0, p1, v0}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logToCordova(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getEnabled()Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->enabled:Z

    return p0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const-string v0, "info"

    invoke-direct {p0, p1, v0}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logToCordova(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 63
    iput-boolean p1, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->enabled:Z

    return-void
.end method

.method public verbose(Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    const-string v0, "debug"

    invoke-direct {p0, p1, v0}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logToCordova(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    .line 79
    iget-object v0, p0, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v0, "warn"

    invoke-direct {p0, p1, v0}, Luk/co/workingedge/phonegap/plugin/CordovaLogger;->logToCordova(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
