.class public interface abstract Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher$ReadableDatabaseAction;
.super Ljava/lang/Object;
.source "DatabaseActionDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/storage/DatabaseActionDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReadableDatabaseAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract performAction(Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/worklight/androidgap/jsonstore/database/DatabaseSchema;",
            "Lcom/worklight/androidgap/jsonstore/database/ReadableDatabase;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
