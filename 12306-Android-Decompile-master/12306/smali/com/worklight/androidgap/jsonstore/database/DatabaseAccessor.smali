.class public interface abstract Lcom/worklight/androidgap/jsonstore/database/DatabaseAccessor;
.super Ljava/lang/Object;
.source "DatabaseAccessor.java"


# virtual methods
.method public abstract getRawDatabase()Lnet/sqlcipher/database/SQLiteDatabase;
.end method

.method public abstract getReadableDatabase()Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;
.end method

.method public abstract getSchema()Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;
.end method

.method public abstract getWritableDatabase()Lcom/worklight/androidgap/jsonstore/database/WritableDatabase;
.end method
