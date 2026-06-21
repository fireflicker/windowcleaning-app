.class public Lio/liteglue/SQLiteConnector;
.super Ljava/lang/Object;
.source "SQLiteConnector.java"

# interfaces
.implements Lio/liteglue/SQLiteConnectionFactory;


# static fields
.field static isLibLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    sget-boolean p0, Lio/liteglue/SQLiteConnector;->isLibLoaded:Z

    if-nez p0, :cond_1

    .line 8
    const-string p0, "sqlc-ndk-native-driver"

    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    const/4 p0, 0x4

    .line 10
    invoke-static {p0}, Lio/liteglue/SQLiteNDKNativeDriver;->sqlc_api_version_check(I)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    .line 14
    sput-boolean p0, Lio/liteglue/SQLiteConnector;->isLibLoaded:Z

    goto :goto_0

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "native library version mismatch"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public newSQLiteConnection(Ljava/lang/String;I)Lio/liteglue/SQLiteConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/sql/SQLException;
        }
    .end annotation

    .line 20
    new-instance p0, Lio/liteglue/SQLiteGlueConnection;

    invoke-direct {p0, p1, p2}, Lio/liteglue/SQLiteGlueConnection;-><init>(Ljava/lang/String;I)V

    return-object p0
.end method
