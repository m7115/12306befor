.class public Lcom/worklight/androidgap/plugin/WLOptionsMenu;
.super Ljava/lang/Object;
.source "WLOptionsMenu.java"


# instance fields
.field private activity:Lcom/worklight/androidgap/WLDroidGap;

.field private hasChanged:Z

.field private isEnabled:Z

.field private isInit:Z

.field private isVisible:Z

.field private itemIndexer:I

.field private items:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/worklight/androidgap/plugin/WLMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field private skinName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/worklight/androidgap/WLDroidGap;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isInit:Z

    .line 31
    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isEnabled:Z

    .line 32
    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isVisible:Z

    .line 33
    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->hasChanged:Z

    .line 34
    iput v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->itemIndexer:I

    .line 35
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->skinName:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->activity:Lcom/worklight/androidgap/WLDroidGap;

    .line 38
    iput-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    .line 42
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->activity:Lcom/worklight/androidgap/WLDroidGap;

    .line 43
    return-void
.end method

.method private getItemByJavaScriptId(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WLMenuItem;
    .locals 4
    .parameter "javascriptId"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 164
    const/4 v1, 0x0

    .line 165
    .local v1, item:Lcom/worklight/androidgap/plugin/WLMenuItem;
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/worklight/androidgap/plugin/WLMenuItem;

    .line 166
    .local v2, tempItem:Lcom/worklight/androidgap/plugin/WLMenuItem;
    invoke-virtual {v2}, Lcom/worklight/androidgap/plugin/WLMenuItem;->getJavaScriptId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 167
    move-object v1, v2

    .line 171
    .end local v2           #tempItem:Lcom/worklight/androidgap/plugin/WLMenuItem;
    :cond_1
    return-object v1
.end method

.method private setChanged()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 176
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->hasChanged:Z

    .line 177
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/worklight/androidgap/plugin/WLMenuItem;
    .locals 7
    .parameter "javascriptId"
    .parameter "javascriptCallback"
    .parameter "title"
    .parameter "imagePath"
    .parameter "isEnabled"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->getItemByJavaScriptId(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WLMenuItem;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WL.OptionMenu.addItem failed because an item with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists. Use unique id-s."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 69
    :cond_0
    iget v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->itemIndexer:I

    .line 70
    .local v1, id:I
    iget v2, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->itemIndexer:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->itemIndexer:I

    .line 72
    new-instance v0, Lcom/worklight/androidgap/plugin/WLMenuItem;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/worklight/androidgap/plugin/WLMenuItem;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 73
    .local v0, b:Lcom/worklight/androidgap/plugin/WLMenuItem;
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->setChanged()V

    goto :goto_0
.end method

.method public getItem(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WLMenuItem;
    .locals 3
    .parameter "javascriptId"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 134
    invoke-direct {p0, p1}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->getItemByJavaScriptId(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WLMenuItem;

    move-result-object v0

    .line 135
    .local v0, btn:Lcom/worklight/androidgap/plugin/WLMenuItem;
    if-nez v0, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WL.OptionMenu.getItem failed because an item with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/worklight/common/WLUtils;->error(Ljava/lang/String;)V

    .line 138
    :cond_0
    return-object v0
.end method

.method public getItemById(I)Lcom/worklight/androidgap/plugin/WLMenuItem;
    .locals 3
    .parameter "id"

    .prologue
    .line 128
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/WLMenuItem;

    .line 129
    .local v0, btn:Lcom/worklight/androidgap/plugin/WLMenuItem;
    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/worklight/androidgap/plugin/WLMenuItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 118
    .local v0, buttonList:Ljava/util/List;,"Ljava/util/List<Lcom/worklight/androidgap/plugin/WLMenuItem;>;"
    new-instance v1, Lcom/worklight/androidgap/plugin/WLOptionsMenu$1;

    invoke-direct {v1, p0}, Lcom/worklight/androidgap/plugin/WLOptionsMenu$1;-><init>(Lcom/worklight/androidgap/plugin/WLOptionsMenu;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 124
    return-object v0
.end method

.method public getSkinName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->skinName:Ljava/lang/String;

    return-object v0
.end method

.method public hasChanged()Z
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 143
    iget-boolean v3, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->hasChanged:Z

    if-eqz v3, :cond_0

    .line 151
    :goto_0
    return v2

    .line 146
    :cond_0
    iget-object v3, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/WLMenuItem;

    .line 147
    .local v0, b:Lcom/worklight/androidgap/plugin/WLMenuItem;
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->hasChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 151
    .end local v0           #b:Lcom/worklight/androidgap/plugin/WLMenuItem;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 47
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->activity:Lcom/worklight/androidgap/WLDroidGap;

    const-string v1, "wlSkinName"

    invoke-static {v0, v1}, Lcom/worklight/common/WLUtils;->readWLPref(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->skinName:Ljava/lang/String;

    .line 48
    iput-boolean v2, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isVisible:Z

    .line 49
    iput-boolean v2, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isEnabled:Z

    .line 50
    iput-boolean v3, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->hasChanged:Z

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    .line 52
    iput v3, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->itemIndexer:I

    .line 53
    iput-boolean v2, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isInit:Z

    .line 54
    return-void
.end method

.method public isEnabled()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isEnabled:Z

    return v0
.end method

.method public isInit()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isInit:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isVisible:Z

    return v0
.end method

.method public removeItem(Ljava/lang/String;)V
    .locals 3
    .parameter "javascriptId"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->getItem(Ljava/lang/String;)Lcom/worklight/androidgap/plugin/WLMenuItem;

    move-result-object v0

    .line 82
    .local v0, btn:Lcom/worklight/androidgap/plugin/WLMenuItem;
    if-eqz v0, :cond_0

    .line 83
    iget-object v1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->setChanged()V

    .line 86
    :cond_0
    return-void
.end method

.method public removeItems()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->setChanged()V

    .line 92
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "isEnabled"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 96
    iput-boolean p1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isEnabled:Z

    .line 97
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->setChanged()V

    .line 98
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .parameter "isVisible"
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 107
    iput-boolean p1, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->isVisible:Z

    .line 108
    invoke-direct {p0}, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->setChanged()V

    .line 109
    return-void
.end method

.method public unsetChanged()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 156
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->hasChanged:Z

    .line 157
    iget-object v2, p0, Lcom/worklight/androidgap/plugin/WLOptionsMenu;->items:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/worklight/androidgap/plugin/WLMenuItem;

    .line 158
    .local v0, b:Lcom/worklight/androidgap/plugin/WLMenuItem;
    invoke-virtual {v0}, Lcom/worklight/androidgap/plugin/WLMenuItem;->unsetChanged()V

    goto :goto_0

    .line 160
    .end local v0           #b:Lcom/worklight/androidgap/plugin/WLMenuItem;
    :cond_0
    return-void
.end method
