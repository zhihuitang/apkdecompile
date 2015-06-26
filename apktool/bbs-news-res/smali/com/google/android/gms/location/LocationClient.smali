.class public Lcom/google/android/gms/location/LocationClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;,
        Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final KEY_LOCATION_CHANGED:Ljava/lang/String; = "com.google.android.location.LOCATION"

.field public static final KEY_MOCK_LOCATION:Ljava/lang/String; = "mockLocation"


# instance fields
.field private final adP:Lcom/google/android/gms/internal/ly;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2
    .parameter "context"
    .parameter "connectionCallbacks"
    .parameter "connectionFailedListener"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ly;

    const-string v1, "location"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/ly;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    return-void
.end method

.method public static getErrorCode(Landroid/content/Intent;)I
    .locals 2
    .parameter "intent"

    .prologue
    const-string v0, "gms_error_code"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getGeofenceTransition(Landroid/content/Intent;)I
    .locals 3
    .parameter "intent"

    .prologue
    const/4 v0, -0x1

    const-string v1, "com.google.android.location.intent.extra.transition"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static getTriggeringGeofences(Landroid/content/Intent;)Ljava/util/List;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "com.google.android.location.intent.extra.geofence_list"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/google/android/gms/internal/mb;->h([B)Lcom/google/android/gms/internal/mb;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public static getTriggeringLocation(Landroid/content/Intent;)Landroid/location/Location;
    .locals 1
    .parameter "intent"

    .prologue
    const-string v0, "com.google.android.location.intent.extra.triggering_location"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    return-object v0
.end method

.method public static hasError(Landroid/content/Intent;)Z
    .locals 1
    .parameter "intent"

    .prologue
    const-string v0, "gms_error_code"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    .locals 5
    .parameter
    .parameter "pendingIntent"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/location/Geofence;",
            ">;",
            "Landroid/app/PendingIntent;",
            "Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, geofences:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/gms/location/Geofence;>;"
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/location/Geofence;

    instance-of v3, v0, Lcom/google/android/gms/internal/mb;

    const-string v4, "Geofence must be created using Geofence.Builder."

    invoke-static {v3, v4}, Lcom/google/android/gms/common/internal/n;->b(ZLjava/lang/Object;)V

    check-cast v0, Lcom/google/android/gms/internal/mb;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v1, v0, p2, p3}, Lcom/google/android/gms/internal/ly;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ly;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ly;->disconnect()V

    return-void
.end method

.method public getLastLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ly;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ly;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ly;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .locals 2
    .parameter "pendingIntent"
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ly;->removeGeofences(Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    .locals 2
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, geofenceRequestIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ly;->removeGeofences(Ljava/util/List;Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeLocationUpdates(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "callbackIntent"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->removeLocationUpdates(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->removeLocationUpdates(Lcom/google/android/gms/location/LocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "request"
    .parameter "callbackIntent"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->b(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/lz;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ly;->b(Lcom/google/android/gms/internal/lz;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .locals 2
    .parameter "request"
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->b(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/lz;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/LocationListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestLocationUpdates(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 2
    .parameter "request"
    .parameter "listener"
    .parameter "looper"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-static {p1}, Lcom/google/android/gms/internal/lz;->b(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/internal/lz;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Lcom/google/android/gms/internal/ly;->a(Lcom/google/android/gms/internal/lz;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMockLocation(Landroid/location/Location;)V
    .locals 2
    .parameter "mockLocation"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->setMockLocation(Landroid/location/Location;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setMockMode(Z)V
    .locals 2
    .parameter "isMockMode"

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->setMockMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/LocationClient;->adP:Lcom/google/android/gms/internal/ly;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ly;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method
