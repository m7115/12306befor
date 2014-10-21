.class Lcn/domob/ui/l$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/ui/l;->e(Landroid/view/View;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:Landroid/widget/ImageView;

.field final synthetic d:Landroid/widget/TextView;

.field final synthetic e:I

.field final synthetic f:Landroid/widget/TextView;

.field final synthetic g:Landroid/widget/TextView;

.field final synthetic h:I

.field final synthetic i:Landroid/widget/TextView;

.field final synthetic j:Landroid/widget/TextView;

.field final synthetic k:Landroid/widget/TextView;

.field final synthetic l:Lcn/domob/ui/l;


# direct methods
.method constructor <init>(Lcn/domob/ui/l;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/TextView;ILandroid/widget/TextView;Landroid/widget/TextView;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 999
    iput-object p1, p0, Lcn/domob/ui/l$6;->l:Lcn/domob/ui/l;

    iput-object p2, p0, Lcn/domob/ui/l$6;->a:Landroid/widget/ImageView;

    iput-object p3, p0, Lcn/domob/ui/l$6;->b:Landroid/widget/ImageView;

    iput-object p4, p0, Lcn/domob/ui/l$6;->c:Landroid/widget/ImageView;

    iput-object p5, p0, Lcn/domob/ui/l$6;->d:Landroid/widget/TextView;

    iput p6, p0, Lcn/domob/ui/l$6;->e:I

    iput-object p7, p0, Lcn/domob/ui/l$6;->f:Landroid/widget/TextView;

    iput-object p8, p0, Lcn/domob/ui/l$6;->g:Landroid/widget/TextView;

    iput p9, p0, Lcn/domob/ui/l$6;->h:I

    iput-object p10, p0, Lcn/domob/ui/l$6;->i:Landroid/widget/TextView;

    iput-object p11, p0, Lcn/domob/ui/l$6;->j:Landroid/widget/TextView;

    iput-object p12, p0, Lcn/domob/ui/l$6;->k:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 7
    .parameter "tabId"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x4

    .line 1004
    invoke-static {}, Lcn/domob/ui/l;->b()Lcn/domob/ui/o;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tabId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/ui/o;->e(Ljava/lang/String;)V

    .line 1006
    iget-object v0, p0, Lcn/domob/ui/l$6;->l:Lcn/domob/ui/l;

    invoke-static {v0}, Lcn/domob/ui/l;->m(Lcn/domob/ui/l;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/ui/l$6;->l:Lcn/domob/ui/l;

    invoke-static {v1}, Lcn/domob/ui/l;->m(Lcn/domob/ui/l;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "tab_app"

    invoke-static {v1, v2}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1008
    iget-object v1, p0, Lcn/domob/ui/l$6;->l:Lcn/domob/ui/l;

    invoke-static {v1}, Lcn/domob/ui/l;->m(Lcn/domob/ui/l;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/ui/l$6;->l:Lcn/domob/ui/l;

    invoke-static {v2}, Lcn/domob/ui/l;->m(Lcn/domob/ui/l;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tab_game"

    invoke-static {v2, v3}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1010
    iget-object v2, p0, Lcn/domob/ui/l$6;->l:Lcn/domob/ui/l;

    invoke-static {v2}, Lcn/domob/ui/l;->m(Lcn/domob/ui/l;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/ui/l$6;->l:Lcn/domob/ui/l;

    invoke-static {v3}, Lcn/domob/ui/l;->m(Lcn/domob/ui/l;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "tab_all"

    invoke-static {v3, v4}, Lcn/domob/ui/g;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1014
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1015
    iget-object v0, p0, Lcn/domob/ui/l$6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1016
    iget-object v0, p0, Lcn/domob/ui/l$6;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1017
    iget-object v0, p0, Lcn/domob/ui/l$6;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1019
    iget-object v0, p0, Lcn/domob/ui/l$6;->d:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1020
    iget-object v0, p0, Lcn/domob/ui/l$6;->f:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1021
    iget-object v0, p0, Lcn/domob/ui/l$6;->g:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1022
    iget-object v0, p0, Lcn/domob/ui/l$6;->i:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1023
    iget-object v0, p0, Lcn/domob/ui/l$6;->j:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1024
    iget-object v0, p0, Lcn/domob/ui/l$6;->k:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1052
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1027
    iget-object v0, p0, Lcn/domob/ui/l$6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    iget-object v0, p0, Lcn/domob/ui/l$6;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    iget-object v0, p0, Lcn/domob/ui/l$6;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1031
    iget-object v0, p0, Lcn/domob/ui/l$6;->d:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1032
    iget-object v0, p0, Lcn/domob/ui/l$6;->f:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1033
    iget-object v0, p0, Lcn/domob/ui/l$6;->g:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1034
    iget-object v0, p0, Lcn/domob/ui/l$6;->i:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1035
    iget-object v0, p0, Lcn/domob/ui/l$6;->j:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1036
    iget-object v0, p0, Lcn/domob/ui/l$6;->k:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1038
    :cond_2
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1039
    iget-object v0, p0, Lcn/domob/ui/l$6;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcn/domob/ui/l$6;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1041
    iget-object v0, p0, Lcn/domob/ui/l$6;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1043
    iget-object v0, p0, Lcn/domob/ui/l$6;->d:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1044
    iget-object v0, p0, Lcn/domob/ui/l$6;->f:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1045
    iget-object v0, p0, Lcn/domob/ui/l$6;->g:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1046
    iget-object v0, p0, Lcn/domob/ui/l$6;->i:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->e:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1047
    iget-object v0, p0, Lcn/domob/ui/l$6;->j:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1048
    iget-object v0, p0, Lcn/domob/ui/l$6;->k:Landroid/widget/TextView;

    iget v1, p0, Lcn/domob/ui/l$6;->h:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method
