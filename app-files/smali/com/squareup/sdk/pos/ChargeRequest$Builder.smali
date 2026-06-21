.class public final Lcom/squareup/sdk/pos/ChargeRequest$Builder;
.super Ljava/lang/Object;
.source "ChargeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/sdk/pos/ChargeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field autoReturnMillis:J

.field final currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

.field customerId:Ljava/lang/String;

.field locationId:Ljava/lang/String;

.field note:Ljava/lang/String;

.field requestMetadata:Ljava/lang/String;

.field final tenderTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/squareup/sdk/pos/ChargeRequest$TenderType;",
            ">;"
        }
    .end annotation
.end field

.field final totalAmount:I


# direct methods
.method public constructor <init>(ILcom/squareup/sdk/pos/CurrencyCode;)V
    .locals 0

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    .line 175
    iput p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->totalAmount:I

    .line 176
    const-string p1, "currencyCode"

    invoke-static {p2, p1}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/squareup/sdk/pos/CurrencyCode;

    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

    .line 177
    const-class p1, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->tenderTypes:Ljava/util/Set;

    const-wide/16 p1, 0x0

    .line 178
    iput-wide p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->autoReturnMillis:J

    return-void

    .line 173
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "totalAmount must be non-negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public autoReturn(JLjava/util/concurrent/TimeUnit;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_2

    .line 251
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 252
    const-string p1, "unit"

    invoke-static {p3, p1}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 p1, 0xc80

    cmp-long p1, v0, p1

    if-ltz p1, :cond_1

    const-wide/16 p1, 0x2710

    cmp-long p1, v0, p1

    if-gtz p1, :cond_0

    goto :goto_0

    .line 258
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout should be less than 10000"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 254
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout should be at least 3200"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 264
    :cond_2
    :goto_0
    iput-wide v0, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->autoReturnMillis:J

    return-object p0
.end method

.method public build()Lcom/squareup/sdk/pos/ChargeRequest;
    .locals 1

    .line 314
    new-instance v0, Lcom/squareup/sdk/pos/ChargeRequest;

    invoke-direct {v0, p0}, Lcom/squareup/sdk/pos/ChargeRequest;-><init>(Lcom/squareup/sdk/pos/ChargeRequest$Builder;)V

    return-object v0
.end method

.method public customerId(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->customerId:Ljava/lang/String;

    return-object p0
.end method

.method public enforceBusinessLocation(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->locationId:Ljava/lang/String;

    return-object p0
.end method

.method public note(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 2

    if-eqz p1, :cond_1

    .line 226
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 227
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "note character length must be less than 500"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 230
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->note:Ljava/lang/String;

    return-object p0
.end method

.method public requestMetadata(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->requestMetadata:Ljava/lang/String;

    return-object p0
.end method

.method public restrictTendersTo(Ljava/util/Collection;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/squareup/sdk/pos/ChargeRequest$TenderType;",
            ">;)",
            "Lcom/squareup/sdk/pos/ChargeRequest$Builder;"
        }
    .end annotation

    .line 193
    const-string v0, "tenderTypes"

    invoke-static {p1, v0}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 194
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->tenderTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 198
    iget-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->tenderTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0

    .line 195
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please restrict to at least one TenderType."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs restrictTendersTo([Lcom/squareup/sdk/pos/ChargeRequest$TenderType;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 1

    .line 204
    const-string v0, "tenderTypes"

    invoke-static {p1, v0}, Lcom/squareup/sdk/pos/PosSdkHelper;->nonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 205
    array-length v0, p1

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->tenderTypes:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 209
    iget-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->tenderTypes:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-object p0

    .line 206
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Please restrict to at least one TenderType."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
