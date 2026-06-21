.class public final Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;
.super Ljava/lang/Object;
.source "CallbackContextUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallbackContextUtil"

.field protected static callbackContexts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/cordova/CallbackContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->callbackContexts:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearContext(I)V
    .locals 2

    .line 85
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->callbackContexts:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 86
    :cond_0
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->callbackContexts:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static getCallbackContext(I)Lorg/apache/cordova/CallbackContext;
    .locals 3

    .line 54
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->callbackContexts:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/cordova/CallbackContext;

    .line 57
    sget-object v1, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->callbackContexts:Ljava/util/HashMap;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No context found for request code="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CallbackContextUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method public static storeContext(Lorg/apache/cordova/CallbackContext;)I
    .locals 1

    .line 69
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/Manager;->getRandomRequestCode()I

    move-result v0

    invoke-static {p0, v0}, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->storeContext(Lorg/apache/cordova/CallbackContext;I)I

    move-result p0

    return p0
.end method

.method public static storeContext(Lorg/apache/cordova/CallbackContext;I)I
    .locals 2

    .line 77
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/util/CallbackContextUtil;->callbackContexts:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method
