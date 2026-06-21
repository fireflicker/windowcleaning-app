.class public Lorg/apache/cordova/CordovaPluginPathHandler;
.super Ljava/lang/Object;
.source "CordovaPluginPathHandler.java"


# instance fields
.field private final handler:Landroidx/webkit/WebViewAssetLoader$PathHandler;


# direct methods
.method public constructor <init>(Landroidx/webkit/WebViewAssetLoader$PathHandler;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/apache/cordova/CordovaPluginPathHandler;->handler:Landroidx/webkit/WebViewAssetLoader$PathHandler;

    return-void
.end method


# virtual methods
.method public getPathHandler()Landroidx/webkit/WebViewAssetLoader$PathHandler;
    .locals 0

    .line 36
    iget-object p0, p0, Lorg/apache/cordova/CordovaPluginPathHandler;->handler:Landroidx/webkit/WebViewAssetLoader$PathHandler;

    return-object p0
.end method
