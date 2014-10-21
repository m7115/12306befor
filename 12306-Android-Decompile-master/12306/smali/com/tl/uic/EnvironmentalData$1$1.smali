.class Lcom/tl/uic/EnvironmentalData$1$1;
.super Ljava/lang/Object;
.source "EnvironmentalData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tl/uic/EnvironmentalData$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tl/uic/EnvironmentalData$1;


# direct methods
.method constructor <init>(Lcom/tl/uic/EnvironmentalData$1;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tl/uic/EnvironmentalData$1$1;->this$1:Lcom/tl/uic/EnvironmentalData$1;

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 631
    :try_start_0
    invoke-static {}, Lcom/tl/uic/EnvironmentalData;->access$1()Lcom/tl/uic/util/ClientStateTask;

    move-result-object v1

    if-nez v1, :cond_0

    .line 632
    new-instance v1, Lcom/tl/uic/util/ClientStateTask;

    invoke-direct {v1}, Lcom/tl/uic/util/ClientStateTask;-><init>()V

    invoke-static {v1}, Lcom/tl/uic/EnvironmentalData;->access$2(Lcom/tl/uic/util/ClientStateTask;)V

    .line 633
    invoke-static {}, Lcom/tl/uic/EnvironmentalData;->access$1()Lcom/tl/uic/util/ClientStateTask;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/tl/uic/util/ClientStateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    :cond_0
    :goto_0
    return-void

    .line 635
    :catch_0
    move-exception v0

    .line 636
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
