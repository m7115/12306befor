.class Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;
.super Ljava/lang/Object;
.source "MarkCleanActionDispatcher.java"

# interfaces
.implements Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MarkCleanAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private id:I

.field private operation:Ljava/lang/String;

.field final synthetic this$0:Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "operation"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->this$0:Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput p2, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->id:I

    .line 80
    iput-object p3, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->operation:Ljava/lang/String;

    .line 81
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;ILjava/lang/String;Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 74
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;-><init>(Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Integer;
    .locals 7
    .parameter "schema"
    .parameter "db"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const/4 v3, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->operation:Ljava/lang/String;

    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "_id"

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2, v1, v2}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->delete([Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 95
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    .local v0, whereClauses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "_id"

    iget v2, p0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    new-array v1, v3, [Ljava/lang/String;

    const-string v2, "_dirty"

    aput-object v2, v1, v4

    const-string v2, "_deleted"

    aput-object v2, v1, v5

    const-string v2, "_operation"

    aput-object v2, v1, v6

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, ""

    aput-object v3, v2, v6

    invoke-virtual {p2, v1, v2, v0}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->update([Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public bridge synthetic performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher$MarkCleanAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
