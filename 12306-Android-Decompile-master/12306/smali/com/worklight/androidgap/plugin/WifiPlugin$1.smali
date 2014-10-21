.class Lcom/worklight/androidgap/plugin/WifiPlugin$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/worklight/androidgap/plugin/WifiPlugin;->scanWifi(Lorg/apache/cordova/api/CallbackContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

.field final synthetic val$callbackContext:Lorg/apache/cordova/api/CallbackContext;


# direct methods
.method constructor <init>(Lcom/worklight/androidgap/plugin/WifiPlugin;Lorg/apache/cordova/api/CallbackContext;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 146
    iput-object p1, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

    iput-object p2, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 149
    iget-object v8, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

    #getter for: Lcom/worklight/androidgap/plugin/WifiPlugin;->ctx:Landroid/content/Context;
    invoke-static {v8}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$000(Lcom/worklight/androidgap/plugin/WifiPlugin;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 152
    :try_start_0
    #calls: Lcom/worklight/androidgap/plugin/WifiPlugin;->isEmulator()Z
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 153
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 154
    .local v6, results:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    const/4 v8, 0x6

    if-ge v4, v8, :cond_2

    .line 156
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$200()Ljava/util/Random;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 157
    .local v5, rand:I
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$300()[Ljava/lang/String;

    move-result-object v8

    aget-object v1, v8, v5

    .line 158
    .local v1, SSID:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$200()Ljava/util/Random;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 159
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$400()[Ljava/lang/String;

    move-result-object v8

    aget-object v0, v8, v5

    .line 160
    .local v0, MAC:Ljava/lang/String;
    invoke-static {}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$200()Ljava/util/Random;

    move-result-object v8

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    .line 161
    if-eqz v5, :cond_0

    mul-int/lit8 v7, v5, 0xa

    .line 163
    .local v7, strength:I
    :goto_1
    #calls: Lcom/worklight/androidgap/plugin/WifiPlugin;->createScanResult(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/ScanResult;
    invoke-static {v1, v0, v7}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$500(Ljava/lang/String;Ljava/lang/String;I)Landroid/net/wifi/ScanResult;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 154
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 161
    .end local v7           #strength:I
    :cond_0
    const/16 v7, 0x1e

    goto :goto_1

    .line 167
    .end local v0           #MAC:Ljava/lang/String;
    .end local v1           #SSID:Ljava/lang/String;
    .end local v4           #i:I
    .end local v5           #rand:I
    .end local v6           #results:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    :cond_1
    iget-object v8, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

    iget-object v8, v8, Lcom/worklight/androidgap/plugin/WifiPlugin;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v6

    .line 169
    .restart local v6       #results:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    :cond_2
    iget-object v8, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->this$0:Lcom/worklight/androidgap/plugin/WifiPlugin;

    #calls: Lcom/worklight/androidgap/plugin/WifiPlugin;->resultToJSONArray(Ljava/lang/Iterable;)Lorg/json/JSONArray;
    invoke-static {v8, v6}, Lcom/worklight/androidgap/plugin/WifiPlugin;->access$600(Lcom/worklight/androidgap/plugin/WifiPlugin;Ljava/lang/Iterable;)Lorg/json/JSONArray;

    move-result-object v2

    .line 171
    .local v2, array:Lorg/json/JSONArray;
    iget-object v8, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    invoke-virtual {v8, v2}, Lorg/apache/cordova/api/CallbackContext;->success(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .end local v2           #array:Lorg/json/JSONArray;
    .end local v6           #results:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/net/wifi/ScanResult;>;"
    :goto_2
    return-void

    .line 173
    :catch_0
    move-exception v3

    .line 174
    .local v3, e:Ljava/lang/Exception;
    const-string v8, "Wifi"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WifiPlugin : Error getting scan results : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v8, p0, Lcom/worklight/androidgap/plugin/WifiPlugin$1;->val$callbackContext:Lorg/apache/cordova/api/CallbackContext;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lorg/apache/cordova/api/CallbackContext;->error(I)V

    goto :goto_2
.end method
