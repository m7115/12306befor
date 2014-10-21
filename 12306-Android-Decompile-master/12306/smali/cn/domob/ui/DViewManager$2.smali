.class Lcn/domob/ui/DViewManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/wall/core/DService$ReceiveDataListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/DViewManager;->addView(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/ui/DViewManager;


# direct methods
.method constructor <init>(Lcn/domob/ui/DViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailReceiveData(Lcn/domob/wall/core/DService$ErrorCode;Ljava/lang/String;)V
    .locals 2
    .parameter "errorCode"
    .parameter "errorContent"

    .prologue
    .line 199
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/domob/ui/DViewManager;->c:Z

    .line 200
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0, p2, p1}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;Ljava/lang/String;Lcn/domob/wall/core/DService$ErrorCode;)V

    .line 201
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->c(Lcn/domob/ui/DViewManager;)Lcn/domob/ui/DViewManager$GetDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->c(Lcn/domob/ui/DViewManager;)Lcn/domob/ui/DViewManager$GetDataListener;

    move-result-object v0

    invoke-interface {v0}, Lcn/domob/ui/DViewManager$GetDataListener;->onFailReceiveData()V

    .line 204
    :cond_0
    return-void
.end method

.method public onSuccessReceiveData(Ljava/util/List;Ljava/util/List;Lcn/domob/wall/core/ControlInfo;)V
    .locals 3
    .parameter
    .parameter
    .parameter "controlInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/AdInfo;",
            ">;",
            "Lcn/domob/wall/core/ControlInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, bannerList:Ljava/util/List;,"Ljava/util/List<Lcn/domob/wall/core/AdInfo;>;"
    .local p2, itemList:Ljava/util/List;,"Ljava/util/List<Lcn/domob/wall/core/AdInfo;>;"
    const/4 v2, 0x1

    .line 173
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    iput-boolean v2, v0, Lcn/domob/ui/DViewManager;->c:Z

    .line 174
    invoke-static {}, Lcn/domob/ui/DViewManager;->a()Lcn/domob/ui/o;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u5230\u5e7f\u544a\u4fe1\u606f"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    check-cast p2, Ljava/util/ArrayList;

    .end local p2           #itemList:Ljava/util/List;,"Ljava/util/List<Lcn/domob/wall/core/AdInfo;>;"
    invoke-static {v0, p2}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 176
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1           #bannerList:Ljava/util/List;,"Ljava/util/List<Lcn/domob/wall/core/AdInfo;>;"
    invoke-static {v0, p1}, Lcn/domob/ui/DViewManager;->b(Lcn/domob/ui/DViewManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 177
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0, p3}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;Lcn/domob/wall/core/ControlInfo;)Lcn/domob/wall/core/ControlInfo;

    .line 178
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;)Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    :goto_0
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0, v2}, Lcn/domob/ui/DViewManager;->a(Lcn/domob/ui/DViewManager;Z)Z

    .line 188
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->c(Lcn/domob/ui/DViewManager;)Lcn/domob/ui/DViewManager$GetDataListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->d(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/ControlInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->c(Lcn/domob/ui/DViewManager;)Lcn/domob/ui/DViewManager$GetDataListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v1}, Lcn/domob/ui/DViewManager;->d(Lcn/domob/ui/DViewManager;)Lcn/domob/wall/core/ControlInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcn/domob/wall/core/ControlInfo;->getNumberOfNewAd()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/domob/ui/DViewManager$GetDataListener;->onSuccessReceiveData(I)V

    .line 194
    :cond_0
    return-void

    .line 184
    :cond_1
    invoke-static {}, Lcn/domob/ui/DViewManager;->a()Lcn/domob/ui/o;

    move-result-object v0

    const-string v1, "\u663e\u793a\u628a\u624b"

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->b(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcn/domob/ui/DViewManager$2;->a:Lcn/domob/ui/DViewManager;

    invoke-static {v0}, Lcn/domob/ui/DViewManager;->b(Lcn/domob/ui/DViewManager;)V

    goto :goto_0
.end method
