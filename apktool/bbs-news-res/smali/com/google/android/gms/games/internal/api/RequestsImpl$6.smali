.class Lcom/google/android/gms/games/internal/api/RequestsImpl$6;
.super Lcom/google/android/gms/games/internal/api/RequestsImpl$UpdateRequestsImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/RequestsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XX:Ljava/lang/String;

.field final synthetic Zk:Ljava/lang/String;

.field final synthetic Zo:[Ljava/lang/String;


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/RequestsImpl$6;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$6;->XX:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$6;->Zk:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/RequestsImpl$6;->Zo:[Ljava/lang/String;

    invoke-virtual {p1, p0, v0, v1, v2}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method
