.class public Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
.super Ljava/lang/Object;
.source "DatabaseSchema.java"


# static fields
.field private static final specialChars:[Ljava/lang/String;


# instance fields
.field private internalNodes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private nodes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;",
            ">;"
        }
    .end annotation
.end field

.field private safeNodes:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "@"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "$"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "^"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "&"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "|"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, ">"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "<"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "?"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "-"

    aput-object v2, v0, v1

    sput-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->specialChars:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->name:Ljava/lang/String;

    .line 46
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    .line 47
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    .line 48
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->safeNodes:Ljava/util/TreeMap;

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "_deleted"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->BOOLEAN:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "_dirty"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->NUMBER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "_id"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->INTEGER:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "json"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    const-string v1, "_operation"

    sget-object v2, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->STRING:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0
    .parameter "name"
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-direct {p0, p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->addNodesFromSchema(Lorg/json/JSONObject;)V

    .line 74
    return-void
.end method

.method private addNode(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;)V
    .locals 4
    .parameter "name"
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "invalid node name (null) specified"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 112
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 114
    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ".."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    :cond_1
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid node name (\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "specified"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, nameFixed:Ljava/lang/String;
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 124
    :cond_3
    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "node with name \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "already exists in schema"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v1

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v1, v0, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->safeNodes:Ljava/util/TreeMap;

    invoke-static {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void
.end method

.method private addNodesFromSchema(Lorg/json/JSONObject;)V
    .locals 9
    .parameter "schema"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 135
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 140
    .local v2, keys:Lorg/json/JSONArray;
    if-eqz v2, :cond_1

    .line 141
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 143
    .local v3, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_1

    .line 144
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 148
    .local v5, typeStr:Ljava/lang/String;
    invoke-static {v5}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->fromString(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    move-result-object v4

    .line 150
    .local v4, type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    if-nez v4, :cond_0

    .line 153
    new-instance v6, Ljava/lang/Throwable;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid type \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" for schema node \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    throw v6

    .line 157
    :cond_0
    invoke-direct {p0, v1, v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->addNode(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;)V

    .line 143
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    .end local v5           #typeStr:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private encodeJSONArrayAsString(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "array"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 165
    .local v1, length:I
    const/4 v2, 0x0

    .line 166
    .local v2, result:Ljava/lang/Object;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v3, str:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .end local v2           #result:Ljava/lang/Object;
    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 173
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 175
    .restart local v2       #result:Ljava/lang/Object;
    instance-of v4, v2, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 176
    check-cast v2, Lorg/json/JSONObject;

    .end local v2           #result:Ljava/lang/Object;
    invoke-direct {p0, v2, p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->locateChildInObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 179
    .restart local v2       #result:Ljava/lang/Object;
    :cond_0
    if-eqz v2, :cond_1

    .line 180
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_1

    .line 183
    const-string v4, "-@-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    .end local v2           #result:Ljava/lang/Object;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "name"

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 78
    const/4 v4, 0x0

    .line 89
    :goto_0
    return-object v4

    .line 81
    :cond_0
    sget-object v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->specialChars:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 82
    .local v1, ch:Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {p0, v1, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 87
    .end local v1           #ch:Ljava/lang/String;
    :cond_1
    const/16 v5, 0x2e

    const/16 v6, 0x5f

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, res:Ljava/lang/String;
    goto :goto_0
.end method

.method private getValueFromObjectCaseInsensitive(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .parameter "obj"
    .parameter "path"

    .prologue
    const/4 v4, 0x0

    .line 257
    invoke-virtual {p1}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 260
    .local v2, keys:Lorg/json/JSONArray;
    if-nez v2, :cond_1

    .line 276
    :cond_0
    :goto_0
    return-object v4

    .line 264
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 266
    .local v3, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 267
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 269
    .local v1, key:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 271
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 266
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private locateChildInObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .parameter "obj"
    .parameter "path"

    .prologue
    const/4 v3, 0x0

    .line 280
    const/4 v0, 0x0

    .line 281
    .local v0, childObj:Ljava/lang/Object;
    const/16 v4, 0x2e

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 283
    .local v2, index:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 286
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 288
    if-nez v0, :cond_1

    .line 294
    invoke-direct {p0, p1, p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getValueFromObjectCaseInsensitive(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 338
    .end local v0           #childObj:Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 297
    .restart local v0       #childObj:Ljava/lang/Object;
    :cond_1
    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_0

    .line 299
    :try_start_0
    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #childObj:Ljava/lang/Object;
    invoke-direct {p0, v0, p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->encodeJSONArrayAsString(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v1

    .local v1, e:Lorg/json/JSONException;
    move-object v0, v3

    .line 304
    goto :goto_0

    .line 314
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v0       #childObj:Ljava/lang/Object;
    :cond_2
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p2, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    instance-of v4, v0, Lorg/json/JSONObject;

    if-eqz v4, :cond_3

    .line 317
    check-cast v0, Lorg/json/JSONObject;

    .end local v0           #childObj:Ljava/lang/Object;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->locateChildInObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 321
    .restart local v0       #childObj:Ljava/lang/Object;
    :cond_3
    instance-of v4, v0, Lorg/json/JSONArray;

    if-eqz v4, :cond_4

    .line 322
    check-cast v0, Lorg/json/JSONArray;

    .end local v0           #childObj:Ljava/lang/Object;
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->encodeJSONArrayAsString(Lorg/json/JSONArray;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto :goto_0

    .restart local v0       #childObj:Ljava/lang/Object;
    :cond_4
    move-object v0, v3

    .line 330
    goto :goto_0

    .line 334
    .end local v0           #childObj:Ljava/lang/Object;
    :catch_1
    move-exception v1

    .restart local v1       #e:Lorg/json/JSONException;
    move-object v0, v3

    .line 338
    goto :goto_0
.end method

.method private mergeIntoObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "obj"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 376
    const/16 v3, 0x2e

    invoke-virtual {p2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 378
    .local v2, index:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 381
    invoke-direct {p0, p1, p2, p3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->mergeValues(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    :goto_0
    return-void

    .line 389
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, childKey:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 392
    .local v1, childObj:Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 396
    new-instance v1, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    .end local v1           #childObj:Lorg/json/JSONObject;
    invoke-direct {v1}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>()V

    .line 398
    .restart local v1       #childObj:Lorg/json/JSONObject;
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 401
    :cond_1
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v3, p3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->mergeIntoObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private mergeValues(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5
    .parameter "obj"
    .parameter "key"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 406
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 408
    .local v1, existingValue:Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 411
    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 444
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    instance-of v4, v1, Lorg/json/JSONArray;

    if-eqz v4, :cond_3

    move-object v0, v1

    .line 417
    check-cast v0, Lorg/json/JSONArray;

    .line 418
    .local v0, array:Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 424
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 425
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, p3, :cond_0

    .line 424
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 430
    :cond_2
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 434
    .end local v0           #array:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_3
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;-><init>()V

    .line 439
    .restart local v0       #array:Lorg/json/JSONArray;
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 440
    invoke-virtual {v0, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 442
    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0
.end method

.method private normalizeObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 447
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 448
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    new-instance v2, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;

    invoke-direct {v2}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONObject;-><init>()V

    .line 450
    .local v2, result:Lorg/json/JSONObject;
    if-nez v1, :cond_1

    .line 463
    :cond_0
    return-object v2

    .line 456
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->normalizeOrCopyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->mergeIntoObject(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private normalizeOrCopyObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 467
    instance-of v4, p1, Lorg/json/JSONObject;

    if-eqz v4, :cond_1

    .line 468
    check-cast p1, Lorg/json/JSONObject;

    .end local p1
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->normalizeObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 483
    :cond_0
    :goto_0
    return-object v0

    .line 471
    .restart local p1
    :cond_1
    instance-of v4, p1, Lorg/json/JSONArray;

    if-eqz v4, :cond_2

    .line 472
    new-instance v0, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;

    invoke-direct {v0}, Lcom/worklight/androidgap/jsonstore/util/jackson/JacksonSerializedJSONArray;-><init>()V

    .local v0, array:Lorg/json/JSONArray;
    move-object v1, p1

    .line 473
    check-cast v1, Lorg/json/JSONArray;

    .line 474
    .local v1, existingArray:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 476
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 477
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->normalizeOrCopyObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 476
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #array:Lorg/json/JSONArray;
    .end local v1           #existingArray:Lorg/json/JSONArray;
    .end local v2           #i:I
    .end local v3           #length:I
    :cond_2
    move-object v0, p1

    .line 483
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 195
    instance-of v1, p1, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    if-nez v1, :cond_0

    .line 196
    const/4 v1, 0x0

    .line 203
    :goto_0
    return v1

    :cond_0
    move-object v0, p1

    .line 201
    check-cast v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    .line 203
    .local v0, other:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    iget-object v1, v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    iget-object v2, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v1, v2}, Ljava/util/TreeMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public equals(Ljava/util/TreeMap;)Z
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, dbSchema:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 210
    invoke-virtual {p1}, Ljava/util/TreeMap;->size()I

    move-result v7

    iget-object v8, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v8}, Ljava/util/TreeMap;->size()I

    move-result v8

    iget-object v9, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    invoke-virtual {v9}, Ljava/util/TreeMap;->size()I

    move-result v9

    add-int/2addr v8, v9

    if-eq v7, v8, :cond_1

    .line 252
    :cond_0
    :goto_0
    return v6

    .line 218
    :cond_1
    iget-object v7, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v7}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 219
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/TreeSet;

    invoke-direct {v4}, Ljava/util/TreeSet;-><init>()V

    .line 221
    .local v4, safeNodeNames:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, key:Ljava/lang/String;
    invoke-static {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 229
    .end local v1           #key:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 231
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 232
    .restart local v1       #key:Ljava/lang/String;
    invoke-static {v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->getDatabaseSafeNodeName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    .local v3, safeKey:Ljava/lang/String;
    const/4 v5, 0x0

    .line 235
    .local v5, type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    invoke-virtual {v4, v3}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 236
    iget-object v7, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v7, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    check-cast v5, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    .line 237
    .restart local v5       #type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    if-nez v5, :cond_4

    .line 238
    iget-object v7, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->safeNodes:Ljava/util/TreeMap;

    invoke-virtual {v7, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    check-cast v5, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    .line 246
    .restart local v5       #type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    :cond_4
    :goto_2
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;->getMappedType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 243
    :cond_5
    iget-object v7, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->internalNodes:Ljava/util/TreeMap;

    invoke-virtual {v7, v3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    check-cast v5, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    .restart local v5       #type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    goto :goto_2

    .line 252
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #safeKey:Ljava/lang/String;
    .end local v5           #type:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    :cond_6
    const/4 v6, 0x1

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeNames()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getNodeType(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;
    .locals 1
    .parameter "name"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchemaType;

    return-object v0
.end method

.method public mapObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 7
    .parameter "obj"
    .parameter "addIndexes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 344
    iget-object v6, p0, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->nodes:Ljava/util/TreeMap;

    invoke-virtual {v6}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 346
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/TreeMap;

    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 351
    .local v4, result:Ljava/util/TreeMap;,"Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->normalizeObject(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v3

    .line 353
    .local v3, normalizedObj:Lorg/json/JSONObject;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 354
    .local v1, key:Ljava/lang/String;
    invoke-direct {p0, v3, v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->locateChildInObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 356
    .local v5, value:Ljava/lang/Object;
    if-eqz v5, :cond_1

    .line 357
    invoke-virtual {v4, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    :cond_1
    if-eqz p2, :cond_0

    .line 361
    invoke-direct {p0, p2, v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->locateChildInObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 363
    if-eqz v5, :cond_0

    .line 364
    invoke-virtual {v4, v1, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 369
    .end local v1           #key:Ljava/lang/String;
    .end local v5           #value:Ljava/lang/Object;
    :cond_2
    return-object v4
.end method
