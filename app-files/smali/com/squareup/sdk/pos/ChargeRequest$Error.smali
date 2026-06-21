.class public Lcom/squareup/sdk/pos/ChargeRequest$Error;
.super Ljava/lang/Object;
.source "ChargeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/sdk/pos/ChargeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Error"
.end annotation


# instance fields
.field public final code:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

.field public final debugDescription:Ljava/lang/String;

.field public final requestMetadata:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p1, p0, Lcom/squareup/sdk/pos/ChargeRequest$Error;->code:Lcom/squareup/sdk/pos/ChargeRequest$ErrorCode;

    .line 388
    iput-object p2, p0, Lcom/squareup/sdk/pos/ChargeRequest$Error;->debugDescription:Ljava/lang/String;

    .line 389
    iput-object p3, p0, Lcom/squareup/sdk/pos/ChargeRequest$Error;->requestMetadata:Ljava/lang/String;

    return-void
.end method
