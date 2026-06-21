.class public final enum Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;
.super Ljava/lang/Enum;
.source "ChargeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/sdk/pos/ChargeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum CUSTOMER_MANAGEMENT_NOT_SUPPORTED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum DISABLED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum ERROR_INVALID_CUSTOMER_ID:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum GIFT_CARDS_NOT_SUPPORTED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum ILLEGAL_LOCATION_ID:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum INSUFFICIENT_CARD_BALANCE:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum INVALID_REQUEST:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum NO_EMPLOYEE_LOGGED_IN:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum NO_NETWORK:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum NO_RESULT:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum TRANSACTION_ALREADY_IN_PROGRESS:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum TRANSACTION_CANCELED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum UNAUTHORIZED_CLIENT_ID:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum UNEXPECTED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum UNSUPPORTED_API_VERSION:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum USER_NOT_ACTIVATED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public static final enum USER_NOT_LOGGED_IN:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field private static final errorCodeByApiString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final apiCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 396
    new-instance v1, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v0, v1

    const-string v2, "com.squareup.pos.ERROR_DISABLED"

    const-string v3, "DISABLED"

    const/4 v15, 0x0

    invoke-direct {v1, v3, v15, v2}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->DISABLED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 399
    new-instance v2, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v1, v2

    const/4 v3, 0x1

    const-string v4, "com.squareup.pos.ERROR_CUSTOMER_MANAGEMENT_NOT_SUPPORTED"

    const-string v5, "CUSTOMER_MANAGEMENT_NOT_SUPPORTED"

    invoke-direct {v2, v5, v3, v4}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->CUSTOMER_MANAGEMENT_NOT_SUPPORTED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 405
    new-instance v3, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v2, v3

    const/4 v4, 0x2

    const-string v5, "com.squareup.pos.ERROR_INVALID_CUSTOMER_ID"

    const-string v6, "ERROR_INVALID_CUSTOMER_ID"

    invoke-direct {v3, v6, v4, v5}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->ERROR_INVALID_CUSTOMER_ID:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 408
    new-instance v4, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v3, v4

    const/4 v5, 0x3

    const-string v6, "com.squareup.pos.ERROR_GIFT_CARDS_NOT_SUPPORTED"

    const-string v7, "GIFT_CARDS_NOT_SUPPORTED"

    invoke-direct {v4, v7, v5, v6}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->GIFT_CARDS_NOT_SUPPORTED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 414
    new-instance v5, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v4, v5

    const/4 v6, 0x4

    const-string v7, "com.squareup.pos.ERROR_ILLEGAL_LOCATION_ID"

    const-string v8, "ILLEGAL_LOCATION_ID"

    invoke-direct {v5, v8, v6, v7}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->ILLEGAL_LOCATION_ID:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 421
    new-instance v6, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v5, v6

    const/4 v7, 0x5

    const-string v8, "com.squareup.pos.ERROR_INSUFFICIENT_CARD_BALANCE"

    const-string v9, "INSUFFICIENT_CARD_BALANCE"

    invoke-direct {v6, v9, v7, v8}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->INSUFFICIENT_CARD_BALANCE:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 429
    new-instance v7, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v6, v7

    const/4 v8, 0x6

    const-string v9, "com.squareup.pos.ERROR_INVALID_REQUEST"

    const-string v10, "INVALID_REQUEST"

    invoke-direct {v7, v10, v8, v9}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->INVALID_REQUEST:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 432
    new-instance v8, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v7, v8

    const/4 v9, 0x7

    const-string v10, "com.squareup.pos.ERROR_NO_EMPLOYEE_LOGGED_IN"

    const-string v11, "NO_EMPLOYEE_LOGGED_IN"

    invoke-direct {v8, v11, v9, v10}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->NO_EMPLOYEE_LOGGED_IN:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 438
    new-instance v9, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v8, v9

    const/16 v10, 0x8

    const-string v11, "com.squareup.pos.ERROR_NO_NETWORK"

    const-string v12, "NO_NETWORK"

    invoke-direct {v9, v12, v10, v11}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->NO_NETWORK:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 444
    new-instance v10, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v9, v10

    const/16 v11, 0x9

    const-string v12, "com.squareup.pos.ERROR_NO_RESULT"

    const-string v13, "NO_RESULT"

    invoke-direct {v10, v13, v11, v12}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->NO_RESULT:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 451
    new-instance v11, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v10, v11

    const/16 v12, 0xa

    const-string v13, "com.squareup.pos.ERROR_TRANSACTION_ALREADY_IN_PROGRESS"

    const-string v14, "TRANSACTION_ALREADY_IN_PROGRESS"

    invoke-direct {v11, v14, v12, v13}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->TRANSACTION_ALREADY_IN_PROGRESS:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 454
    new-instance v12, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v11, v12

    const/16 v13, 0xb

    const-string v14, "com.squareup.pos.ERROR_TRANSACTION_CANCELED"

    const-string v15, "TRANSACTION_CANCELED"

    invoke-direct {v12, v15, v13, v14}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->TRANSACTION_CANCELED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 460
    new-instance v13, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v12, v13

    const/16 v14, 0xc

    const-string v15, "com.squareup.pos.ERROR_UNAUTHORIZED_CLIENT_ID"

    move-object/from16 v17, v0

    const-string v0, "UNAUTHORIZED_CLIENT_ID"

    invoke-direct {v13, v0, v14, v15}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->UNAUTHORIZED_CLIENT_ID:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 467
    new-instance v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v13, v0

    const/16 v14, 0xd

    const-string v15, "com.squareup.pos.ERROR_UNEXPECTED"

    move-object/from16 v18, v1

    const-string v1, "UNEXPECTED"

    invoke-direct {v0, v1, v14, v15}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->UNEXPECTED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 474
    new-instance v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object v14, v0

    const/16 v1, 0xe

    const-string v15, "com.squareup.pos.UNSUPPORTED_API_VERSION"

    move-object/from16 v19, v2

    const-string v2, "UNSUPPORTED_API_VERSION"

    invoke-direct {v0, v2, v1, v15}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->UNSUPPORTED_API_VERSION:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 480
    new-instance v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    const/16 v20, 0x0

    move-object v15, v0

    const/16 v1, 0xf

    const-string v2, "com.squareup.pos.ERROR_USER_NOT_ACTIVATED"

    move-object/from16 v21, v3

    const-string v3, "USER_NOT_ACTIVATED"

    invoke-direct {v0, v3, v1, v2}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->USER_NOT_ACTIVATED:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 483
    new-instance v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    const-string v2, "com.squareup.pos.ERROR_USER_NOT_LOGGED_IN"

    const-string v3, "USER_NOT_LOGGED_IN"

    invoke-direct {v0, v3, v1, v2}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->USER_NOT_LOGGED_IN:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    move-object/from16 v3, v21

    .line 393
    filled-new-array/range {v0 .. v16}, [Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-result-object v0

    sput-object v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->$VALUES:[Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 485
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->errorCodeByApiString:Ljava/util/Map;

    .line 494
    invoke-static {}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->values()[Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-result-object v0

    array-length v1, v0

    move/from16 v15, v20

    :goto_0
    if-ge v15, v1, :cond_0

    aget-object v2, v0, v15

    .line 495
    sget-object v3, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->errorCodeByApiString:Ljava/util/Map;

    iget-object v4, v2, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->apiCode:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_0
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

    .line 489
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 490
    iput-object p3, p0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->apiCode:Ljava/lang/String;

    return-void
.end method

.method static parse(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;
    .locals 1

    .line 500
    sget-object v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->errorCodeByApiString:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;
    .locals 1

    .line 393
    const-class v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    return-object p0
.end method

.method public static values()[Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;
    .locals 1

    .line 393
    sget-object v0, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->$VALUES:[Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    invoke-virtual {v0}, [Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    return-object v0
.end method
