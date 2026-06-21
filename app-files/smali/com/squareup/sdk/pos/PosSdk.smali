.class public final Lcom/squareup/sdk/pos/PosSdk;
.super Ljava/lang/Object;
.source "PosSdk.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public static createClient(Landroid/content/Context;Ljava/lang/String;)Lcom/squareup/sdk/pos/PosClient;
    .locals 1

    .line 82
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 83
    const-string v0, "clientId"

    invoke-static {p1, v0}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    new-instance v0, Lcom/squareup/sdk/pos/RealPosClient;

    invoke-direct {v0, p0, p1}, Lcom/squareup/sdk/pos/RealPosClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method
