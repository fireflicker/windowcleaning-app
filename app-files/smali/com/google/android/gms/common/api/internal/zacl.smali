.class final Lcom/google/android/gms/common/api/internal/zacl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-base@@17.6.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic zaa:Lcom/google/android/gms/common/api/internal/zaco;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaco;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zacl;->zaa:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zacl;->zaa:Lcom/google/android/gms/common/api/internal/zaco;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaco;->zae(Lcom/google/android/gms/common/api/internal/zaco;)Lcom/google/android/gms/common/api/internal/zacn;

    move-result-object p0

    .line 1
    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/zacn;->zaa(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
