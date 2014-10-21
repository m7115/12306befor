.class public Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;
.source "DatabaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Context"
.end annotation


# instance fields
.field private dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

.field private dbName:Ljava/lang/String;

.field private parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;


# direct methods
.method private constructor <init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)V
    .locals 1
    .parameter "parentContext"

    .prologue
    .line 68
    invoke-virtual {p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;-><init>(Lorg/apache/cordova/api/CordovaInterface;)V

    .line 70
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    .line 71
    return-void
.end method

.method synthetic constructor <init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;-><init>(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->initialize()V

    return-void
.end method

.method private getDatabaseAccessor()Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 79
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getDatabase(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    return-object v0
.end method

.method private initialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 129
    const-string v0, "dbName"

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->dbName:Ljava/lang/String;

    .line 131
    return-void
.end method


# virtual methods
.method public clearDatabase()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getDatabaseAccessor()Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    move-result-object v0

    .line 122
    .local v0, dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
    monitor-enter v0

    .line 123
    :try_start_0
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->dropTable()V

    .line 125
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getArrayParameter(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1
    .parameter "name"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    invoke-virtual {v0, p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getArrayParameter(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->dbName:Ljava/lang/String;

    return-object v0
.end method

.method public getDatabaseSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-result-object v0

    return-object v0
.end method

.method public getFloatParameter(Ljava/lang/String;)F
    .locals 1
    .parameter "name"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    invoke-virtual {v0, p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getFloatParameter(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public getIntParameter(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    invoke-virtual {v0, p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getIntParameter(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .parameter "name"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    invoke-virtual {v0, p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getStringParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    invoke-virtual {v0, p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 117
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->parentContext:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;

    invoke-virtual {v0, p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getUntypedParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public performReadableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;)Ljava/lang/Object;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 135
    .local p1, action:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;,"Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction<TT;>;"
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getDatabaseAccessor()Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    move-result-object v1

    .line 137
    .local v1, dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
    monitor-enter v1

    .line 138
    :try_start_0
    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->getReadableDatabase()Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 141
    .local v0, db:Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
    :try_start_1
    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-result-object v3

    invoke-interface {p1, v3, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    :try_start_2
    monitor-exit v1

    return-object v3

    .line 145
    :catch_0
    move-exception v2

    .line 146
    .local v2, e:Ljava/lang/Throwable;
    throw v2

    .line 148
    .end local v0           #db:Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
    .end local v2           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public performWritableDatabaseAction(Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;)Ljava/lang/Object;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 153
    .local p1, action:Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;,"Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction<TT;>;"
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$Context;->getDatabaseAccessor()Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    move-result-object v1

    .line 155
    .local v1, dbAccessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
    monitor-enter v1

    .line 156
    :try_start_0
    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->getWritableDatabase()Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    move-result-object v0

    .line 157
    .local v0, db:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;
    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->getRawDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .line 160
    .local v3, rawDB:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_start_1
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->beginTransaction()V

    .line 162
    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-result-object v5

    invoke-interface {p1, v5, v0}, Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$WritableDatabaseAction;->performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;)Ljava/lang/Object;

    move-result-object v4

    .line 171
    .local v4, result:Ljava/lang/Object;,"TT;"
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 172
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 183
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v4

    .line 178
    .end local v4           #result:Ljava/lang/Object;,"TT;"
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Ljava/lang/Throwable;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 183
    .end local v2           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v5

    :try_start_4
    invoke-virtual {v3}, Lnet/sqlcipher/database/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 185
    .end local v0           #db:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;
    .end local v3           #rawDB:Lnet/sqlcipher/database/SQLiteDatabase;
    :catchall_1
    move-exception v5

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method
