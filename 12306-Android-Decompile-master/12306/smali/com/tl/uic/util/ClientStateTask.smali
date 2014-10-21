.class public Lcom/tl/uic/util/ClientStateTask;
.super Landroid/os/AsyncTask;
.source "ClientStateTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4
    .parameter "arg"

    .prologue
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 19
    .local v1, result:Ljava/lang/Boolean;
    :try_start_0
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 20
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 26
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Did Client State change?: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;)V

    .line 28
    invoke-static {}, Lcom/tl/uic/Tealeaf;->isApplicationInBackground()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 29
    invoke-static {}, Lcom/tl/uic/Tealeaf;->onPauseNoActivityInForeground()Ljava/lang/Boolean;

    .line 34
    :cond_0
    :goto_1
    return-object v1

    .line 22
    :cond_1
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tl/uic/EnvironmentalData;->onResume()Ljava/lang/Boolean;

    .line 23
    invoke-static {}, Lcom/tl/uic/TLFCache;->getEnvironmentalData()Lcom/tl/uic/EnvironmentalData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tl/uic/EnvironmentalData;->hasClientStateChanged()Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    .local v0, e:Ljava/lang/Exception;
    invoke-static {v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/tl/uic/util/ClientStateTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
