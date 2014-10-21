.class public Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
.super Ljava/lang/Object;
.source "ReadableDatabase.java"


# static fields
.field private static final SQL_AND:Ljava/lang/String; = " AND "

.field private static final SQL_EQ:Ljava/lang/String; = " = ?"

.field private static final SQL_FIND:Ljava/lang/String; = "SELECT {0} FROM {1};"

.field private static final SQL_FIND_BY_ID:Ljava/lang/String; = "SELECT {0}, {1} FROM {2} WHERE {3} AND _deleted = 0"

.field private static final SQL_FIND_OP:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} LIKE ?"

.field private static final SQL_FIND_WHERE:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2};"

.field private static final SQL_FIND_WHERE_WITH_LIMIT:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} LIMIT {3};"

.field private static final SQL_FIND_WHERE_WITH_LIMIT_AND_OFFSET:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} LIMIT {3} OFFSET {4};"

.field private static final SQL_FIND_WHERE_WITH_NEGATIVE_LIMIT:Ljava/lang/String; = "SELECT {0} FROM {1} WHERE {2} ORDER BY {3} DESC LIMIT {4};"

.field private static final SQL_LIKE:Ljava/lang/String; = " LIKE ?"

.field private static final SQL_OR:Ljava/lang/String; = " OR "


# instance fields
.field private database:Lnet/sqlcipher/database/SQLiteDatabase;

.field protected logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

.field private schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;


# direct methods
.method protected constructor <init>(Lnet/sqlcipher/database/SQLiteDatabase;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)V
    .locals 1
    .parameter "database"
    .parameter "schema"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    .line 54
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->getDatabaseLogger()Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    .line 55
    iput-object p2, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    .line 56
    return-void
.end method


