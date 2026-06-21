.class public Lcom/onesignal/language/LanguageProviderAppDefined;
.super Ljava/lang/Object;
.source "LanguageProviderAppDefined.java"

# interfaces
.implements Lcom/onesignal/language/LanguageProvider;


# static fields
.field private static final DEFAULT_LANGUAGE:Ljava/lang/String; = "en"

.field public static final PREFS_OS_LANGUAGE:Ljava/lang/String; = "PREFS_OS_LANGUAGE"


# instance fields
.field private final preferences:Lcom/onesignal/OSSharedPreferences;


# direct methods
.method public constructor <init>(Lcom/onesignal/OSSharedPreferences;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/onesignal/language/LanguageProviderAppDefined;->preferences:Lcom/onesignal/OSSharedPreferences;

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 3

    .line 25
    iget-object p0, p0, Lcom/onesignal/language/LanguageProviderAppDefined;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 26
    invoke-interface {p0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PREFS_OS_LANGUAGE"

    const-string v2, "en"

    .line 25
    invoke-interface {p0, v0, v1, v2}, Lcom/onesignal/OSSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 2

    .line 17
    iget-object p0, p0, Lcom/onesignal/language/LanguageProviderAppDefined;->preferences:Lcom/onesignal/OSSharedPreferences;

    .line 18
    invoke-interface {p0}, Lcom/onesignal/OSSharedPreferences;->getPreferencesName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PREFS_OS_LANGUAGE"

    .line 17
    invoke-interface {p0, v0, v1, p1}, Lcom/onesignal/OSSharedPreferences;->saveString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
