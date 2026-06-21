.class public final enum Lcom/squareup/sdk/pos/ChargeRequest$TenderType;
.super Ljava/lang/Enum;
.source "ChargeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/sdk/pos/ChargeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TenderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/sdk/pos/ChargeRequest$TenderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

.field public static final enum CARD:Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

.field public static final enum CARD_ON_FILE:Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

.field public static final enum CASH:Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

.field public static final enum OTHER:Lcom/squareup/sdk/pos/ChargeRequest$TenderType;


# instance fields
.field apiExtraName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 515
    new-instance v0, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    const/4 v1, 0x0

    const-string v2, "com.squareup.pos.TENDER_CARD"

    const-string v3, "CARD"

    invoke-direct {v0, v3, v1, v2}, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->CARD:Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    .line 518
    new-instance v1, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    const/4 v2, 0x1

    const-string v3, "com.squareup.pos.TENDER_CARD_ON_FILE"

    const-string v4, "CARD_ON_FILE"

    invoke-direct {v1, v4, v2, v3}, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->CARD_ON_FILE:Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    .line 521
    new-instance v2, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    const/4 v3, 0x2

    const-string v4, "com.squareup.pos.TENDER_CASH"

    const-string v5, "CASH"

    invoke-direct {v2, v5, v3, v4}, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->CASH:Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    .line 527
    new-instance v3, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    const/4 v4, 0x3

    const-string v5, "com.squareup.pos.TENDER_OTHER"

    const-string v6, "OTHER"

    invoke-direct {v3, v6, v4, v5}, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->OTHER:Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    .line 509
    filled-new-array {v0, v1, v2, v3}, [Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    move-result-object v0

    sput-object v0, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->$VALUES:[Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 531
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 532
    iput-object p3, p0, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->apiExtraName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$TenderType;
    .locals 1

    .line 509
    const-class v0, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    return-object p0
.end method

.method public static values()[Lcom/squareup/sdk/pos/ChargeRequest$TenderType;
    .locals 1

    .line 509
    sget-object v0, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->$VALUES:[Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    invoke-virtual {v0}, [Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    return-object v0
.end method
