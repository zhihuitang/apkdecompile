.class public Lbbc/mobile/news/widget/viewfactorys/GridWidgetViewFactory;
.super Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;
.source "GridWidgetViewFactory.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lbbc/mobile/news/widget/viewfactorys/RemoteViewsFactoryV3;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    .line 11
    return-void
.end method


# virtual methods
.method public getWidgetItemLayoutResource()I
    .locals 1

    .prologue
    .line 15
    sget v0, Lbbc/mobile/news/R$layout;->widget_item_grid:I

    return v0
.end method
