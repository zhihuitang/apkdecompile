.class Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$15;
.super Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$LoadExtendedGamesImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/internal/api/GamesMetadataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic XU:Z

.field final synthetic Yk:Ljava/lang/String;

.field final synthetic Yl:I

.field final synthetic Ym:Z


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/games/internal/GamesClientImpl;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$15;->a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/games/internal/GamesClientImpl;)V
    .locals 8

    iget-object v2, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$15;->Yk:Ljava/lang/String;

    iget v3, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$15;->Yl:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v6, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$15;->XU:Z

    iget-boolean v7, p0, Lcom/google/android/gms/games/internal/api/GamesMetadataImpl$15;->Ym:Z

    move-object v0, p1

    move-object v1, p0

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/games/internal/GamesClientImpl;->a(Lcom/google/android/gms/common/api/BaseImplementation$b;Ljava/lang/String;IZZZZ)V

    return-void
.end method
