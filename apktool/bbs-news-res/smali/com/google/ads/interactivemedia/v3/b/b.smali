.class public final Lcom/google/ads/interactivemedia/v3/b/b;
.super Ljava/lang/Object;
.source "IMASDK"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/api/AdErrorEvent;


# instance fields
.field private final a:Lcom/google/ads/interactivemedia/v3/api/AdError;

.field private final b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdError;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b;->a:Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 20
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b;->b:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method constructor <init>(Lcom/google/ads/interactivemedia/v3/api/AdError;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/b/b;->a:Lcom/google/ads/interactivemedia/v3/api/AdError;

    .line 25
    iput-object p2, p0, Lcom/google/ads/interactivemedia/v3/b/b;->b:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public final getError()Lcom/google/ads/interactivemedia/v3/api/AdError;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b;->a:Lcom/google/ads/interactivemedia/v3/api/AdError;

    return-object v0
.end method

.method public final getUserRequestContext()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/b/b;->b:Ljava/lang/Object;

    return-object v0
.end method
