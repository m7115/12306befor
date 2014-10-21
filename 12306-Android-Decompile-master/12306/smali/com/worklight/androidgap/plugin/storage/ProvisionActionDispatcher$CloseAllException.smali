.class Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;
.super Ljava/lang/Exception;
.source "ProvisionActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CloseAllException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;


# direct methods
.method public constructor <init>(Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;)V
    .locals 0
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;->this$0:Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "message"

    .prologue
    .line 351
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;->this$0:Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;

    .line 352
    invoke-direct {p0, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 353
    return-void
.end method
