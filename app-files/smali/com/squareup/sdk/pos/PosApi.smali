.class public final Lcom/squareup/sdk/pos/PosApi;
.super Ljava/lang/Object;
.source "PosApi.java"


# static fields
.field public static final AUTO_RETURN_NO_TIMEOUT:J = 0x0L

.field public static final AUTO_RETURN_TIMEOUT_MAX_MILLIS:J = 0x2710L

.field public static final AUTO_RETURN_TIMEOUT_MIN_MILLIS:J = 0xc80L

.field public static final ERROR_CUSTOMER_MANAGEMENT_NOT_SUPPORTED:Ljava/lang/String; = "com.squareup.pos.ERROR_CUSTOMER_MANAGEMENT_NOT_SUPPORTED"

.field public static final ERROR_DISABLED:Ljava/lang/String; = "com.squareup.pos.ERROR_DISABLED"

.field public static final ERROR_GIFT_CARDS_NOT_SUPPORTED:Ljava/lang/String; = "com.squareup.pos.ERROR_GIFT_CARDS_NOT_SUPPORTED"

.field public static final ERROR_ILLEGAL_LOCATION_ID:Ljava/lang/String; = "com.squareup.pos.ERROR_ILLEGAL_LOCATION_ID"

.field public static final ERROR_INSUFFICIENT_CARD_BALANCE:Ljava/lang/String; = "com.squareup.pos.ERROR_INSUFFICIENT_CARD_BALANCE"

.field public static final ERROR_INVALID_CUSTOMER_ID:Ljava/lang/String; = "com.squareup.pos.ERROR_INVALID_CUSTOMER_ID"

.field public static final ERROR_INVALID_REQUEST:Ljava/lang/String; = "com.squareup.pos.ERROR_INVALID_REQUEST"

.field public static final ERROR_NO_EMPLOYEE_LOGGED_IN:Ljava/lang/String; = "com.squareup.pos.ERROR_NO_EMPLOYEE_LOGGED_IN"

.field public static final ERROR_NO_NETWORK:Ljava/lang/String; = "com.squareup.pos.ERROR_NO_NETWORK"

.field public static final ERROR_NO_RESULT:Ljava/lang/String; = "com.squareup.pos.ERROR_NO_RESULT"

.field public static final ERROR_TRANSACTION_ALREADY_IN_PROGRESS:Ljava/lang/String; = "com.squareup.pos.ERROR_TRANSACTION_ALREADY_IN_PROGRESS"

.field public static final ERROR_TRANSACTION_CANCELED:Ljava/lang/String; = "com.squareup.pos.ERROR_TRANSACTION_CANCELED"

.field public static final ERROR_UNAUTHORIZED_CLIENT_ID:Ljava/lang/String; = "com.squareup.pos.ERROR_UNAUTHORIZED_CLIENT_ID"

.field public static final ERROR_UNEXPECTED:Ljava/lang/String; = "com.squareup.pos.ERROR_UNEXPECTED"

.field public static final ERROR_UNSUPPORTED_API_VERSION:Ljava/lang/String; = "com.squareup.pos.UNSUPPORTED_API_VERSION"

.field public static final ERROR_USER_NOT_ACTIVATED:Ljava/lang/String; = "com.squareup.pos.ERROR_USER_NOT_ACTIVATED"

.field public static final ERROR_USER_NOT_LOGGED_IN:Ljava/lang/String; = "com.squareup.pos.ERROR_USER_NOT_LOGGED_IN"

.field public static final EXTRA_API_VERSION:Ljava/lang/String; = "com.squareup.pos.API_VERSION"

.field public static final EXTRA_AUTO_RETURN_TIMEOUT_MS:Ljava/lang/String; = "com.squareup.pos.AUTO_RETURN_TIMEOUT_MS"

.field public static final EXTRA_CURRENCY_CODE:Ljava/lang/String; = "com.squareup.pos.CURRENCY_CODE"

.field public static final EXTRA_CUSTOMER_ID:Ljava/lang/String; = "com.squareup.pos.CUSTOMER_ID"

.field public static final EXTRA_LOCATION_ID:Ljava/lang/String; = "com.squareup.pos.LOCATION_ID"

.field public static final EXTRA_NOTE:Ljava/lang/String; = "com.squareup.pos.NOTE"

.field public static final EXTRA_POINT_OF_SALE_CLIENT_ID:Ljava/lang/String; = "com.squareup.pos.CLIENT_ID"

.field public static final EXTRA_REQUEST_METADATA:Ljava/lang/String; = "com.squareup.pos.REQUEST_METADATA"

.field public static final EXTRA_SDK_VERSION:Ljava/lang/String; = "com.squareup.pos.SDK_VERSION"

.field public static final EXTRA_TENDER_CARD:Ljava/lang/String; = "com.squareup.pos.TENDER_CARD"

.field public static final EXTRA_TENDER_CARD_ON_FILE:Ljava/lang/String; = "com.squareup.pos.TENDER_CARD_ON_FILE"

.field public static final EXTRA_TENDER_CASH:Ljava/lang/String; = "com.squareup.pos.TENDER_CASH"

.field public static final EXTRA_TENDER_OTHER:Ljava/lang/String; = "com.squareup.pos.TENDER_OTHER"

.field public static final EXTRA_TENDER_TYPES:Ljava/lang/String; = "com.squareup.pos.TENDER_TYPES"

.field public static final EXTRA_TOTAL_AMOUNT:Ljava/lang/String; = "com.squareup.pos.TOTAL_AMOUNT"

.field public static final INTENT_ACTION_CHARGE:Ljava/lang/String; = "com.squareup.pos.action.CHARGE"

.field private static final NAMESPACE:Ljava/lang/String; = "com.squareup.pos."

.field public static final NOTE_MAX_LENGTH:I = 0x1f4

.field public static final RESULT_CLIENT_TRANSACTION_ID:Ljava/lang/String; = "com.squareup.pos.CLIENT_TRANSACTION_ID"

.field public static final RESULT_ERROR_CODE:Ljava/lang/String; = "com.squareup.pos.ERROR_CODE"

.field public static final RESULT_ERROR_DESCRIPTION:Ljava/lang/String; = "com.squareup.pos.ERROR_DESCRIPTION"

.field public static final RESULT_REQUEST_METADATA:Ljava/lang/String; = "com.squareup.pos.REQUEST_METADATA"

.field public static final RESULT_SERVER_TRANSACTION_ID:Ljava/lang/String; = "com.squareup.pos.SERVER_TRANSACTION_ID"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method
