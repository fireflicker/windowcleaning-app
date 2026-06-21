.class final Lcom/squareup/sdk/pos/RealPosClient;
.super Ljava/lang/Object;
.source "RealPosClient.java"

# interfaces
.implements Lcom/squareup/sdk/pos/PosClient;


# static fields
.field private static final API_VERSION:Ljava/lang/String; = "v2.0"

.field private static final PLAY_STORE_APP_URL:Landroid/net/Uri;

.field private static final PLAY_STORE_WEB_URL:Landroid/net/Uri;

.field private static final POINT_OF_SALE_FINGERPRINT:Ljava/lang/String; = "EA:54:A3:62:C8:5B:F4:34:F2:9F:B6:B0:42:D8:3E:5C:7D:C3:8A:D3"

.field private static final POINT_OF_SALE_PACKAGE_NAME:Ljava/lang/String; = "com.squareup"

.field private static final SDK_VERSION:Ljava/lang/String; = "point-of-sale-sdk-2.0-637cb99"


# instance fields
.field private final clientId:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-string v0, "https://play.google.com/store/apps/details?id=com.squareup"

    .line 51
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/squareup/sdk/pos/RealPosClient;->PLAY_STORE_WEB_URL:Landroid/net/Uri;

    .line 52
    const-string v0, "market://details?id=com.squareup"

    .line 53
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/squareup/sdk/pos/RealPosClient;->PLAY_STORE_APP_URL:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/squareup/sdk/pos/RealPosClient;->context:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/squareup/sdk/pos/RealPosClient;->clientId:Ljava/lang/String;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/sdk/pos/RealPosClient;->packageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private createPinnedChargeIntent(Lcom/squareup/sdk/pos/ChargeRequest;Landroid/content/pm/PackageInfo;)Landroid/content/Intent;
    .locals 5

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.squareup.pos.action.CHARGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    const-string v1, "com.squareup.pos.CLIENT_ID"

    iget-object p0, p0, Lcom/squareup/sdk/pos/RealPosClient;->clientId:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string p0, "com.squareup.pos.TOTAL_AMOUNT"

    iget v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->totalAmount:I

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string p0, "com.squareup.pos.NOTE"

    iget-object v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->note:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string p0, "com.squareup.pos.API_VERSION"

    const-string v1, "v2.0"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    const-string p0, "com.squareup.pos.SDK_VERSION"

    const-string v1, "point-of-sale-sdk-2.0-637cb99"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object p0, p1, Lcom/squareup/sdk/pos/ChargeRequest;->currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

    invoke-virtual {p0}, Lcom/squareup/sdk/pos/CurrencyCode;->name()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.squareup.pos.CURRENCY_CODE"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string p0, "com.squareup.pos.REQUEST_METADATA"

    iget-object v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->requestMetadata:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget-object p0, p1, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    .line 156
    const-string p0, "com.squareup.pos.CUSTOMER_ID"

    iget-object v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->tenderTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    .line 161
    iget-object v2, v2, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;->apiExtraName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    :cond_1
    const-string v1, "com.squareup.pos.TENDER_TYPES"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 166
    iget-object p0, p1, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    if-eqz p0, :cond_2

    iget-object p0, p1, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_2

    .line 167
    const-string p0, "com.squareup.pos.LOCATION_ID"

    iget-object v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    :cond_2
    iget-wide v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->autoReturnMillis:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_3

    .line 170
    const-string p0, "com.squareup.pos.AUTO_RETURN_TIMEOUT_MS"

    iget-wide v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->autoReturnMillis:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 172
    :cond_3
    iget-object p0, p2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private findPointOfSaleWithHighestVersion(Ljava/util/List;)Landroid/content/pm/PackageInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/PackageInfo;"
        }
    .end annotation

    .line 123
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :catch_0
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 124
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 125
    invoke-direct {p0, v1}, Lcom/squareup/sdk/pos/RealPosClient;->isPointOfSale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/squareup/sdk/pos/RealPosClient;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    .line 135
    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    if-le v2, v3, :cond_0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    return-object v0

    .line 140
    :cond_4
    new-instance p0, Landroid/content/ActivityNotFoundException;

    const-string p1, "Square Point of Sale is not installed on this device."

    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isPlayStoreInstalled()Z
    .locals 2

    const/4 v0, 0x0

    .line 245
    :try_start_0
    iget-object p0, p0, Lcom/squareup/sdk/pos/RealPosClient;->packageManager:Landroid/content/pm/PackageManager;

    const-string v1, "com.android.vending"

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :catch_0
    return v0
.end method

