.class final Lcom/google/android/gms/games/Games$2;
.super Lcom/google/android/gms/games/Games$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/games/Games;->signOut(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/games/Games$b;-><init>(Lcom/google/android/gms/games/Games$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/fl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/Games$2;->a(Lcom/google/android/gms/internal/fl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/fl;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/fl;->b(Lcom/google/android/gms/common/api/a$c;)V

    return-void
.end method
