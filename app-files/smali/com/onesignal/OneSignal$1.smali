.class Lcom/onesignal/OneSignal$1;
.super Ljava/lang/Object;
.source "OneSignal.java"

# interfaces
.implements Lcom/onesignal/OSSessionManager$SessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onesignal/OneSignal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSessionEnding(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onesignal/influence/domain/OSInfluence;",
            ">;)V"
        }
    .end annotation

    .line 449
    invoke-static {}, Lcom/onesignal/OneSignal;->access$000()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object p0

    if-nez p0, :cond_0

    .line 450
    sget-object p0, Lcom/onesignal/OneSignal$LOG_LEVEL;->WARN:Lcom/onesignal/OneSignal$LOG_LEVEL;

    const-string v0, "OneSignal onSessionEnding called before init!"

    invoke-static {p0, v0}, Lcom/onesignal/OneSignal;->Log(Lcom/onesignal/OneSignal$LOG_LEVEL;Ljava/lang/String;)V

    .line 451
    :cond_0
    invoke-static {}, Lcom/onesignal/OneSignal;->access$000()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 452
    invoke-static {}, Lcom/onesignal/OneSignal;->access$000()Lcom/onesignal/OSOutcomeEventsController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onesignal/OSOutcomeEventsController;->cleanOutcomes()V

    .line 453
    :cond_1
    invoke-static {}, Lcom/onesignal/OneSignal;->getFocusTimeController()Lcom/onesignal/FocusTimeController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/onesignal/FocusTimeController;->onSessionEnded(Ljava/util/List;)V

    return-void
.end method
