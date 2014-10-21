.class Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;
.super Ljava/lang/Object;
.source "BaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Parameter"
.end annotation


# instance fields
.field private loggable:Z

.field private name:Ljava/lang/String;

.field private required:Z

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;

.field private types:[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V
    .locals 0
    .parameter
    .parameter "name"
    .parameter "required"
    .parameter "loggable"
    .parameter "types"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->this$0:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->name:Ljava/lang/String;

    .line 236
    iput-boolean p3, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->required:Z

    .line 237
    iput-boolean p4, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->loggable:Z

    .line 238
    iput-object p5, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->types:[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    .line 239
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 223
    invoke-direct/range {p0 .. p5}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;-><init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTypes()[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->types:[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    return-object v0
.end method

.method public isLoggable()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->loggable:Z

    return v0
.end method

.method public isRequired()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Parameter;->required:Z

    return v0
.end method
