.class public final Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field abS:I

.field final acd:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

.field ace:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

.field acf:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

.field ach:Landroid/os/Bundle;

.field aci:Z

.field acj:Ljava/lang/String;

.field ack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V
    .locals 1
    .parameter "updateListener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->acj:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->abS:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->ack:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->aci:Z

    const-string v0, "Must provide a RoomUpdateListener"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/n;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    iput-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->acd:Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomUpdateListener;)V

    return-void
.end method


# virtual methods
.method public addPlayersToInvite(Ljava/util/ArrayList;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;"
        }
    .end annotation

    .prologue
    .local p1, playerIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->ack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public varargs addPlayersToInvite([Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 2
    .parameter "playerIds"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->ack:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method public build()Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;
    .locals 2

    new-instance v0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig;-><init>(Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$1;)V

    return-object v0
.end method

.method public setAutoMatchCriteria(Landroid/os/Bundle;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0
    .parameter "autoMatchCriteria"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->ach:Landroid/os/Bundle;

    return-object p0
.end method

.method public setInvitationIdToAccept(Ljava/lang/String;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0
    .parameter "invitationId"

    .prologue
    invoke-static {p1}, Lcom/google/android/gms/common/internal/n;->i(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->acj:Ljava/lang/String;

    return-object p0
.end method

.method public setMessageReceivedListener(Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->acf:Lcom/google/android/gms/games/multiplayer/realtime/RealTimeMessageReceivedListener;

    return-object p0
.end method

.method public setRoomStatusUpdateListener(Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->ace:Lcom/google/android/gms/games/multiplayer/realtime/RoomStatusUpdateListener;

    return-object p0
.end method

.method public setSocketCommunicationEnabled(Z)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 0
    .parameter "enableSockets"

    .prologue
    iput-boolean p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->aci:Z

    return-object p0
.end method

.method public setVariant(I)Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;
    .locals 2
    .parameter "variant"

    .prologue
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    if-lez p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Variant must be a positive integer or Room.ROOM_VARIANT_ANY"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    iput p1, p0, Lcom/google/android/gms/games/multiplayer/realtime/RoomConfig$Builder;->abS:I

    return-object p0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
