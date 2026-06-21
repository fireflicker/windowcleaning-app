.class public Lcom/squareup/sdk/pos/ChargeRequest$Success;
.super Ljava/lang/Object;
.source "ChargeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/sdk/pos/ChargeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Success"
.end annotation


# instance fields
.field public final clientTransactionId:Ljava/lang/String;

.field public final requestMetadata:Ljava/lang/String;

.field public final serverTransactionId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Success;->clientTransactionId:Ljava/lang/String;

    .line 353
    iput-object p2, p0, Lcom/squareup/sdk/pos/ChargeRequest$Success;->serverTransactionId:Ljava/lang/String;

    .line 354
    iput-object p3, p0, Lcom/squareup/sdk/pos/ChargeRequest$Success;->requestMetadata:Ljava/lang/String;

    return-void
.end method
