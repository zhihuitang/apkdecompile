.class Lcom/google/android/gms/tagmanager/ah;
.super Lcom/google/android/gms/tagmanager/aj;


# static fields
.field private static final ID:Ljava/lang/String;


# instance fields
.field private final anT:Lcom/google/android/gms/tagmanager/ct;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/a;->K:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ah;->ID:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/tagmanager/ct;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/tagmanager/ah;->ID:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/aj;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ah;->anT:Lcom/google/android/gms/tagmanager/ct;

    return-void
.end method


# virtual methods
.method public C(Ljava/util/Map;)Lcom/google/android/gms/internal/d$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/d$a;",
            ">;)",
            "Lcom/google/android/gms/internal/d$a;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ah;->anT:Lcom/google/android/gms/tagmanager/ct;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/ct;->pl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/tagmanager/di;->pI()Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/di;->u(Ljava/lang/Object;)Lcom/google/android/gms/internal/d$a;

    move-result-object v0

    goto :goto_0
.end method

.method public nL()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
