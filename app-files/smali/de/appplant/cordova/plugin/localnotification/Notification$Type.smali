.class public final enum Lde/appplant/cordova/plugin/localnotification/Notification$Type;
.super Ljava/lang/Enum;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/appplant/cordova/plugin/localnotification/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lde/appplant/cordova/plugin/localnotification/Notification$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lde/appplant/cordova/plugin/localnotification/Notification$Type;

.field public static final enum ALL:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

.field public static final enum SCHEDULED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

.field public static final enum TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;


# direct methods
.method private static synthetic $values()[Lde/appplant/cordova/plugin/localnotification/Notification$Type;
    .locals 3

    .line 76
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    sget-object v1, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    sget-object v2, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    filled-new-array {v0, v1, v2}, [Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 77
    new-instance v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    const-string v1, "ALL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/Notification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->ALL:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    new-instance v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    const-string v1, "SCHEDULED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/Notification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->SCHEDULED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    new-instance v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    const-string v1, "TRIGGERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lde/appplant/cordova/plugin/localnotification/Notification$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->TRIGGERED:Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    .line 76
    invoke-static {}, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->$values()[Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    move-result-object v0

    sput-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->$VALUES:[Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lde/appplant/cordova/plugin/localnotification/Notification$Type;
    .locals 1

    .line 76
    const-class v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    return-object p0
.end method

.method public static values()[Lde/appplant/cordova/plugin/localnotification/Notification$Type;
    .locals 1

    .line 76
    sget-object v0, Lde/appplant/cordova/plugin/localnotification/Notification$Type;->$VALUES:[Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    invoke-virtual {v0}, [Lde/appplant/cordova/plugin/localnotification/Notification$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lde/appplant/cordova/plugin/localnotification/Notification$Type;

    return-object v0
.end method
