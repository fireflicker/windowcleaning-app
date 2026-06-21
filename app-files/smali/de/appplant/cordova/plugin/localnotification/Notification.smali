.class public final Lde/appplant/cordova/plugin/localnotification/Notification;
.super Ljava/lang/Object;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lde/appplant/cordova/plugin/localnotification/Notification$Type;
    }
.end annotation


# static fields
.field public static final EXTRA_ID:Ljava/lang/String; = "NOTIFICATION_ID"

.field private static final TAG:Ljava/lang/String; = "Notification"


# instance fields
.field private final context:Landroid/content/Context;

.field private final options:Lde/appplant/cordova/plugin/localnotification/Options;

.field private triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;


# direct methods
.method constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    .line 102
    new-instance v0, Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-direct {v0, p1, p2}, Lde/appplant/cordova/plugin/localnotification/Options;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    iput-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 103
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getOptionsTrigger()Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getJSON()Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "at"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 108
    new-instance p1, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerAt;

    invoke-direct {p1, v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerAt;-><init>(Lde/appplant/cordova/plugin/localnotification/Options;)V

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    goto :goto_0

    .line 112
    :cond_0
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getJSON()Lorg/json/JSONObject;

    move-result-object p2

    const-string v1, "in"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 113
    new-instance p1, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerIn;

    invoke-direct {p1, v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerIn;-><init>(Lde/appplant/cordova/plugin/localnotification/Options;)V

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    goto :goto_0

    .line 119
    :cond_1
    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/OptionsTrigger;->getJSON()Lorg/json/JSONObject;

    move-result-object p1

    const-string p2, "every"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 120
    new-instance p1, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;

    invoke-direct {p1, v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandlerEvery;-><init>(Lde/appplant/cordova/plugin/localnotification/Options;)V

    iput-object p1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    :goto_0
    return-void

    .line 123
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Trigger not property set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private addAction(Landroidx/core/app/NotificationCompat$Builder;Lde/appplant/cordova/plugin/localnotification/action/Action;)V
    .locals 3

    .line 804
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    const-class v2, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 805
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NOTIFICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NOTIFICATION_ACTION_ID"

    .line 806
    invoke-virtual {p2}, Lde/appplant/cordova/plugin/localnotification/action/Action;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NOTIFICATION_LAUNCH"

    .line 807
    invoke-virtual {p2}, Lde/appplant/cordova/plugin/localnotification/action/Action;->isLaunchingApp()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x50000000

    .line 808
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 810
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    .line 812
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/Manager;->getRandomRequestCode()I

    move-result v1

    const/high16 v2, 0xa000000

    .line 810
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 815
    new-instance v0, Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 816
    invoke-virtual {p2}, Lde/appplant/cordova/plugin/localnotification/action/Action;->getIcon()I

    move-result v1

    invoke-virtual {p2}, Lde/appplant/cordova/plugin/localnotification/action/Action;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroidx/core/app/NotificationCompat$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 818
    invoke-virtual {p2}, Lde/appplant/cordova/plugin/localnotification/action/Action;->isWithInput()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lde/appplant/cordova/plugin/localnotification/action/Action;->buildRemoteInput()Landroidx/core/app/RemoteInput;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$Action$Builder;->addRemoteInput(Landroidx/core/app/RemoteInput;)Landroidx/core/app/NotificationCompat$Action$Builder;

    .line 820
    :cond_0
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Action$Builder;->build()Landroidx/core/app/NotificationCompat$Action;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->addAction(Landroidx/core/app/NotificationCompat$Action;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private addActions(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 4

    .line 792
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getActions()[Lde/appplant/cordova/plugin/localnotification/action/Action;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 795
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 796
    invoke-direct {p0, p1, v3}, Lde/appplant/cordova/plugin/localnotification/Notification;->addAction(Landroidx/core/app/NotificationCompat$Builder;Lde/appplant/cordova/plugin/localnotification/action/Action;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private applyBigPictureStyle(Landroidx/core/app/NotificationCompat$Builder;)Z
    .locals 4

    .line 708
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAttachments()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 709
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 711
    :cond_0
    new-instance v2, Landroidx/core/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v2, p1}, Landroidx/core/app/NotificationCompat$BigPictureStyle;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 712
    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/localnotification/Options;->getSummary()Ljava/lang/String;

    move-result-object v3

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getSummary()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getText()Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-virtual {v2, p0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p0

    .line 713
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Landroidx/core/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$BigPictureStyle;

    move-result-object p0

    .line 711
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v1
.end method

.method private applyBigTextStyle(Landroidx/core/app/NotificationCompat$Builder;)Z
    .locals 2

    .line 744
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getSummary()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2d

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 745
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 746
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 747
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object p0

    .line 745
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p0, 0x1

    return p0
.end method

.method private applyInboxStyle(Landroidx/core/app/NotificationCompat$Builder;)Z
    .locals 4

    .line 725
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 727
    :cond_0
    new-instance v0, Landroidx/core/app/NotificationCompat$InboxStyle;

    invoke-direct {v0, p1}, Landroidx/core/app/NotificationCompat$InboxStyle;-><init>(Landroidx/core/app/NotificationCompat$Builder;)V

    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 728
    invoke-virtual {v3}, Lde/appplant/cordova/plugin/localnotification/Options;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    move-result-object v0

    .line 730
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 731
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$InboxStyle;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    :cond_1
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    const/4 p0, 0x1

    return p0
.end method

.method private applyMessagingStyle(Landroidx/core/app/NotificationCompat$Builder;)Z
    .locals 6

    .line 668
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidMessages()[Landroidx/core/app/NotificationCompat$MessagingStyle$Message;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 672
    :cond_0
    new-instance v2, Lde/appplant/cordova/plugin/localnotification/Manager;

    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-direct {v2, v3}, Lde/appplant/cordova/plugin/localnotification/Manager;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v3}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lde/appplant/cordova/plugin/localnotification/Manager;->getActiveNotification(I)Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 674
    const-string v3, ""

    if-eqz v2, :cond_1

    .line 676
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/app/NotificationCompat$MessagingStyle;->extractMessagingStyleFromNotification(Landroid/app/Notification;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    move-result-object v2

    goto :goto_0

    .line 678
    :cond_1
    new-instance v2, Landroidx/core/app/NotificationCompat$MessagingStyle;

    invoke-direct {v2, v3}, Landroidx/core/app/NotificationCompat$MessagingStyle;-><init>(Ljava/lang/CharSequence;)V

    .line 681
    :goto_0
    array-length v4, v0

    :goto_1
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 682
    invoke-virtual {v2, v5}, Landroidx/core/app/NotificationCompat$MessagingStyle;->addMessage(Landroidx/core/app/NotificationCompat$MessagingStyle$Message;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 685
    :cond_2
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 688
    invoke-virtual {v2}, Landroidx/core/app/NotificationCompat$MessagingStyle;->getMessages()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 690
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/localnotification/Options;->getTitleCount()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/localnotification/Options;->getTitleCount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    .line 691
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getTitleCount()Ljava/lang/String;

    move-result-object p0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "%n%"

    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 694
    :cond_3
    invoke-virtual {v2, v0}, Landroidx/core/app/NotificationCompat$MessagingStyle;->setConversationTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$MessagingStyle;

    .line 697
    invoke-virtual {p1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    return v5
.end method

.method private applyStyle(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 1

    .line 656
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->applyMessagingStyle(Landroidx/core/app/NotificationCompat$Builder;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 657
    :cond_0
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->applyBigPictureStyle(Landroidx/core/app/NotificationCompat$Builder;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 658
    :cond_1
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->applyInboxStyle(Landroidx/core/app/NotificationCompat$Builder;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 659
    :cond_2
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->applyBigTextStyle(Landroidx/core/app/NotificationCompat$Builder;)Z

    return-void
.end method

.method private cancelScheduledAlarm()V
    .locals 6

    .line 368
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getIntentActionIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 369
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cancel PendingIntent, intentActionId="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Notification"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v4, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    const-class v5, Lde/appplant/cordova/plugin/localnotification/receiver/TriggerReceiver;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 375
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x24000000

    const/4 v5, 0x0

    .line 372
    invoke-static {v1, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    if-nez v1, :cond_0

    .line 381
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Could not cancel PendingIntent, intentActionId="

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, ", PendingIntent not found"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 389
    :cond_0
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    return-void
.end method

.method private getAlarmManager()Landroid/app/AlarmManager;
    .locals 1

    .line 557
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    return-object p0
.end method

.method public static getFromSharedPreferences(Landroid/content/Context;I)Lde/appplant/cordova/plugin/localnotification/Notification;
    .locals 13

    const-string v0, "Restored trigger date, notificationId="

    .line 441
    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 442
    invoke-static {p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyOptions(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 441
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Restoring notification from SharedPreferences, notificationId="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", options="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Notification"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    .line 450
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Could not restore notification from SharedPreferences, options are null, notificationId="

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 457
    :cond_0
    :try_start_0
    new-instance v2, Lde/appplant/cordova/plugin/localnotification/Notification;

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, p0, v5}, Lde/appplant/cordova/plugin/localnotification/Notification;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    .line 461
    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 462
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyOccurrence()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    .line 461
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 465
    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 466
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyTriggerBaseDate()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v8, 0x0

    .line 465
    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 469
    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 470
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyTriggerDate()Ljava/lang/String;

    move-result-object v10

    .line 469
    invoke-interface {p0, v10, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 472
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Notification;->getTriggerHandler()Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    move-result-object p0

    if-eqz v5, :cond_2

    cmp-long v12, v6, v8

    if-eqz v12, :cond_2

    cmp-long v8, v10, v8

    if-nez v8, :cond_1

    goto :goto_0

    .line 484
    :cond_1
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p0, v5, v8, v6}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->restoreState(ILjava/util/Date;Ljava/util/Date;)V

    goto :goto_1

    .line 480
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getNextTriggerDate()Ljava/util/Date;

    .line 487
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", occurrence="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getOccurrence()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", triggerDate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 490
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getTriggerDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", triggerBaseDate="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 491
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getBaseDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 487
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Could not parse stored notification options to JSON, notificationId="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", jsonString="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v3
.end method

.method public static getSharedPreferencesKeyOptions(I)Ljava/lang/String;
    .locals 2

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private mergeJSONObjects(Lorg/json/JSONObject;)V
    .locals 4

    .line 507
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 509
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 511
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 512
    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Options;->getJSON()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 514
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeFromSharedPreferences()V
    .locals 2

    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Remove notification from SharedPreferences, notificationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 422
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", occurrence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 423
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getOccurrence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 424
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getTriggerDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerBaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 425
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getBaseDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 421
    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 429
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyOptions()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 430
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyOccurrence()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 431
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyTriggerBaseDate()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 432
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyTriggerDate()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 433
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setContentIntent(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3

    .line 771
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    const-class v2, Lde/appplant/cordova/plugin/localnotification/NotificationClickActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 772
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NOTIFICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "NOTIFICATION_ACTION_ID"

    const-string v2, "click"

    .line 773
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 774
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->isLaunch()Z

    move-result v1

    const-string v2, "NOTIFICATION_LAUNCH"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x10008000

    .line 777
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 780
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    .line 782
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/Manager;->getRandomRequestCode()I

    move-result v1

    const/high16 v2, 0xc000000

    .line 780
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 785
    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private setDeleteIntent(Landroidx/core/app/NotificationCompat$Builder;)V
    .locals 3

    .line 758
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    const-class v2, Lde/appplant/cordova/plugin/localnotification/receiver/ClearReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 759
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 760
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "NOTIFICATION_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    .line 762
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0xc000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/core/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private storeInSharedPreferences()V
    .locals 4

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Store notification in SharedPreferences, notificationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 399
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", occurrence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 400
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getOccurrence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 401
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getTriggerDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerBaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 402
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getBaseDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 407
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyOptions()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Options;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 409
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyOccurrence()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getOccurrence()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 411
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyTriggerBaseDate()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getBaseDate()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 413
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyTriggerDate()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getTriggerDate()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 414
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cancel notification, options="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->cancelScheduledAlarm()V

    .line 354
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->removeFromSharedPreferences()V

    .line 357
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 360
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isAppRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "cancel"

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Clear notification, options="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v1}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat;->cancel(Ljava/lang/String;I)V

    .line 336
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->isLastOccurrence()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->removeFromSharedPreferences()V

    .line 341
    :cond_0
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isAppRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "clear"

    invoke-static {v0, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;)V

    :cond_1
    return-void
.end method

.method public getBuilder(Z)Landroidx/core/app/NotificationCompat$Builder;
    .locals 4

    .line 565
    iget-object p1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p1}, Lde/appplant/cordova/plugin/localnotification/Options;->isSilent()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 567
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 568
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "NOTIFICATION_ID"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 570
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 571
    invoke-virtual {v0, p1}, Landroidx/core/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 572
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->isOnlyAlertOnce()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 573
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 574
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 579
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 582
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getBadgeNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setNumber(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 583
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidAutoCancel()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 584
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidOngoing()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 585
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getColor()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setColor(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 586
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getVisibility()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 588
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidShowWhen()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 592
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidUsesChronometer()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 593
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroup(Ljava/lang/String;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 594
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->isGroupSummary()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setGroupSummary(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 597
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidTimeoutAfter()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidTimeoutAfter()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTimeoutAfter(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 615
    :cond_1
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getProgressBar()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 617
    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getProgressMaxValue()I

    move-result v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 618
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getProgressValue()I

    move-result v1

    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 619
    invoke-virtual {v2}, Lde/appplant/cordova/plugin/localnotification/Options;->isProgressIndeterminate()Z

    move-result v2

    .line 616
    invoke-virtual {p1, v0, v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 627
    :cond_2
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Options;->getSmallIcon()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 629
    new-instance v0, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidLargeIcon()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 632
    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidLargeIconType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "circle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 633
    invoke-static {v0}, Lde/appplant/cordova/plugin/localnotification/util/AssetUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 636
    :cond_3
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroidx/core/app/NotificationCompat$Builder;

    .line 639
    :cond_4
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->applyStyle(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 640
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->addActions(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 643
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->setDeleteIntent(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 646
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->setContentIntent(Landroidx/core/app/NotificationCompat$Builder;)V

    return-object p1
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 131
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    return-object p0
.end method

.method public getId()I
    .locals 0

    .line 145
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method getIntentActionIdentifier()Ljava/lang/String;
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NOTIFICATION_ID"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Lde/appplant/cordova/plugin/localnotification/Options;
    .locals 0

    .line 138
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    return-object p0
.end method

.method public getSharedPreferencesKeyOccurrence()Ljava/lang/String;
    .locals 1

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_occurrence"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferencesKeyOptions()Ljava/lang/String;
    .locals 2

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getSharedPreferencesKeyOptions(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferencesKeyTriggerBaseDate()Ljava/lang/String;
    .locals 1

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_triggerBaseDate"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSharedPreferencesKeyTriggerDate()Ljava/lang/String;
    .locals 1

    .line 528
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "_triggerDate"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTriggerHandler()Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;
    .locals 0

    .line 550
    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    return-object p0
.end method

.method public getType()Lde/appplant/cordova/plugin/localnotification/Notification$Type;
    .locals 3

    .line 160
    new-instance v0, Lde/appplant/cordova/plugin/localnotification/Manager;

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lde/appplant/cordova/plugin/localnotification/Manager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/Manager;->getActiveNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/StatusBarNotification;

    .line 161
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v1

    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 162
    sget-object p0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    return-object p0

    .line 166
    :cond_1
    sget-object p0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    return-object p0
.end method

.method public schedule()Z
    .locals 7

    .line 203
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getTriggerDate()Ljava/util/Date;

    move-result-object v0

    .line 205
    const-string v1, "Notification"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "schedule was wrongly called with triggerDate = null, options="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 211
    :cond_0
    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    iget-object v4, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-static {v3, v4}, Lde/appplant/cordova/plugin/localnotification/Manager;->createChannel(Landroid/content/Context;Lde/appplant/cordova/plugin/localnotification/Options;)V

    .line 215
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->storeInSharedPreferences()V

    .line 218
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 219
    invoke-virtual {p0, v2}, Lde/appplant/cordova/plugin/localnotification/Notification;->show(Z)V

    .line 220
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->scheduleNext()Z

    return v2

    .line 224
    :cond_1
    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v3}, Lde/appplant/cordova/plugin/localnotification/Manager;->canScheduleExactAlarms(Landroid/content/Context;)Z

    move-result v3

    .line 227
    new-instance v4, Landroid/content/Intent;

    iget-object v5, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    const-class v6, Lde/appplant/cordova/plugin/localnotification/receiver/TriggerReceiver;

    invoke-direct {v4, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 229
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getIntentActionIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 231
    invoke-virtual {v5}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "NOTIFICATION_ID"

    invoke-virtual {v4, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v4

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Schedule notification, notificationId: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 234
    invoke-virtual {v6}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", canScheduleExactAlarms: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", intentAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 236
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", occurrence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 237
    invoke-virtual {v6}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getOccurrence()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", triggerDate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", options="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 233
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v5, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    const/high16 v6, 0x4000000

    invoke-static {v5, v2, v4, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 248
    :try_start_0
    iget-object v5, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v5}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidAllowWhileIdle()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v3, :cond_2

    .line 250
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 251
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidAlarmType()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 250
    invoke-virtual {v3, p0, v5, v6, v4}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 253
    :cond_2
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 254
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidAlarmType()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 253
    invoke-virtual {v3, p0, v5, v6, v4}, Landroid/app/AlarmManager;->setAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_4

    .line 260
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 261
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidAlarmType()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 260
    invoke-virtual {v3, p0, v5, v6, v4}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 263
    :cond_4
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getAlarmManager()Landroid/app/AlarmManager;

    move-result-object v3

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 264
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Options;->getAndroidAlarmType()I

    move-result p0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 263
    invoke-virtual {v3, p0, v5, v6, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 273
    const-string v0, "Exception occurred during scheduling notification"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public scheduleNext()Z
    .locals 2

    .line 177
    iget-object v0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    invoke-virtual {v0}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getNextTriggerDate()Ljava/util/Date;

    move-result-object v0

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "No next trigger date available, notificationId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    .line 184
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", occurrence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 185
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getOccurrence()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 186
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getTriggerDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", triggerBaseDate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->triggerhandler:Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;

    .line 187
    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/trigger/TriggerHandler;->getBaseDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", options="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 183
    const-string v0, "Notification"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 193
    :cond_0
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->schedule()Z

    move-result p0

    return p0
.end method

.method public show(Z)V
    .locals 5

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Show notification, options="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->getBuilder(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    if-nez v0, :cond_0

    .line 288
    const-string p0, "Notification is silent, don\'t show it"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_0
    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v1}, Lde/appplant/cordova/plugin/localnotification/Options;->isAndroidWakeUpScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v1}, Lde/appplant/cordova/plugin/localnotification/Manager;->wakeUpScreen(Landroid/content/Context;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 295
    :goto_0
    iget-object v2, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    invoke-static {v2}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v2

    iget-object v3, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->context:Landroid/content/Context;

    .line 296
    invoke-static {v3}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v4}, Lde/appplant/cordova/plugin/localnotification/Options;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 295
    invoke-virtual {v2, v3, v4, v0}, Landroidx/core/app/NotificationManagerCompat;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    if-eqz v1, :cond_2

    .line 299
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_2
    if-nez p1, :cond_3

    .line 302
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->isAppRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 303
    const-string p1, "trigger"

    invoke-static {p1, p0}, Lde/appplant/cordova/plugin/localnotification/LocalNotification;->fireEvent(Ljava/lang/String;Lde/appplant/cordova/plugin/localnotification/Notification;)V

    :cond_3
    return-void
.end method

.method update(Lorg/json/JSONObject;)V
    .locals 2

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Update notification, options="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lde/appplant/cordova/plugin/localnotification/Notification;->options:Lde/appplant/cordova/plugin/localnotification/Options;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-direct {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->mergeJSONObjects(Lorg/json/JSONObject;)V

    .line 318
    invoke-direct {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->storeInSharedPreferences()V

    .line 321
    invoke-virtual {p0}, Lde/appplant/cordova/plugin/localnotification/Notification;->getType()Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    move-result-object p1

    sget-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lde/appplant/cordova/plugin/localnotification/Notification;->show(Z)V

    :cond_0
    return-void
.end method
