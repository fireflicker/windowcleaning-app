.class Lcom/onesignal/OneSignal$6;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/PushRegistrator$RegisteredHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/OneSignal;->registerForPushToken()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1080
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public complete(Ljava/lang/String;I)V
    .locals 2

    .line 1083
    invoke-static {}, Lcom/onesignal/OneSignal;->access$100()Lcom/onesignal/OSLogger;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "registerForPushToken completed with id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/onesignal/OSLogger;->debug(Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ge p2, p0, :cond_1

    .line 1089
    invoke-static {}, Lcom/onesignal/OneSignalStateSynchronizer;->getRegistrationId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1090
    invoke-static {}, Lcom/onesignal/OneSignal;->access$500()I

    move-result v0

    if-eq v0, p0, :cond_0

    .line 1091
    invoke-static {}, Lcom/onesignal/OneSignal;->access$500()I

    move-result v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$600(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1092
    :cond_0
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$502(I)I

    goto :goto_0

    .line 1094
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->access$500()I

    move-result v0

    invoke-static {v0}, Lcom/onesignal/OneSignal;->access$600(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1095
    invoke-static {p2}, Lcom/onesignal/OneSignal;->access$502(I)I

    .line 1097
    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/onesignal/OneSignal;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 1098
    invoke-static {p0}, Lcom/onesignal/OneSignal;->access$802(Z)Z

    .line 1099
    sget-object p0, Lcom/onesignal/OneSignal;->appContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/onesignal/OneSignal;->access$900(Landroid/content/Context;)Lcom/onesignal/OSSubscriptionState;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onesignal/OSSubscriptionState;->setPushToken(Ljava/lang/String;)V

    .line 1100
    invoke-static {}, Lcom/onesignal/OneSignal;->access$400()V

    return-void
.end method
