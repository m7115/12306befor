.class public Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
.super Ljava/lang/Object;
.source "DatabaseManager.java"


# static fields
.field private static final SQL_SCHEMA:Ljava/lang/String; = "PRAGMA table_info({0})"

.field private static initialized:Z

.field private static final instance:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

.field private static final logger:Lcom/worklight/androidgap/jsonstore/util/Logger;


# instance fields
.field private accessors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;",
            ">;"
        }
    .end annotation
.end field

.field private database:Lnet/sqlcipher/database/SQLiteDatabase;

.field private databaseKey:Ljava/lang/String;

.field private dbPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->initialized:Z

    .line 33
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->instance:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    .line 34
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->getDatabaseLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->accessors:Ljava/util/HashMap;

    .line 43
    return-void
.end method

.method public static getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->instance:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    return-object v0
.end method

.method private openDatabaseIfNecessary(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 167
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 172
    sget-boolean v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->initialized:Z

    if-nez v1, :cond_0

    .line 173
    invoke-static {p1}, Lnet/sqlcipher/database/SQLiteDatabase;->loadLibs(Landroid/content/Context;)V

    .line 175
    const/4 v1, 0x1

    sput-boolean v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->initialized:Z

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->databaseKey:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 182
    const-string v1, ""

    iput-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->databaseKey:Ljava/lang/String;

    .line 184
    :cond_1
    new-instance v0, Ljava/io/File;

    const-string v1, "wljsonstore"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->dbPath:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 185
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->databaseKey:Ljava/lang/String;

    const/4 v3, 0x0

    const/high16 v4, 0x1000

    invoke-static {v1, v2, v3, v4}, Lnet/sqlcipher/database/SQLiteDatabase;->openDatabase(Ljava/lang/String;Ljava/lang/String;Lnet/sqlcipher/database/SQLiteDatabase$CursorFactory;I)Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 190
    .end local v0           #dbFile:Ljava/io/File;
    :cond_2
    return-void
.end method


# virtual methods
.method public declared-synchronized checkDatabaseAgainstSchema(Landroid/content/Context;Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)Z
    .locals 10
    .parameter "context"
    .parameter "modelName"
    .parameter "schema"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 87
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->openDatabaseIfNecessary(Landroid/content/Context;)V

    .line 92
    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    const-string v7, "PRAGMA table_info({0})"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p2, v8, v9

    invoke-static {v7, v8}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 95
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_2

    .line 96
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 97
    .local v2, numRows:I
    const/4 v3, 0x0

    .line 99
    .local v3, tableSchema:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-lez v2, :cond_0

    .line 100
    new-instance v3, Ljava/util/TreeMap;

    .end local v3           #tableSchema:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 102
    .restart local v3       #tableSchema:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 103
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 105
    const-string v6, "name"

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "type"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1           #i:I
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 113
    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {p3, v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->equals(Ljava/util/TreeMap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    .line 120
    .end local v2           #numRows:I
    .end local v3           #tableSchema:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    monitor-exit p0

    return v4

    .restart local v2       #numRows:I
    .restart local v3       #tableSchema:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move v4, v5

    .line 114
    goto :goto_1

    .end local v2           #numRows:I
    .end local v3           #tableSchema:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move v4, v5

    .line 120
    goto :goto_1

    .line 87
    .end local v0           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public clearDatabaseKey()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->databaseKey:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public clearDbPath()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->dbPath:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public declared-synchronized closeDatabase()V
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v0}, Lnet/sqlcipher/database/SQLiteDatabase;->close()V

    .line 125
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->accessors:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 126
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->database:Lnet/sqlcipher/database/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    monitor-exit p0

    return-void

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroyDatabase(Landroid/content/Context;)I
    .locals 8
    .parameter "context"

    .prologue
    .line 131
    monitor-enter p0

    const/4 v6, 0x0

    .line 132
    .local v6, rc:I
    :try_start_0
    const-string v7, "wljsonstore"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 134
    .local v3, dbBaseDir:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 137
    .local v2, children:[Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 139
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, v0, v4

    .line 140
    .local v1, c:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 141
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_0

    .line 142
    const/4 v6, -0x5

    .line 139
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 149
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #c:Ljava/lang/String;
    .end local v2           #children:[Ljava/lang/String;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    monitor-exit p0

    return v6

    .line 131
    .end local v3           #dbBaseDir:Ljava/io/File;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public declared-synchronized destroyKeychain(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->getInstance(Landroid/content/Context;)Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->destroyKeychain()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroyPreferences(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 157
    monitor-enter p0

    :try_start_0
    const-string v2, "JsonstorePrefs"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 159
    .local v1, sp:Landroid/content/SharedPreferences;
    if-eqz v1, :cond_0

    .line 160
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 161
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    monitor-exit p0

    return-void

    .line 157
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getDatabase(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;
    .locals 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 50
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->accessors:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;

    .line 52
    .local v0, accessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;
    if-nez v0, :cond_0

    .line 53
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not retrieve unprovisioned database \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 56
    :cond_0
    return-object v0
.end method

.method public getDbPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->dbPath:Ljava/lang/String;

    return-object v0
.end method

.method public isDatabaseOpen()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized provisionDatabase(Landroid/content/Context;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Z)Z
    .locals 6
    .parameter "context"
    .parameter "schema"
    .parameter "dropFirst"

    .prologue
    .line 194
    monitor-enter p0

    const/4 v1, 0x0

    .line 195
    .local v1, exists:Z
    :try_start_0
    invoke-virtual {p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v2

    .line 197
    .local v2, name:Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->openDatabaseIfNecessary(Landroid/content/Context;)V

    .line 199
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;

    iget-object v3, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-direct {v0, v3, p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V

    .line 201
    .local v0, accessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 202
    if-eqz p3, :cond_0

    .line 205
    :try_start_1
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->dropTable()V

    .line 208
    :cond_0
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->getTableExists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    const/4 v1, 0x1

    .line 212
    :cond_1
    sget-object v3, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 213
    sget-object v3, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "provisioning database \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "already exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 216
    :cond_2
    if-nez v1, :cond_3

    .line 217
    invoke-virtual {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->createTable()V

    .line 220
    :cond_3
    iget-object v3, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->accessors:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    monitor-exit p0

    return v1

    .line 221
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 194
    .end local v0           #accessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
    .end local v2           #name:Ljava/lang/String;
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public setDatabaseKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "password"
    .parameter "username"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    invoke-static {p1}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->getInstance(Landroid/content/Context;)Lcom/worklight/androidgap/jsonstore/security/SecurityManager;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/worklight/androidgap/jsonstore/security/SecurityManager;->getDPK(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->databaseKey:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setDbPath(Ljava/lang/String;)V
    .locals 2
    .parameter "username"

    .prologue
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".sqlite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->dbPath:Ljava/lang/String;

    .line 77
    return-void
.end method
