.class Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;
.super Ljava/lang/Object;
.source "SimpleQueryActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleQueryAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 74
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->this$0:Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p2, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    .line 76
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;-><init>(Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V

    return-void
.end method


# virtual methods
.method public performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Integer;
    .locals 5
    .parameter "schema"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->this$0:Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;

    iget-object v4, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->context:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;

    invoke-virtual {v3, v4}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;->getFormattedQuery(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, query:Ljava/lang/String;
    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 83
    .local v0, cursor:Landroid/database/Cursor;
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->this$0:Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;

    invoke-virtual {v3}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher;->getNotFoundResultValue()I

    move-result v2

    .line 85
    .local v2, result:I
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 88
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 91
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/SimpleQueryActionDispatcher$SimpleQueryAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