# virtual methods
.method public varargs findByIds([I)Landroid/database/Cursor;
    .locals 7
    .parameter "ids"

    .prologue
    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .local v1, idsStr:Ljava/lang/StringBuilder;
    array-length v3, p1

    new-array v2, v3, [Ljava/lang/String;

    .line 70
    .local v2, selections:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_1

    .line 71
    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, " = ?"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 75
    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 81
    :cond_1
    const-string v3, "SELECT {0}, {1} FROM {2} WHERE {3} AND _deleted = 0"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "json"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    return-object v3
.end method

.method protected findOperationForObjectById(I)Ljava/lang/String;
    .locals 8
    .parameter "id"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 88
    const-string v2, "SELECT {0} FROM {1} WHERE {2} LIKE ?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "_operation"

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, "_id"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v7, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {p0, v2, v3}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 94
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-ge v2, v7, :cond_0

    .line 95
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    const/4 v1, 0x0

    .line 106
    :goto_0
    return-object v1

    .line 100
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 102
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 104
    .local v1, result:Ljava/lang/String;
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public findUsingQueryObject(Lorg/json/JSONObject;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)Landroid/database/Cursor;
    .locals 21
    .parameter "queryObj"
    .parameter "fieldsToSelect"
    .parameter "extraWhereClauses"
    .parameter "limit"
    .parameter "offset"
    .parameter "exact"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 121
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .local v4, fieldSelect:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->length()I

    move-result v8

    .line 123
    .local v8, length:I
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .local v11, selectionArgs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v12, 0x0

    .line 125
    .local v12, sql:Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v15, whereClause:Ljava/lang/StringBuilder;
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    if-nez v17, :cond_3

    .line 132
    :cond_0
    const/16 v17, 0x2a

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 147
    :cond_1
    if-eqz p3, :cond_5

    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_5

    .line 148
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_5

    .line 149
    aget-object v17, p3, v5

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v5, v0, :cond_2

    .line 152
    const-string v17, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 136
    .end local v5           #i:I
    :cond_3
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v5, v0, :cond_1

    .line 137
    aget-object v17, p2, v5

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v5, v0, :cond_4

    .line 140
    const-string v17, ", "

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 157
    .end local v5           #i:I
    :cond_5
    if-nez v8, :cond_a

    .line 163
    :try_start_0
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 168
    .local v9, limitInt:I
    :goto_2
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_9

    .line 169
    const-string v16, ""

    .line 170
    .local v16, whereTemplate:Ljava/lang/String;
    if-nez p4, :cond_6

    .line 172
    const-string v16, "SELECT {0} FROM {1} WHERE {2};"

    .line 173
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 383
    .end local v16           #whereTemplate:Ljava/lang/String;
    :goto_3
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    .line 385
    .local v13, str:[Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v12, v1}, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    return-object v17

    .line 164
    .end local v9           #limitInt:I
    .end local v13           #str:[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 165
    .local v3, e:Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    .restart local v9       #limitInt:I
    goto :goto_2

    .line 181
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v16       #whereTemplate:Ljava/lang/String;
    :cond_6
    if-eqz p5, :cond_7

    .line 183
    const-string v16, "SELECT {0} FROM {1} WHERE {2} LIMIT {3} OFFSET {4};"

    .line 184
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    aput-object p4, v17, v18

    const/16 v18, 0x4

    aput-object p5, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto :goto_3

    .line 187
    :cond_7
    if-gez v9, :cond_8

    .line 189
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 190
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 192
    const-string v16, "SELECT {0} FROM {1} WHERE {2} ORDER BY {3} DESC LIMIT {4};"

    .line 193
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    const-string v19, "_id"

    aput-object v19, v17, v18

    const/16 v18, 0x4

    aput-object p4, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 199
    :cond_8
    const-string v16, "SELECT {0} FROM {1} WHERE {2} LIMIT {3};"

    .line 200
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x3

    aput-object p4, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 210
    .end local v16           #whereTemplate:Ljava/lang/String;
    :cond_9
    const-string v17, "SELECT {0} FROM {1};"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 218
    .end local v9           #limitInt:I
    :cond_a
    :try_start_1
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v9

    .line 222
    .restart local v9       #limitInt:I
    :goto_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v2, clause:Ljava/lang/StringBuilder;
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 227
    .local v7, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-nez v17, :cond_e

    .line 228
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 229
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 230
    .local v6, key:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 232
    .local v14, value:Ljava/lang/Object;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    const-string v17, " LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_b

    .line 236
    const-string v17, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :cond_b
    instance-of v0, v14, Ljava/lang/Boolean;

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 240
    check-cast v14, Ljava/lang/Boolean;

    .end local v14           #value:Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    :goto_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 243
    :cond_c
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 219
    .end local v2           #clause:Ljava/lang/StringBuilder;
    .end local v6           #key:Ljava/lang/String;
    .end local v7           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    .end local v9           #limitInt:I
    :catch_1
    move-exception v3

    .line 220
    .restart local v3       #e:Ljava/lang/NumberFormatException;
    const/4 v9, 0x0

    .restart local v9       #limitInt:I
    goto/16 :goto_4

    .line 240
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v2       #clause:Ljava/lang/StringBuilder;
    .restart local v6       #key:Ljava/lang/String;
    .restart local v7       #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_d
    const/16 v17, 0x0

    goto :goto_6

    .line 246
    .end local v6           #key:Ljava/lang/String;
    :cond_e
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11

    .line 247
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 249
    .restart local v6       #key:Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 250
    .restart local v14       #value:Ljava/lang/Object;
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "["

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "]"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 252
    .local v10, safeKey:Ljava/lang/String;
    instance-of v0, v14, Ljava/lang/Boolean;

    move/from16 v17, v0

    if-eqz v17, :cond_f

    .line 253
    check-cast v14, Ljava/lang/Boolean;

    .end local v14           #value:Ljava/lang/Object;
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    if-eqz v17, :cond_10

    const/16 v17, 0x1

    :goto_8
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 256
    :cond_f
    const-string v17, " ( "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    const-string v17, " = ?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    const-string v17, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    const-string v17, " LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v17, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v17, " LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    const-string v17, " OR "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    const-string v17, " LIKE ?"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "%-@-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "%-@-"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-@-%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-@-%"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    const-string v17, " ) "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_e

    .line 345
    const-string v17, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_7

    .line 253
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 351
    .end local v6           #key:Ljava/lang/String;
    .end local v10           #safeKey:Ljava/lang/String;
    :cond_11
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->length()I

    move-result v17

    if-lez v17, :cond_12

    .line 352
    const-string v17, " AND "

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 356
    :cond_12
    if-nez p4, :cond_13

    .line 357
    const-string v17, "SELECT {0} FROM {1} WHERE {2};"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 363
    :cond_13
    if-eqz p5, :cond_14

    .line 364
    const-string v17, "SELECT {0} FROM {1} WHERE {2} LIMIT {3} OFFSET {4};"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object p4, v18, v19

    const/16 v19, 0x4

    aput-object p5, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 367
    :cond_14
    if-gez v9, :cond_15

    .line 368
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    .line 369
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    .line 371
    const-string v17, "SELECT {0} FROM {1} WHERE {2} ORDER BY {3} DESC LIMIT {4};"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    const-string v20, "_id"

    aput-object v20, v18, v19

    const/16 v19, 0x4

    aput-object p4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3

    .line 376
    :cond_15
    const-string v17, "SELECT {0} FROM {1} WHERE {2} LIMIT {3};"

    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x3

    aput-object p4, v18, v19

    invoke-static/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/JsonstoreUtil;->formatString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_3
.end method

.method protected getDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    return-object v0
.end method

.method protected getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    return-object v0
.end method

.method public rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "sql"
    .parameter "selectionArgs"

    .prologue
    .line 389
    iget-object v4, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 390
    iget-object v4, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "executing query on database \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    invoke-virtual {v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 392
    iget-object v4, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 394
    if-eqz p2, :cond_0

    .line 395
    iget-object v4, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const-string v5, "arguments:"

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 397
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 398
    .local v3, selectionArg:Ljava/lang/String;
    iget-object v4, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "   "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 397
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 403
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #selectionArg:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;->database:Lnet/sqlcipher/database/SQLiteDatabase;

    invoke-virtual {v4, p1, p2}, Lnet/sqlcipher/database/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    return-object v4
.end method
