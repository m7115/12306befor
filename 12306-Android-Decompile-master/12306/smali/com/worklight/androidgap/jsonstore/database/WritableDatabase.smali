.class public Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;
.super Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
.source "WritableDatabase.java"


# static fields
.field private static final SQL_AND:Ljava/lang/String; = " AND"

.field private static final SQL_DELETE:Ljava/lang/String; = "DELETE FROM {0} WHERE {1};"

.field private static final SQL_INSERT:Ljava/lang/String; = "INSERT INTO {0} ({1}) VALUES ({2});"

.field private static final SQL_UPDATE:Ljava/lang/String; = "UPDATE {0} SET {1}{2};"

.field private static final SQL_WHERE:Ljava/lang/String; = " WHERE"


# direct methods
.method protected constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V
    .locals 0
    .parameter "database"
    .parameter "schema"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;-><init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V

    .line 43
    return-void
.end method


# virtual methods
.method public delete([Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 9
    .parameter "whereClause"
    .parameter "whereValues"

    .prologue
    const/4 v8, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-result-object v5

    invoke-virtual {v5}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, dbName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v4, whereClauseStr:Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    array-length v5, p1

    if-ge v5, v8, :cond_2

    .line 62
    :cond_0
    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_1
    iget-object v5, p0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 81
    const-string v5, "DELETE FROM {0} WHERE {1};"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    .local v3, sql:Ljava/lang/String;
    iget-object v5, p0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "executing delete on database \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 86
    iget-object v5, p0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "   "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 87
    iget-object v5, p0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const-string v6, "   args:"

    invoke-virtual {v5, v6}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 89
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_4

    .line 90
    iget-object v5, p0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "      "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 89
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 66
    .end local v2           #i:I
    .end local v3           #sql:Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_1
    array-length v5, p1

    if-ge v2, v5, :cond_1

    .line 67
    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v5, " = ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    array-length v5, p1

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_3

    .line 71
    const-string v5, " AND"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 94
    .end local v2           #i:I
    :cond_4
    array-length v5, p2

    new-array v1, v5, [Ljava/lang/String;

    .line 96
    .local v1, fixedWhereValues:[Ljava/lang/String;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_2
    array-length v5, p2

    if-ge v2, v5, :cond_5

    .line 97
    aget-object v5, p2, v2

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 96
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 100
    :cond_5
    invoke-virtual {p0}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v0, v6, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    return v5
.end method

.method public deleteIfRequired(Lorg/json/JSONObject;ZZ)I
    .locals 22
    .parameter "obj"
    .parameter "isErase"
    .parameter "exact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 116
    move/from16 v10, p2

    .line 117
    .local v10, doErase:Z
    const/16 v21, 0x1

    .line 118
    .local v21, theEasyWay:Z
    const/16 v18, 0x0

    .line 120
    .local v18, result:I
    const/16 v16, 0x0

    .line 123
    .local v16, operation:Ljava/lang/String;
    :try_start_0
    const-string v2, "_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    .line 124
    .local v13, id:I
    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->findOperationForObjectById(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v16

    .line 130
    .end local v13           #id:I
    :goto_0
    if-eqz v21, :cond_2

    .line 131
    if-eqz v16, :cond_0

    const-string v2, "add"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    const/4 v10, 0x1

    .line 135
    :cond_0
    if-eqz v10, :cond_1

    .line 137
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->delete([Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v18

    .line 191
    :goto_1
    return v18

    .line 126
    :catch_0
    move-exception v11

    .line 127
    .local v11, e:Lorg/json/JSONException;
    const/16 v21, 0x0

    goto :goto_0

    .line 141
    .end local v11           #e:Lorg/json/JSONException;
    :cond_1
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_deleted"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_dirty"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_operation"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "remove"

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v3, v1}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->update([Ljava/lang/String;[Ljava/lang/Object;Lorg/json/JSONObject;)I

    move-result v18

    goto :goto_1

    .line 151
    :cond_2
    const/4 v9, 0x0

    .line 152
    .local v9, actionCount:I
    const/16 v17, 0x0

    .line 156
    .local v17, removeSet:Landroid/database/Cursor;
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    const-string v3, "_operation"

    aput-object v3, v4, v2

    const/4 v2, 0x1

    new-array v5, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_deleted = 0"

    aput-object v3, v5, v2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->findUsingQueryObject(Lorg/json/JSONObject;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/database/Cursor;

    move-result-object v17

    .line 162
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v19

    .line 164
    .local v19, setSize:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v19

    if-ge v12, v0, :cond_5

    .line 165
    new-instance v15, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    invoke-direct {v15}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>()V

    .line 167
    .local v15, item:Lorg/json/JSONObject;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    .line 170
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 171
    .local v14, intId:I
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 173
    .local v20, strOp:Ljava/lang/String;
    const-string v2, "add"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_3

    if-eqz p2, :cond_4

    .line 175
    :cond_3
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->delete([Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v18

    .line 184
    :goto_3
    add-int v9, v9, v18

    .line 164
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 178
    :cond_4
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_deleted"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_dirty"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "_operation"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "remove"

    aput-object v5, v3, v4

    const-string v4, "_id"

    invoke-virtual {v15, v4, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->update([Ljava/lang/String;[Ljava/lang/Object;Lorg/json/JSONObject;)I

    move-result v18

    goto :goto_3

    .line 187
    .end local v14           #intId:I
    .end local v15           #item:Lorg/json/JSONObject;
    .end local v20           #strOp:Ljava/lang/String;
    :cond_5
    move/from16 v18, v9

    .line 188
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method public insert(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)J
    .locals 10
    .parameter "nullColumnHack"
    .parameter "columnNames"
    .parameter "columnValues"

    .prologue
    const/4 v8, 0x3

    .line 196
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 197
    .local v1, contentValues:Landroid/content/ContentValues;
    invoke-virtual {p0}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-result-object v6

    invoke-virtual {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, dbName:Ljava/lang/String;
    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    invoke-virtual {v6, v8}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 202
    .local v0, columnsStr:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v5, valuesStr:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, p2

    if-ge v3, v6, :cond_1

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v3

    invoke-static {v7}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    aget-object v6, p3, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    array-length v6, p2

    add-int/lit8 v6, v6, -0x1

    if-ge v3, v6, :cond_0

    .line 211
    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_1
    const-string v6, "INSERT INTO {0} ({1}) VALUES ({2});"

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 219
    .local v4, sql:Ljava/lang/String;
    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "executing insert on database \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 221
    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "   "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 226
    .end local v0           #columnsStr:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v4           #sql:Ljava/lang/String;
    .end local v5           #valuesStr:Ljava/lang/StringBuilder;
    :cond_2
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_1
    array-length v6, p2

    if-ge v3, v6, :cond_3

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v3

    invoke-static {v7}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p3, v3

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 230
    :cond_3
    invoke-virtual {p0}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v2, v7, v1}, Lnet/sqlcipher/database/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    return-wide v6
.end method

.method public insert(Ljava/util/Map;)J
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 234
    .local p1, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    new-array v0, v7, [Ljava/lang/String;

    .line 235
    .local v0, columnNames:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v7

    new-array v1, v7, [Ljava/lang/Object;

    .line 236
    .local v1, columnValues:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 237
    .local v2, i:I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 239
    .local v6, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 240
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 242
    .local v5, key:Ljava/lang/String;
    aput-object v5, v0, v2

    .line 245
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 246
    .local v4, k:Ljava/lang/Object;
    instance-of v7, v4, Ljava/lang/Boolean;

    if-eqz v7, :cond_0

    .line 247
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #k:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 250
    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    aput-object v4, v1, v2

    move v2, v3

    .line 251
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 247
    :cond_1
    const/4 v7, 0x0

    goto :goto_1

    .line 253
    .end local v5           #key:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    invoke-virtual {p0, v7, v0, v1}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->insert(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)J

    move-result-wide v7

    return-wide v7
.end method

.method public update(Ljava/util/Map;Ljava/util/Map;)I
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, columns:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p2, whereClauses:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    new-array v0, v6, [Ljava/lang/String;

    .line 347
    .local v0, columnNames:[Ljava/lang/String;
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    new-array v1, v6, [Ljava/lang/Object;

    .line 348
    .local v1, columnValues:[Ljava/lang/Object;
    const/4 v2, 0x0

    .line 349
    .local v2, i:I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 351
    .local v5, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 352
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 354
    .local v4, key:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v2

    .line 355
    add-int/lit8 v3, v2, 0x1

    .end local v2           #i:I
    .local v3, i:I
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v2

    move v2, v3

    .line 356
    .end local v3           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 358
    .end local v4           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0, v1, p2}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->update([Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)I

    move-result v6

    return v6
.end method

.method public update(Lorg/json/JSONObject;Z)I
    .locals 8
    .parameter "newObj"
    .parameter "markDirty"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 363
    if-eqz p2, :cond_1

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 364
    .local v0, dirtyTime:J
    :goto_0
    const-string v6, "_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 367
    .local v2, id:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 375
    .local v5, whereClauses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "json"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 376
    invoke-virtual {p0}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p1, v7}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->mapObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    .line 381
    .local v3, mappedObj:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "_dirty"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v6, "_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v6, "json"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    invoke-virtual {p0, v2}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->findOperationForObjectById(I)Ljava/lang/String;

    move-result-object v4

    .line 390
    .local v4, operation:Ljava/lang/String;
    if-eqz v4, :cond_0

    const-string v6, "remove"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 394
    :cond_0
    new-instance v6, Ljava/lang/Throwable;

    invoke-direct {v6}, Ljava/lang/Throwable;-><init>()V

    throw v6

    .line 363
    .end local v0           #dirtyTime:J
    .end local v2           #id:I
    .end local v3           #mappedObj:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v4           #operation:Ljava/lang/String;
    .end local v5           #whereClauses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 397
    .restart local v0       #dirtyTime:J
    .restart local v2       #id:I
    .restart local v3       #mappedObj:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v4       #operation:Ljava/lang/String;
    .restart local v5       #whereClauses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    const-string v6, "add"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 398
    const-string v6, "_operation"

    const-string v7, "replace"

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    :cond_3
    const-string v6, "_id"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-virtual {p0, v3, v5}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->update(Ljava/util/Map;Ljava/util/Map;)I

    move-result v6

    return v6
.end method

.method public update([Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)I
    .locals 20
    .parameter "columnNames"
    .parameter "columnValues"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 258
    .local p3, whereClauses:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-result-object v15

    invoke-virtual {v15}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v3

    .line 259
    .local v3, dbName:Ljava/lang/String;
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 260
    .local v11, values:Landroid/content/ContentValues;
    const/4 v12, 0x0

    .line 261
    .local v12, whereClause:Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    .line 265
    .local v14, whereValues:[Ljava/lang/String;
    if-eqz p3, :cond_1

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v15

    if-lez v15, :cond_1

    .line 266
    const/4 v4, 0x0

    .line 267
    .local v4, i:I
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 273
    .local v8, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    .end local v12           #whereClause:Ljava/lang/StringBuilder;
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .restart local v12       #whereClause:Ljava/lang/StringBuilder;
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v15

    new-array v14, v15, [Ljava/lang/String;

    .line 276
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    .line 277
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 279
    .local v7, key:Ljava/lang/String;
    const/16 v15, 0x20

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    const-string v15, " = ?"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    .line 284
    const-string v15, " AND"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    :cond_0
    add-int/lit8 v5, v4, 0x1

    .end local v4           #i:I
    .local v5, i:I
    move-object/from16 v0, p3

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v14, v4

    move v4, v5

    .line 288
    .end local v5           #i:I
    .restart local v4       #i:I
    goto :goto_0

    .line 291
    .end local v4           #i:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/16 v16, 0x3

    invoke-virtual/range {v15 .. v16}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 292
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v2, columnsStr:Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_1
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v4, v15, :cond_3

    .line 298
    aget-object v15, p1, v4

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string v15, " = "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    aget-object v15, p2, v4

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 302
    move-object/from16 v0, p1

    array-length v15, v0

    add-int/lit8 v15, v15, -0x1

    if-ge v4, v15, :cond_2

    .line 303
    const-string v15, ", "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 307
    :cond_3
    const-string v16, "UPDATE {0} SET {1}{2};"

    const/4 v15, 0x3

    new-array v0, v15, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/4 v15, 0x0

    aput-object v3, v17, v15

    const/4 v15, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v15

    const/16 v18, 0x2

    if-nez v12, :cond_4

    const-string v15, ""

    :goto_2
    aput-object v15, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 311
    .local v10, sql:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "executing update on database \""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\":"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "   sql: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const-string v16, "   arguments:"

    invoke-virtual/range {v15 .. v16}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 316
    move-object v1, v14

    .local v1, arr$:[Ljava/lang/String;
    array-length v9, v1

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_3
    if-ge v6, v9, :cond_5

    aget-object v13, v1, v6

    .line 317
    .local v13, whereValue:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "      "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 316
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 307
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v9           #len$:I
    .end local v10           #sql:Ljava/lang/String;
    .end local v13           #whereValue:Ljava/lang/String;
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, " WHERE"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_2

    .line 321
    .end local v2           #columnsStr:Ljava/lang/StringBuilder;
    .end local v4           #i:I
    :cond_5
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_4
    move-object/from16 v0, p1

    array-length v15, v0

    if-ge v4, v15, :cond_6

    .line 322
    aget-object v15, p1, v4

    aget-object v16, p2, v4

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v11, v15, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 325
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;

    move-result-object v16

    if-nez v12, :cond_7

    const/4 v15, 0x0

    :goto_5
    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v11, v15, v14}, Lnet/sqlcipher/database/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v15

    return v15

    :cond_7
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_5
.end method

.method public update([Ljava/lang/String;[Ljava/lang/Object;Lorg/json/JSONObject;)I
    .locals 4
    .parameter "columnNames"
    .parameter "columnValues"
    .parameter "whereClauses"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 331
    invoke-virtual {p3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 332
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v2, newWhereClauses:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 336
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 338
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 341
    .end local v0           #key:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, p1, p2, v2}, Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;->update([Ljava/lang/String;[Ljava/lang/Object;Ljava/util/Map;)I

    move-result v3

    return v3
.end method
