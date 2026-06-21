.class public final Lcom/squareup/sdk/pos/ChargeRequest;
.super Ljava/lang/Object;
.source "ChargeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/sdk/pos/ChargeRequest$TenderType;,
        Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;,
        Lcom/squareup/sdk/pos/ChargeRequest$Error;,
        Lcom/squareup/sdk/pos/ChargeRequest$Success;,
        Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    }
.end annotation


# instance fields
.field public final autoReturnMillis:J

.field public final currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

.field public final customerId:Ljava/lang/String;

.field public final locationId:Ljava/lang/String;

.field public final note:Ljava/lang/String;

.field public final requestMetadata:Ljava/lang/String;

.field public final tenderTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/squareup/sdk/pos/ChargeRequest$TenderType;",
            ">;"
        }
    .end annotation
.end field

.field public final totalAmount:I


# direct methods
.method constructor <init>(Lcom/squareup/sdk/pos/ChargeRequest$Builder;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iget-object v0, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->tenderTypes:Ljava/util/Set;

    .line 72
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/squareup/sdk/pos/ChargeRequest$TenderType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->tenderTypes:Ljava/util/Set;

    .line 73
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 71
    :goto_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->tenderTypes:Ljava/util/Set;

    .line 74
    iget v0, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->totalAmount:I

    iput v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->totalAmount:I

    .line 75
    iget-object v0, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

    iput-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

    .line 76
    iget-object v0, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->note:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->note:Ljava/lang/String;

    .line 77
    iget-wide v0, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->autoReturnMillis:J

    iput-wide v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->autoReturnMillis:J

    .line 78
    iget-object v0, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->locationId:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    .line 79
    iget-object v0, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->requestMetadata:Ljava/lang/String;

    iput-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->requestMetadata:Ljava/lang/String;

    .line 80
    iget-object p1, p1, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->customerId:Ljava/lang/String;

    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 104
    :cond_0
    instance-of v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 107
    :cond_1
    check-cast p1, Lcom/squareup/sdk/pos/ChargeRequest;

    .line 108
    iget v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->totalAmount:I

    iget v3, p1, Lcom/squareup/sdk/pos/ChargeRequest;->totalAmount:I

    if-eq v1, v3, :cond_2

    return v2

    .line 111
    :cond_2
    iget-wide v3, p0, Lcom/squareup/sdk/pos/ChargeRequest;->autoReturnMillis:J

    iget-wide v5, p1, Lcom/squareup/sdk/pos/ChargeRequest;->autoReturnMillis:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 114
    :cond_3
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->tenderTypes:Ljava/util/Set;

    iget-object v3, p1, Lcom/squareup/sdk/pos/ChargeRequest;->tenderTypes:Ljava/util/Set;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    .line 117
    :cond_4
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

    iget-object v3, p1, Lcom/squareup/sdk/pos/ChargeRequest;->currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

    if-eq v1, v3, :cond_5

    return v2

    .line 120
    :cond_5
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->note:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v3, p1, Lcom/squareup/sdk/pos/ChargeRequest;->note:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_6
    iget-object v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->note:Ljava/lang/String;

    if-eqz v1, :cond_7

    :goto_0
    return v2

    .line 123
    :cond_7
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v3, p1, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_8
    iget-object v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    if-eqz v1, :cond_9

    :goto_1
    return v2

    .line 126
    :cond_9
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->requestMetadata:Ljava/lang/String;

    if-eqz v1, :cond_a

    iget-object v3, p1, Lcom/squareup/sdk/pos/ChargeRequest;->requestMetadata:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_2

    :cond_a
    iget-object v1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->requestMetadata:Ljava/lang/String;

    if-eqz v1, :cond_b

    :goto_2
    return v2

    .line 130
    :cond_b
    iget-object p0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    if-eqz p0, :cond_c

    iget-object p1, p1, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_3

    :cond_c
    iget-object p0, p1, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    if-eqz p0, :cond_d

    :goto_3
    return v2

    :cond_d
    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->tenderTypes:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 138
    iget v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->totalAmount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 139
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

    invoke-virtual {v1}, Lcom/squareup/sdk/pos/CurrencyCode;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 140
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->note:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 141
    iget-wide v3, p0, Lcom/squareup/sdk/pos/ChargeRequest;->autoReturnMillis:J

    const/16 v1, 0x20

    ushr-long v5, v3, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 142
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 143
    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->requestMetadata:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 144
    iget-object p0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_3
    add-int/2addr v0, v2

    return v0
.end method

.method public newBuilder()Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 2

    .line 85
    iget v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->totalAmount:I

    iget-object v1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->currencyCode:Lcom/squareup/sdk/pos/CurrencyCode;

    invoke-virtual {p0, v0, v1}, Lcom/squareup/sdk/pos/ChargeRequest;->newBuilder(ILcom/squareup/sdk/pos/CurrencyCode;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p0

    return-object p0
.end method

.method public newBuilder(ILcom/squareup/sdk/pos/CurrencyCode;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;
    .locals 2

    .line 92
    new-instance v0, Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    invoke-direct {v0, p1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;-><init>(ILcom/squareup/sdk/pos/CurrencyCode;)V

    iget-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest;->tenderTypes:Ljava/util/Set;

    invoke-virtual {v0, p1}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->restrictTendersTo(Ljava/util/Collection;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/squareup/sdk/pos/ChargeRequest;->note:Ljava/lang/String;

    .line 93
    invoke-virtual {p1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->note(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    iget-wide v0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->autoReturnMillis:J

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 94
    invoke-virtual {p1, v0, v1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->autoReturn(JLjava/util/concurrent/TimeUnit;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/squareup/sdk/pos/ChargeRequest;->locationId:Ljava/lang/String;

    .line 95
    invoke-virtual {p1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->enforceBusinessLocation(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/squareup/sdk/pos/ChargeRequest;->requestMetadata:Ljava/lang/String;

    .line 96
    invoke-virtual {p1, p2}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->requestMetadata(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/squareup/sdk/pos/ChargeRequest;->customerId:Ljava/lang/String;

    .line 97
    invoke-virtual {p1, p0}, Lcom/squareup/sdk/pos/ChargeRequest$Builder;->customerId(Ljava/lang/String;)Lcom/squareup/sdk/pos/ChargeRequest$Builder;

    move-result-object p0

    return-object p0
.end method
