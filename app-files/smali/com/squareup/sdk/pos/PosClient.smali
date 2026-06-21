.class public interface abstract Lcom/squareup/sdk/pos/PosClient;
.super Ljava/lang/Object;
.source "PosClient.java"


# virtual methods
.method public abstract createChargeIntent(Lcom/squareup/sdk/pos/ChargeRequest;)Landroid/content/Intent;
.end method

.method public abstract isPointOfSaleInstalled()Z
.end method

.method public abstract launchPointOfSale()V
.end method

.method public abstract openPointOfSalePlayStoreListing()V
.end method

.method public abstract parseChargeError(Landroid/content/Intent;)Lcom/squareup/sdk/pos/ChargeRequest$Error;
.end method

.method public abstract parseChargeSuccess(Landroid/content/Intent;)Lcom/squareup/sdk/pos/ChargeRequest$Success;
.end method
