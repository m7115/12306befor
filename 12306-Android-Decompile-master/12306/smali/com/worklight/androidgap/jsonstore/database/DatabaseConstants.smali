.class public Lcom/worklight/androidgap/jsonstore/database/DatabaseConstants;
.super Ljava/lang/Object;
.source "DatabaseConstants.java"


# static fields
.field public static final DB_PATH_EXT:Ljava/lang/String; = ".sqlite"

.field public static final DB_SUB_DIR:Ljava/lang/String; = "wljsonstore"

.field public static final DEFAULT_USERNAME:Ljava/lang/String; = "jsonstore"

.field public static final FIELD_DELETED:Ljava/lang/String; = "_deleted"

.field public static final FIELD_DIRTY:Ljava/lang/String; = "_dirty"

.field public static final FIELD_ID:Ljava/lang/String; = "_id"

.field public static final FIELD_JSON:Ljava/lang/String; = "json"

.field public static final FIELD_OPERATION:Ljava/lang/String; = "_operation"

.field public static final JSONSTORE_PREFS:Ljava/lang/String; = "JsonstorePrefs"

.field public static final JSONSTORE_VERSION_PREF:Ljava/lang/String; = "JsonstoreVer"

.field public static final OLD_DB_PATH:Ljava/lang/String; = "com.ibm.worklight.database"

.field public static final OPERATION_ADD:Ljava/lang/String; = "add"

.field public static final OPERATION_REMOVE:Ljava/lang/String; = "remove"

.field public static final OPERATION_REPLACE:Ljava/lang/String; = "replace"

.field public static final OPERATION_STORE:Ljava/lang/String; = "store"

.field public static final RC_COULD_NOT_MARK_DOCUMENT_PUSHED:I = 0xf

.field public static final RC_DB_NOT_OPEN:I = -0x32

.field public static final RC_DESTROY_FILE_FAILED:I = -0x5

.field public static final RC_DESTROY_KEYS_FAILED:I = -0x4

.field public static final RC_ERROR_CHANGING_PASSWORD:I = 0x18

.field public static final RC_ERROR_CLEARING_COLLECTION:I = 0x1a

.field public static final RC_ERROR_CLOSING_ALL:I = 0x17

.field public static final RC_ERROR_DURING_DESTROY:I = 0x19

.field public static final RC_FIPS_FAILURE:I = -0x28

.field public static final RC_INVALID_SEARCH_FIELD:I = 0x16

.field public static final RC_TABLE_CREATED:I = 0x0

.field public static final RC_TABLE_EXISTS:I = 0x1

.field public static final RC_TABLE_FAILURE:I = -0x1

.field public static final RC_TABLE_KEY_FAILURE:I = -0x3

.field public static final RC_TABLE_SCHEMA_MISMATCH:I = -0x2

.field public static final RC_USERNAME_MISMATCH_DETECTED:I = -0x6


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method
