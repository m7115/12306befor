.class public Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;
.super Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;
.source "ProvisionActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;
    }
.end annotation


# static fields
.field private static final OPTION_ADD_INDEXES:Ljava/lang/String; = "additionalSearchFields"

.field private static final OPTION_DROP_COLLECTION:Ljava/lang/String; = "dropCollection"

.field private static final OPTION_FIPS_ENABLED:Ljava/lang/String; = "fipsEnabled"

.field private static final OPTION_PASSWORD:Ljava/lang/String; = "collectionPassword"

.field private static final OPTION_USERNAME:Ljava/lang/String; = "username"

.field private static final PARAM_DBNAME:Ljava/lang/String; = "dbName"

.field private static final PARAM_OPTIONS:Ljava/lang/String; = "options"

.field private static final PARAM_SCHEMA:Ljava/lang/String; = "schema"


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    const-string v0, "provision"

    invoke-direct {p0, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher;-><init>(Ljava/lang/String;)V

    .line 45
    const-string v0, "dbName"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->STRING:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 47
    const-string v0, "schema"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->addParameter(Ljava/lang/String;Z[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 50
    const-string v0, "options"

    new-array v1, v3, [Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    sget-object v2, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;->OBJECT:Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->addParameter(Ljava/lang/String;ZZ[Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$ParameterType;)V

    .line 52
    return-void
.end method

.method private checkVersionMigration(Landroid/content/Context;)V
    .locals 12
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 56
    const-string v10, "JsonstorePrefs"

    const/4 v11, 0x0

    invoke-virtual {p1, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 58
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v10, "JsonstoreVer"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, ver:Ljava/lang/String;
    if-nez v9, :cond_2

    .line 63
    iget-object v10, p0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const-string v11, "Performing migration to JSONStore 2.0"

    invoke-virtual {v10, v11}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logInfo(Ljava/lang/String;)V

    .line 66
    const-string v10, "wljsonstore"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 67
    .local v0, dbBaseDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v5

    .line 70
    .local v5, mkdirWorked:Z
    if-nez v5, :cond_0

    .line 71
    const-string v7, "Unable to create jsonstore directory"

    .line 72
    .local v7, msg:Ljava/lang/String;
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 73
    .local v2, e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    invoke-virtual {v10, v7, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    throw v2

    .line 79
    .end local v2           #e:Ljava/lang/Exception;
    .end local v5           #mkdirWorked:Z
    .end local v7           #msg:Ljava/lang/String;
    :cond_0
    const-string v10, "com.ibm.worklight.database"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 80
    .local v1, dbFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 82
    new-instance v10, Ljava/io/File;

    const-string v11, "jsonstore.sqlite"

    invoke-direct {v10, v0, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v6

    .line 84
    .local v6, moveWorked:Z
    if-eqz v6, :cond_3

    .line 85
    iget-object v10, p0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    const-string v11, "Migration to JSONStore 2.0 successful"

    invoke-virtual {v10, v11}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logInfo(Ljava/lang/String;)V

    .line 95
    .end local v6           #moveWorked:Z
    :cond_1
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 96
    .local v3, editor:Landroid/content/SharedPreferences$Editor;
    const-string v10, "JsonstoreVer"

    const-string v11, "2.0"

    invoke-interface {v3, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 97
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    .end local v0           #dbBaseDir:Ljava/io/File;
    .end local v1           #dbFile:Ljava/io/File;
    .end local v3           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    return-void

    .line 87
    .restart local v0       #dbBaseDir:Ljava/io/File;
    .restart local v1       #dbFile:Ljava/io/File;
    .restart local v6       #moveWorked:Z
    :cond_3
    const-string v4, "Unable to migrate existing JSONStore database to version 2.0"

    .line 88
    .local v4, m:Ljava/lang/String;
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v2       #e:Ljava/lang/Exception;
    iget-object v10, p0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    invoke-virtual {v10, v4, v2}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 90
    throw v2
.end method

.method private getDatabaseName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 102
    const-string v0, "dbName"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getStringParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOptions(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/json/JSONObject;
    .locals 1
    .parameter "context"

    .prologue
    .line 107
    const-string v0, "options"

    invoke-virtual {p1, v0}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method private getSchema(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 7
    .parameter "context"
    .parameter "addIndexes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 113
    const-string v6, "schema"

    invoke-virtual {p1, v6}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getObjectParameter(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 116
    .local v4, schema:Lorg/json/JSONObject;
    if-eqz p2, :cond_0

    .line 118
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v3

    .line 122
    .local v3, names:Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    .line 123
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v1

    .line 125
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 126
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, value:Ljava/lang/String;
    invoke-virtual {v4, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 134
    .end local v0           #i:I
    .end local v1           #length:I
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #names:Lorg/json/JSONArray;
    .end local v5           #value:Ljava/lang/String;
    :cond_0
    return-object v4
.end method

.method private isSchemaMismatched(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Z
    .locals 4
    .parameter "dbName"
    .parameter "requestedSchema"
    .parameter "context"

    .prologue
    .line 139
    const/4 v0, 0x0

    .line 140
    .local v0, accessor:Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    move-result-object v1

    .line 147
    .local v1, dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getDatabase(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 162
    invoke-interface {v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;->getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    .line 150
    :catch_0
    move-exception v2

    .line 155
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {p3}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3, p1, p2}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->checkDatabaseAgainstSchema(Landroid/content/Context;Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;)Z

    move-result v3

    goto :goto_0

    .line 162
    .end local v2           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatch(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/apache/cordova/api/PluginResult;
    .locals 20
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v3, 0x0

    .line 169
    .local v3, addIndexes:Lorg/json/JSONObject;
    invoke-direct/range {p0 .. p1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->getDatabaseName(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Ljava/lang/String;

    move-result-object v5

    .line 170
    .local v5, dbName:Ljava/lang/String;
    const/4 v6, 0x0

    .line 171
    .local v6, dropFirst:Z
    const/4 v8, 0x0

    .line 172
    .local v8, fipsEnabled:Z
    invoke-direct/range {p0 .. p1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->getOptions(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Lorg/json/JSONObject;

    move-result-object v10

    .line 173
    .local v10, options:Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 174
    .local v11, password:Ljava/lang/String;
    const/16 v16, 0x0

    .line 175
    .local v16, username:Ljava/lang/String;
    const/4 v12, 0x0

    .line 176
    .local v12, returnCode:I
    const/4 v13, 0x0

    .line 180
    .local v13, schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    if-eqz v10, :cond_1

    .line 181
    const-string v17, "additionalSearchFields"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 183
    const-string v17, "dropCollection"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 185
    const-string v17, "fipsEnabled"

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 187
    const-string v17, "collectionPassword"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 189
    const-string v17, "username"

    const-string v18, "jsonstore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const/16 v18, 0x3

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   additionalSearchFields="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   fipsEnabled="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   dropCollection="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   username="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v18, v0

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "   collectionPassword="

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    if-eqz v11, :cond_0

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    :cond_0
    const-string v17, "[]"

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logDebug(Ljava/lang/String;)V

    .line 207
    :cond_1
    :try_start_0
    new-instance v14, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->getSchema(Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v14, v5, v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;-><init>(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    .end local v13           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .local v14, schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->checkVersionMigration(Landroid/content/Context;)V

    .line 221
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getInstance()Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;

    move-result-object v4

    .line 223
    .local v4, dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    if-nez v16, :cond_4

    .line 225
    invoke-virtual {v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getDbPath()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_2

    .line 227
    const-string v17, "jsonstore.sqlite"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->setDbPath(Ljava/lang/String;)V

    .line 230
    :cond_2
    invoke-virtual {v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getDbPath()Ljava/lang/String;

    move-result-object v17

    const-string v18, "jsonstore.sqlite"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 233
    new-instance v17, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;

    const-string v18, "You tried to login with a user that is not the default user in, closeAll first"

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;-><init>(Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;Ljava/lang/String;)V

    throw v17
    :try_end_1
    .catch Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    .line 318
    .end local v4           #dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    :catch_0
    move-exception v7

    .line 319
    .local v7, e:Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, -0x6

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    move-object v13, v14

    .line 339
    .end local v7           #e:Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;
    .end local v14           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v13       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :goto_1
    return-object v17

    .line 199
    :cond_3
    const-string v17, "xxxxxxxx"

    goto :goto_0

    .line 211
    :catch_1
    move-exception v7

    .line 213
    .local v7, e:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const-string v18, "Error validating schema"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    goto :goto_1

    .line 239
    .end local v7           #e:Ljava/lang/Throwable;
    .end local v13           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v4       #dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    .restart local v14       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :cond_4
    :try_start_2
    invoke-virtual {v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getDbPath()Ljava/lang/String;

    move-result-object v17

    if-nez v17, :cond_8

    .line 241
    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->setDbPath(Ljava/lang/String;)V

    .line 250
    :cond_5
    if-eqz v11, :cond_a

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v17

    if-nez v17, :cond_a

    .line 252
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v8, v0, :cond_9

    .line 254
    :try_start_3
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->getFipsMode()I

    move-result v15

    .line 256
    .local v15, success:I
    if-nez v15, :cond_6

    .line 257
    invoke-static {}, Lcom/worklight/androidgap/jsonstore/security/FipsWrapper;->enableFips()I

    move-result v15

    .line 260
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const/16 v18, 0x4

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->isLoggable(I)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "FIPS Enabled: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logInfo(Ljava/lang/String;)V

    .line 264
    :cond_7
    if-nez v15, :cond_9

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const-string v18, "Error fips was unable to enable successfully"

    invoke-virtual/range {v17 .. v18}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;)V

    .line 266
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, -0x28

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException; {:try_start_3 .. :try_end_3} :catch_0

    move-object v13, v14

    .end local v14           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v13       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    goto/16 :goto_1

    .line 243
    .end local v13           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .end local v15           #success:I
    .restart local v14       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :cond_8
    :try_start_4
    invoke-virtual {v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getDbPath()Ljava/lang/String;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ".sqlite"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 245
    new-instance v17, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "You tried to login with a user that is not "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v4}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getDbPath()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "closeAll first"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException;-><init>(Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;Ljava/lang/String;)V

    throw v17
    :try_end_4
    .catch Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    .line 323
    .end local v4           #dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    :catch_2
    move-exception v7

    .line 324
    .restart local v7       #e:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const-string v18, "Error during provision"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 326
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    .line 328
    .local v9, msg:Ljava/lang/String;
    const-string v17, "file is encrypted"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_d

    .line 329
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, -0x3

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    move-object v13, v14

    .end local v14           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v13       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    goto/16 :goto_1

    .line 268
    .end local v7           #e:Ljava/lang/Throwable;
    .end local v9           #msg:Ljava/lang/String;
    .end local v13           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v4       #dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    .restart local v14       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :catch_3
    move-exception v7

    .line 270
    .restart local v7       #e:Ljava/lang/Throwable;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const-string v18, "Error cannot enable fips without proper libraries"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 271
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, -0x28

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V
    :try_end_5
    .catch Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    move-object v13, v14

    .end local v14           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v13       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    goto/16 :goto_1

    .line 276
    .end local v7           #e:Ljava/lang/Throwable;
    .end local v13           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v14       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :cond_9
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v4, v0, v11, v1}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->setDatabaseKey(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException; {:try_start_6 .. :try_end_6} :catch_0

    .line 293
    :cond_a
    if-nez v6, :cond_b

    :try_start_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v5, v14, v1}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->isSchemaMismatched(Ljava/lang/String;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 298
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, -0x2

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    move-object v13, v14

    .end local v14           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v13       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    goto/16 :goto_1

    .line 283
    .end local v13           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v14       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :catch_4
    move-exception v7

    .line 287
    .restart local v7       #e:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;->logger:Lcom/worklight/androidgap/jsonstore/util/Logger;

    move-object/from16 v17, v0

    const-string v18, "Error setting key"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v7}, Lcom/worklight/androidgap/jsonstore/util/Logger;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, -0x3

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    move-object v13, v14

    .end local v14           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v13       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    goto/16 :goto_1

    .line 302
    .end local v7           #e:Ljava/lang/Throwable;
    .end local v13           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v14       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :cond_b
    invoke-virtual/range {p1 .. p1}, Lcom/worklight/androidgap/plugin/storage/BaseActionDispatcher$Context;->getCordovaContext()Lorg/apache/cordova/api/CordovaInterface;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lorg/apache/cordova/api/CordovaInterface;->getActivity()Landroid/app/Activity;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0, v14, v6}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->provisionDatabase(Landroid/content/Context;Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Z)Z
    :try_end_7
    .catch Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move-result v17

    if-eqz v17, :cond_c

    .line 307
    const/4 v12, 0x1

    .line 339
    :goto_2
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v12}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    move-object v13, v14

    .end local v14           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v13       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    goto/16 :goto_1

    .line 314
    .end local v13           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v14       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    :cond_c
    :try_start_8
    invoke-virtual {v4, v5}, Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;->getDatabase(Ljava/lang/String;)Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;->getReadableDatabase()Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
    :try_end_8
    .catch Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher$CloseAllException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 334
    .end local v4           #dbManager:Lcom/worklight/androidgap/jsonstore/database/DatabaseManager;
    .restart local v7       #e:Ljava/lang/Throwable;
    .restart local v9       #msg:Ljava/lang/String;
    :cond_d
    new-instance v17, Lorg/apache/cordova/api/PluginResult;

    sget-object v18, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const/16 v19, -0x1

    invoke-direct/range {v17 .. v19}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;I)V

    move-object v13, v14

    .end local v14           #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    .restart local v13       #schema:Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
    goto/16 :goto_1
.end method
