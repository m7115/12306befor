.class public Lcom/tl/uic/util/UICOnGlobalLayoutListener;
.super Ljava/lang/Object;
.source "UICOnGlobalLayoutListener.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field private final uicActivity:Lcom/tl/uic/app/UICActivity;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/tl/uic/app/UICActivity;Landroid/view/View;)V
    .locals 0
    .parameter "uicActivity"
    .parameter "view"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    .line 28
    iput-object p2, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    .line 29
    return-void
.end method

.method static synthetic access$0(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 19
    iget-object v0, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)Lcom/tl/uic/app/UICActivity;
    .locals 1
    .parameter

    .prologue
    .line 20
    iget-object v0, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    return-object v0
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .prologue
    .line 35
    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    .line 36
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 42
    .end local v1           #i:I
    :cond_0
    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 43
    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    iget-object v4, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    invoke-virtual {v4}, Lcom/tl/uic/app/UICActivity;->getNumOnGlobalLayoutListener()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Lcom/tl/uic/app/UICActivity;->setNumOnGlobalLayoutListener(I)V

    .line 47
    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    instance-of v3, v3, Lcom/tl/uic/webkit/UICWebView;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    invoke-virtual {v3}, Lcom/tl/uic/app/UICActivity;->getTakeSnapshotAfterCreate()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 48
    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    invoke-virtual {v3}, Lcom/tl/uic/app/UICActivity;->getTookImage()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    invoke-virtual {v3}, Lcom/tl/uic/app/UICActivity;->getNumOnGlobalLayoutListener()I

    move-result v3

    if-nez v3, :cond_1

    .line 49
    new-instance v2, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;

    invoke-direct {v2, p0}, Lcom/tl/uic/util/UICOnGlobalLayoutListener$1;-><init>(Lcom/tl/uic/util/UICOnGlobalLayoutListener;)V

    .line 61
    .local v2, thread:Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 63
    .end local v2           #thread:Ljava/lang/Thread;
    :cond_1
    return-void

    .line 37
    .restart local v1       #i:I
    :cond_2
    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->view:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->setListenersOnChildren(Landroid/view/View;)V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final setListenersOnChildren(Landroid/view/View;)V
    .locals 6
    .parameter "viewChild"

    .prologue
    .line 69
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    move-object v2, p1

    .line 70
    check-cast v2, Landroid/view/ViewGroup;

    .line 71
    .local v2, viewGroup:Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v1, v3, :cond_1

    .line 93
    .end local v1           #i:I
    .end local v2           #viewGroup:Landroid/view/ViewGroup;
    :cond_0
    return-void

    .line 72
    .restart local v1       #i:I
    .restart local v2       #viewGroup:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, child:Landroid/view/View;
    instance-of v3, v0, Landroid/widget/ListView;

    if-nez v3, :cond_2

    instance-of v3, v0, Landroid/widget/ImageView;

    if-nez v3, :cond_2

    instance-of v3, v0, Landroid/widget/LinearLayout;

    if-nez v3, :cond_2

    .line 77
    instance-of v3, v0, Landroid/widget/TextView;

    if-nez v3, :cond_2

    .line 78
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 79
    new-instance v4, Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    iget-object v5, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    invoke-direct {v4, v5, v0}, Lcom/tl/uic/util/UICOnGlobalLayoutListener;-><init>(Lcom/tl/uic/app/UICActivity;Landroid/view/View;)V

    .line 78
    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 80
    iget-object v3, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    iget-object v4, p0, Lcom/tl/uic/util/UICOnGlobalLayoutListener;->uicActivity:Lcom/tl/uic/app/UICActivity;

    invoke-virtual {v4}, Lcom/tl/uic/app/UICActivity;->getNumOnGlobalLayoutListener()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Lcom/tl/uic/app/UICActivity;->setNumOnGlobalLayoutListener(I)V

    .line 71
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
