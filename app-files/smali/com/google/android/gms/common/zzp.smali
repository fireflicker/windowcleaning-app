.class final Lcom/google/android/gms/common/zzp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.6.0"


# direct methods
.method static zza(I)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x5

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    .line 1
    aget v3, v1, v2

    add-int/lit8 v5, v3, -0x1

    if-eqz v3, :cond_1

    if-ne v5, p0, :cond_0

    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 2
    throw p0

    :cond_2
    return v0
.end method
