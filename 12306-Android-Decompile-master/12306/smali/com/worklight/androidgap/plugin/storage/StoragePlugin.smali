.class public Lcom/worklight/androidgap/plugin/storage/StoragePlugin;
.super Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;
.source "StoragePlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/storage/DispatchingPlugin;-><init>()V

    .line 19
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/AllDirtyActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 20
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/ChangePasswordActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 21
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/CloseDatabaseActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/CloseDatabaseActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 22
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/DestroyDBFileAndKeychainActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/DestroyDBFileAndKeychainActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 23
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/DropTableActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/DropTableActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 24
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/CountActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/CountActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 25
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/FindActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 26
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/FindByIdActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 27
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/IsDirtyActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 28
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/IsKeyGenRequiredActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/IsKeyGenRequiredActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 29
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/LocalCountActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/LocalCountActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 30
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/MarkCleanActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 31
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/ProvisionActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 32
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/RemoveActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 33
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/ReplaceActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 34
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/StoreActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 35
    new-instance v0, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;

    invoke-direct {v0}, Lcom/worklight/androidgap/plugin/storage/StoreDPKActionDispatcher;-><init>()V

    invoke-virtual {p0, v0}, Lcom/worklight/androidgap/plugin/storage/StoragePlugin;->addDispatcher(Lcom/worklight/androidgap/plugin/storage/ActionDispatcher;)V

    .line 36
    return-void
.end method
