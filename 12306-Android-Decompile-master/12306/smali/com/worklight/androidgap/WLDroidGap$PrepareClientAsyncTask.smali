.class Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;
.super Landroid/os/AsyncTask;
.source "WLDroidGap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/WLDroidGap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareClientAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/os/Bundle;",
        "Ljava/lang/Void;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/WLDroidGap;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/WLDroidGap;)V
    .locals 0
    .parameter

    .prologue
    .line 667
    iput-object p1, p0, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/WLDroidGap;Lcom/worklight/androidgap/WLDroidGap$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 667
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;-><init>(Lcom/worklight/androidgap/WLDroidGap;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "params"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    #calls: Lcom/worklight/androidgap/WLDroidGap;->doPrepareAssetsWork()V
    invoke-static {v0}, Lcom/worklight/androidgap/WLDroidGap;->access$500(Lcom/worklight/androidgap/WLDroidGap;)V

    .line 672
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, [Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->doInBackground([Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/os/Bundle;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->this$0:Lcom/worklight/androidgap/WLDroidGap;

    invoke-virtual {v0, p1}, Lcom/worklight/androidgap/WLDroidGap;->onWLInitCompleted(Landroid/os/Bundle;)V

    .line 678
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 667
    check-cast p1, Landroid/os/Bundle;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/WLDroidGap$PrepareClientAsyncTask;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