.method private isPointOfSale(Ljava/lang/String;)Z
    .locals 1

    .line 177
    const-string v0, "com.squareup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EA:54:A3:62:C8:5B:F4:34:F2:9F:B6:B0:42:D8:3E:5C:7D:C3:8A:D3"

    .line 178
    invoke-direct {p0, p1, v0}, Lcom/squareup/sdk/pos/RealPosClient;->matchesExpectedFingerprint(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private matchesExpectedFingerprint(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 192
    :try_start_0
    iget-object p0, p0, Lcom/squareup/sdk/pos/RealPosClient;->packageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x40

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 197
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz p0, :cond_3

    .line 198
    array-length p1, p0

    if-nez p1, :cond_0

    goto :goto_1

    .line 204
    :cond_0
    :try_start_1
    const-string p1, "X509"

    invoke-static {p1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 210
    :try_start_2
    const-string v1, "SHA1"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    .line 214
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 215
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v4

    .line 216
    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 219
    :try_start_3
    invoke-virtual {p1, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    :try_start_4
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v4
    :try_end_4
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 229
    invoke-virtual {v1, v4}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v4

    .line 230
    invoke-static {v4}, Lcom/squareup/sdk/pos/PosSdkHelper;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    return v0

    :cond_2
    const/4 p0, 0x1

    return p0

    :catch_1
    :cond_3
    :goto_1
    return v0
.end method

.method private queryChargeActivities()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.squareup.pos.action.CHARGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    iget-object p0, p0, Lcom/squareup/sdk/pos/RealPosClient;->packageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createChargeIntent(Lcom/squareup/sdk/pos/ChargeRequest;)Landroid/content/Intent;
    .locals 1

    .line 68
    const-string v0, "chargeRequest"

    invoke-static {p1, v0}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    invoke-direct {p0}, Lcom/squareup/sdk/pos/RealPosClient;->queryChargeActivities()Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-direct {p0, v0}, Lcom/squareup/sdk/pos/RealPosClient;->findPointOfSaleWithHighestVersion(Ljava/util/List;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 71
    invoke-direct {p0, p1, v0}, Lcom/squareup/sdk/pos/RealPosClient;->createPinnedChargeIntent(Lcom/squareup/sdk/pos/ChargeRequest;Landroid/content/pm/PackageInfo;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public isPointOfSaleInstalled()Z
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/squareup/sdk/pos/RealPosClient;->queryChargeActivities()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 77
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 78
    invoke-direct {p0, v1}, Lcom/squareup/sdk/pos/RealPosClient;->isPointOfSale(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public launchPointOfSale()V
    .locals 2

    .line 86
    invoke-direct {p0}, Lcom/squareup/sdk/pos/RealPosClient;->queryChargeActivities()Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-direct {p0, v0}, Lcom/squareup/sdk/pos/RealPosClient;->findPointOfSaleWithHighestVersion(Ljava/util/List;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 88
    iget-object v1, p0, Lcom/squareup/sdk/pos/RealPosClient;->packageManager:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    iget-object p0, p0, Lcom/squareup/sdk/pos/RealPosClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public openPointOfSalePlayStoreListing()V
    .locals 3

    .line 93
    invoke-direct {p0}, Lcom/squareup/sdk/pos/RealPosClient;->isPlayStoreInstalled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/squareup/sdk/pos/RealPosClient;->PLAY_STORE_APP_URL:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/squareup/sdk/pos/RealPosClient;->PLAY_STORE_WEB_URL:Landroid/net/Uri;

    .line 94
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10080000

    .line 96
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    iget-object p0, p0, Lcom/squareup/sdk/pos/RealPosClient;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public parseChargeError(Landroid/content/Intent;)Lcom/squareup/sdk/pos/ChargeRequest$Error;
    .locals 3

    .line 109
    const-string p0, "data"

    invoke-static {p1, p0}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    new-instance p0, Lcom/squareup/sdk/pos/ChargeRequest$Error;

    const-string v0, "com.squareup.pos.ERROR_CODE"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;->parse(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    move-result-object v0

    const-string v1, "com.squareup.pos.ERROR_DESCRIPTION"

    .line 112
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.squareup.pos.REQUEST_METADATA"

    .line 113
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/squareup/sdk/pos/ChargeRequest$Error;-><init>(Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public parseChargeSuccess(Landroid/content/Intent;)Lcom/squareup/sdk/pos/ChargeRequest$Success;
    .locals 3

    .line 102
    const-string p0, "data"

    invoke-static {p1, p0}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 103
    new-instance p0, Lcom/squareup/sdk/pos/ChargeRequest$Success;

    const-string v0, "com.squareup.pos.CLIENT_TRANSACTION_ID"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.squareup.pos.SERVER_TRANSACTION_ID"

    .line 104
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.squareup.pos.REQUEST_METADATA"

    .line 105
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/squareup/sdk/pos/ChargeRequest$Success;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
