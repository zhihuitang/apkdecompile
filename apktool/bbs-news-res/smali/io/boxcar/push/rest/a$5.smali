.class final Lio/boxcar/push/rest/a$5;
.super Ljava/lang/Object;
.source "BXCRESTServiceProxy.java"

# interfaces
.implements Lio/boxcar/push/rest/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/boxcar/push/rest/a;->c(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/boxcar/push/rest/a;


# direct methods
.method constructor <init>(Lio/boxcar/push/rest/a;)V
    .locals 0
    .parameter

    .prologue
    .line 249
    iput-object p1, p0, Lio/boxcar/push/rest/a$5;->a:Lio/boxcar/push/rest/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 252
    iget-object v1, p0, Lio/boxcar/push/rest/a$5;->a:Lio/boxcar/push/rest/a;

    monitor-enter v1

    .line 253
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/rest/a$5;->a:Lio/boxcar/push/rest/a;

    .line 254
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 261
    iget-object v1, p0, Lio/boxcar/push/rest/a$5;->a:Lio/boxcar/push/rest/a;

    monitor-enter v1

    .line 262
    :try_start_0
    iget-object v0, p0, Lio/boxcar/push/rest/a$5;->a:Lio/boxcar/push/rest/a;

    .line 263
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method