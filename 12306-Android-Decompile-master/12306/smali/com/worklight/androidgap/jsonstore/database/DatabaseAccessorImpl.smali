.class public Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;
.super Ljava/lang/Object;
.source "DatabaseAccessorImpl.java"

# interfaces
.implements Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;


# static fields
.field private static final SQL_CREATE_TABLE:Ljava/lang/String; = "CREATE TABLE {0} ({1} INTEGER PRIMARY KEY AUTOINCREMENT, {2} {3} TEXT, {4} REAL DEFAULT 0, {5} INTEGER DEFAULT 0, {6} TEXT);"

.field private static final SQL_DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS {0};"

.field private static final SQL_TABLE_EXISTS:Ljava/lang/String; = "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \"{0}\";"

.field private static final ignoredSchemaNodes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final logger:Lcom/worklight/androidgap/jsonstore/util/Logger;


# instance fields
.field private database:Lnet/sqlcipher/database/SQLiteDatabase;

.field private readableDB:Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

.field private schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

.field private writableDB:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    .line 34
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->getDatabaseLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    .line 41
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "_deleted"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "_dirty"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "_id"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "json"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    const-string v1, "_operation"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    return-void
.end method

.method protected constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V
    .locals 1
    .parameter "database"
    .parameter "schema"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 61
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

    invoke-direct {v0, p1, p2}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->readableDB:Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

    .line 62
    iput-object p2, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    .line 63
    new-instance v0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    invoke-direct {v0, p1, p2}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->writableDB:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    .line 64
    return-void
.end method

.method private varargs execSQL(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .parameter "sql"
    .parameter "args"

    .prologue
    .line 130
    invoke-static {p1, p2}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, formattedSQL:Ljava/lang/String;
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "executing SQL on database \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 135
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 138
    :cond_0
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->writableDB:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sqlcipher/database/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 139
    return-void
.end method

.method private formatSchemaColumns()Ljava/lang/String;
    .locals 8

    .prologue
    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v1, result:Ljava/lang/StringBuilder;
    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getNodeNames()Ljava/util/Iterator;

    move-result-object v4

    .line 144
    .local v4, schemaNodeNames:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 149
    .local v5, schemaNodes:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 150
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 152
    .local v3, schemaNodeName:Ljava/lang/String;
    sget-object v6, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->ignoredSchemaNodes:Ljava/util/HashSet;

    invoke-virtual {v6, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 154
    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 161
    .end local v3           #schemaNodeName:Ljava/lang/String;
    :cond_1
    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, schemaNode:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v6, v2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getNodeType(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->getMappedType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v6, ", "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    .end local v2           #schemaNode:Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public createTable()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    .line 106
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    invoke-virtual {v1, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creating database \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 112
    :cond_0
    const-string v1, "CREATE TABLE {0} ({1} INTEGER PRIMARY KEY AUTOINCREMENT, {2} {3} TEXT, {4} REAL DEFAULT 0, {5} INTEGER DEFAULT 0, {6} TEXT);"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-direct {p0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->formatSchemaColumns()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "json"

    aput-object v3, v2, v5

    const/4 v3, 0x4

    const-string v4, "_dirty"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "_deleted"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "_operation"

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public dropTable()V
    .locals 4

    .prologue
    .line 120
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, name:Ljava/lang/String;
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dropping database \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 126
    :cond_0
    const-string v1, "DROP TABLE IF EXISTS {0};"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 127
    return-void
.end method

.method public getRawDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method public getReadableDatabase()Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->readableDB:Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

    return-object v0
.end method

.method public getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    return-object v0
.end method

.method public getTableExists()Z
    .locals 7

    .prologue
    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, result:Z
    const-string v3, "SELECT DISTINCT tbl_name FROM sqlite_master WHERE tbl_name = \"{0}\";"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->readableDB:Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 89
    .local v0, cursor:Landroid/database/Cursor;
    if-eqz v0, :cond_1

    .line 90
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 91
    const/4 v1, 0x1

    .line 94
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_1
    return v1
.end method

.method public getWritableDatabase()Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessorImpl;->writableDB:Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;

    return-object v0
.end method
