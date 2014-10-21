.class public abstract Lcom/tl/uic/app/UICActivity;
.super Landroid/app/Activity;
.source "UICActivity.java"


# instance fields
.field private imageBackground:I

.field private logicalPageName:Ljava/lang/String;

.field private millisecondSnapshotDelay:J

.field private numOnGlobalLayoutListener:I

.field private takeSnapshotAfterCreate:Ljava/lang/Boolean;

.field private tookImage:Ljava/lang/Boolean;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/app/UICActivity;->takeSnapshotAfterCreate:Ljava/lang/Boolean;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/tl/uic/app/UICActivity;->logicalPageName:Ljava/lang/String;

    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/app/UICActivity;->tookImage:Ljava/lang/Boolean;

    .line 39
    const/high16 v0, -0x100

    iput v0, p0, Lcom/tl/uic/app/UICActivity;->imageBackground:I

    .line 40
    iput v1, p0, Lcom/tl/uic/app/UICActivity;->numOnGlobalLayoutListener:I

    .line 41
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tl/uic/app/UICActivity;->millisecondSnapshotDelay:J

    .line 42
    return-void
.end method


# virtual methods
.method public final getImageBackground()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/tl/uic/app/UICActivity;->imageBackground:I

    return v0
.end method

.method public final getLogicalPageName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 88
    iget-object v0, p0, Lcom/tl/uic/app/UICActivity;->logicalPageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tl/uic/app/UICActivity;->logicalPageName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 90
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    iput-object v0, p0, Lcom/tl/uic/app/UICActivity;->logicalPageName:Ljava/lang/String;

    .line 92
    :cond_1
    iget-object v0, p0, Lcom/tl/uic/app/UICActivity;->logicalPageName:Ljava/lang/String;

    return-object v0
.end method

.method public final getMillisecondSnapshotDelay()J
    .locals 2

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/tl/uic/app/UICActivity;->millisecondSnapshotDelay:J

    return-wide v0
.end method

.method public final getNumOnGlobalLayoutListener()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/tl/uic/app/UICActivity;->numOnGlobalLayoutListener:I

    return v0
.end method

.method public final getTakeSnapshotAfterCreate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tl/uic/app/UICActivity;->takeSnapshotAfterCreate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTookImage()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tl/uic/app/UICActivity;->tookImage:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/tl/uic/app/UICActivity;->view:Landroid/view/View;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 189
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-virtual {p0}, Lcom/tl/uic/app/UICActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tl/uic/app/UICActivity;->view:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/tl/uic/app/UICActivity;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/tl/uic/app/UICActivity;->getImageBackground()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 200
    iget-object v0, p0, Lcom/tl/uic/app/UICActivity;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/tl/uic/util/UICOnGlobalLayoutListener;

    iget-object v2, p0, Lcom/tl/uic/app/UICActivity;->view:Landroid/view/View;

    invoke-direct {v1, p0, v2}, Lcom/tl/uic/util/UICOnGlobalLayoutListener;-><init>(Lcom/tl/uic/app/UICActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 201
    iget v0, p0, Lcom/tl/uic/app/UICActivity;->numOnGlobalLayoutListener:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tl/uic/app/UICActivity;->numOnGlobalLayoutListener:I

    .line 202
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/tl/uic/app/UICActivity;->getLogicalPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tl/uic/Tealeaf;->onDestroy(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 226
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 227
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/tl/uic/app/UICActivity;->getLogicalPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tl/uic/Tealeaf;->onPause(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 209
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 210
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/tl/uic/app/UICActivity;->getLogicalPageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tl/uic/Tealeaf;->onResume(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 218
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 219
    return-void
.end method

.method public final setImageBackground(I)V
    .locals 0
    .parameter "imageBackground"

    .prologue
    .line 121
    iput p1, p0, Lcom/tl/uic/app/UICActivity;->imageBackground:I

    .line 122
    return-void
.end method

.method public final setLogicalPageName(Ljava/lang/String;)V
    .locals 0
    .parameter "logicalPageName"

    .prologue
    .line 102
    iput-object p1, p0, Lcom/tl/uic/app/UICActivity;->logicalPageName:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public final setMillisecondSnapshotDelay(J)V
    .locals 0
    .parameter "millisecondSnapshotDelay"

    .prologue
    .line 182
    iput-wide p1, p0, Lcom/tl/uic/app/UICActivity;->millisecondSnapshotDelay:J

    .line 183
    return-void
.end method

.method public final setNumOnGlobalLayoutListener(I)V
    .locals 0
    .parameter "numOnGlobalLayoutListener"

    .prologue
    .line 159
    iput p1, p0, Lcom/tl/uic/app/UICActivity;->numOnGlobalLayoutListener:I

    .line 160
    return-void
.end method

.method public final setTakeSnapshotAfterCreate(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "takeSnapshotAfterCreate"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/tl/uic/app/UICActivity;->takeSnapshotAfterCreate:Ljava/lang/Boolean;

    .line 61
    return-void
.end method

.method public final setTookImage(Ljava/lang/Boolean;)V
    .locals 0
    .parameter "tookImage"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tl/uic/app/UICActivity;->tookImage:Ljava/lang/Boolean;

    .line 80
    return-void
.end method

.method public final setView(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 140
    iput-object p1, p0, Lcom/tl/uic/app/UICActivity;->view:Landroid/view/View;

    .line 141
    return-void
.end method
