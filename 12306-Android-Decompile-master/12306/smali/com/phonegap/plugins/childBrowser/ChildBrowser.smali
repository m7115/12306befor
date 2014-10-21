.class public Lcom/phonegap/plugins/childBrowser/ChildBrowser;
.super Lorg/apache/cordova/api/Plugin;
.source "ChildBrowser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$ChildBrowserClient;,
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$DemoJavaScriptInterface;,
        Lcom/phonegap/plugins/childBrowser/ChildBrowser$MyWebViewDownLoadListener;
    }
.end annotation


# static fields
.field private static CLOSE_EVENT:I = 0x0

.field private static DIALOGOK_EVENT:I = 0x0

.field private static LOCATION_CHANGED_EVENT:I = 0x0

.field protected static final LOG_TAG:Ljava/lang/String; = "ChildBrowser"

.field private static ORDERCOMPLETE_EVENT:I

.field private static ORDERLIST_EVENT:I

.field private static event_flag:I


# instance fields
.field private aDialog:Landroid/app/AlertDialog;

.field private appId:Ljava/lang/String;

.field private browserCallbackId:Ljava/lang/String;

.field private counterMsg:Ljava/lang/String;

.field private dialog:Landroid/app/Dialog;

.field private edittext:Landroid/widget/EditText;

.field private interfaceName:Ljava/lang/String;

.field private interfaceVersion:Ljava/lang/String;

.field private mDService:Lcn/domob/wall/core/DService;

.field private mDViewManager:Lcn/domob/ui/DViewManager;

.field private mWallView:Landroid/view/View;

.field private merSignMsg:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private tranData:Ljava/lang/String;

.field private transType:Ljava/lang/String;

.field private webview:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 60
    sput v1, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->CLOSE_EVENT:I

    .line 61
    const/4 v0, 0x1

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->LOCATION_CHANGED_EVENT:I

    .line 63
    sput v1, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->event_flag:I

    .line 64
    const/4 v0, 0x2

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ORDERLIST_EVENT:I

    .line 65
    const/4 v0, 0x3

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ORDERCOMPLETE_EVENT:I

    .line 66
    const/4 v0, 0x4

    sput v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->DIALOGOK_EVENT:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/cordova/api/Plugin;-><init>()V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 76
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceName:Ljava/lang/String;

    .line 77
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceVersion:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->tranData:Ljava/lang/String;

    .line 79
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->merSignMsg:Ljava/lang/String;

    .line 80
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->appId:Ljava/lang/String;

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->transType:Ljava/lang/String;

    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->counterMsg:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$0()I
    .locals 1

    .prologue
    .line 61
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->LOCATION_CHANGED_EVENT:I

    return v0
.end method

.method static synthetic access$1(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Lorg/json/JSONObject;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 616
    invoke-direct {p0, p1, p2}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->sendUpdate(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method static synthetic access$10(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$11(I)V
    .locals 0
    .parameter

    .prologue
    .line 63
    sput p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->event_flag:I

    return-void
.end method

.method static synthetic access$12(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$13(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/EditText;
    .locals 1
    .parameter

    .prologue
    .line 74
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->edittext:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$14(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$15(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceVersion:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$16(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 78
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->tranData:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$17(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 79
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->merSignMsg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$18(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$19(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->transType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 66
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->DIALOGOK_EVENT:I

    return v0
.end method

.method static synthetic access$20(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Lcn/domob/ui/DViewManager;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mDViewManager:Lcn/domob/ui/DViewManager;

    return-object v0
.end method

.method static synthetic access$21(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mWallView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$22(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->mWallView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$23(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V
    .locals 0
    .parameter

    .prologue
    .line 276
    invoke-direct {p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->closeDialog()V

    return-void
.end method

.method static synthetic access$3(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$5(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)Landroid/app/Dialog;
    .locals 1
    .parameter

    .prologue
    .line 70
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$6()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->event_flag:I

    return v0
.end method

.method static synthetic access$7()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ORDERLIST_EVENT:I

    return v0
.end method

.method static synthetic access$8()I
    .locals 1

    .prologue
    .line 65
    sget v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ORDERCOMPLETE_EVENT:I

    return v0
.end method

.method static synthetic access$9(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Landroid/webkit/WebView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput-object p1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->webview:Landroid/webkit/WebView;

    return-void
.end method

.method private closeDialog()V
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 280
    :cond_0
    return-void
.end method

.method private sendUpdate(Lorg/json/JSONObject;Z)V
    .locals 3
    .parameter "obj"
    .parameter "keepCallback"

    .prologue
    .line 617
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 618
    const-string v1, "ChildBrowser"

    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v0, Lorg/apache/cordova/api/PluginResult;

    sget-object v1, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v0, v1, p1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 620
    .local v0, result:Lorg/apache/cordova/api/PluginResult;
    invoke-virtual {v0, p2}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    .line 621
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->success(Lorg/apache/cordova/api/PluginResult;Ljava/lang/String;)V

    .line 623
    .end local v0           #result:Lorg/apache/cordova/api/PluginResult;
    :cond_0
    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Ljava/lang/String;)Lorg/apache/cordova/api/PluginResult;
    .locals 8
    .parameter "action"
    .parameter "args"
    .parameter "callbackId"

    .prologue
    .line 94
    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->OK:Lorg/apache/cordova/api/PluginResult$Status;

    .line 95
    .local v5, status:Lorg/apache/cordova/api/PluginResult$Status;
    const-string v3, ""

    .line 102
    .local v3, result:Ljava/lang/String;
    :try_start_0
    const-string v6, "showWebPage"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 103
    iput-object p3, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 106
    iget-object v6, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 107
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v7, "ChildBrowser is already open"

    invoke-direct {v2, v6, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 183
    :goto_0
    return-object v2

    .line 110
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 112
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_1

    .line 113
    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    .line 114
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    :catch_0
    move-exception v0

    .line 183
    .local v0, e:Lorg/json/JSONException;
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->JSON_EXCEPTION:Lorg/apache/cordova/api/PluginResult$Status;

    invoke-direct {v2, v6}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;)V

    goto :goto_0

    .line 116
    .end local v0           #e:Lorg/json/JSONException;
    :cond_1
    :try_start_1
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 117
    .local v2, pluginResult:Lorg/apache/cordova/api/PluginResult;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    goto :goto_0

    .line 120
    .end local v2           #pluginResult:Lorg/apache/cordova/api/PluginResult;
    :cond_2
    const-string v6, "showAdsView"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 121
    iput-object p3, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 124
    iget-object v6, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->dialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 125
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    sget-object v6, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    const-string v7, "ChildBrowser is already open"

    invoke-direct {v2, v6, v7}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_3
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showAdsWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 130
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 131
    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    .line 132
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_4
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 135
    .restart local v2       #pluginResult:Lorg/apache/cordova/api/PluginResult;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    goto :goto_0

    .line 138
    .end local v2           #pluginResult:Lorg/apache/cordova/api/PluginResult;
    :cond_5
    const-string v6, "openDialog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 139
    iput-object p3, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->browserCallbackId:Ljava/lang/String;

    .line 141
    const/4 v6, 0x1

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->openDialog(Lorg/json/JSONObject;)Ljava/lang/String;

    .line 143
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_6

    .line 144
    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    .line 145
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 147
    :cond_6
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    .line 148
    .restart local v2       #pluginResult:Lorg/apache/cordova/api/PluginResult;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    goto/16 :goto_0

    .line 152
    .end local v2           #pluginResult:Lorg/apache/cordova/api/PluginResult;
    :cond_7
    const-string v6, "updateDialog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 155
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->counterMsg:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->updateDialog(Ljava/lang/String;)Ljava/lang/String;

    .line 181
    .end local v4           #sb:Ljava/lang/StringBuilder;
    :cond_8
    :goto_1
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v3}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 158
    :cond_9
    const-string v6, "closeDialog"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 159
    const-string v6, "ChildBrowser"

    const-string v7, "alert dismiss"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v6, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->cancel()V

    goto :goto_1

    .line 162
    :cond_a
    const-string v6, "close"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 163
    invoke-direct {p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->closeDialog()V

    .line 165
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 166
    .local v1, obj:Lorg/json/JSONObject;
    const-string v6, "type"

    sget v7, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->CLOSE_EVENT:I

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 168
    new-instance v2, Lorg/apache/cordova/api/PluginResult;

    invoke-direct {v2, v5, v1}, Lorg/apache/cordova/api/PluginResult;-><init>(Lorg/apache/cordova/api/PluginResult$Status;Lorg/json/JSONObject;)V

    .line 169
    .restart local v2       #pluginResult:Lorg/apache/cordova/api/PluginResult;
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lorg/apache/cordova/api/PluginResult;->setKeepCallback(Z)V

    goto/16 :goto_0

    .line 172
    .end local v1           #obj:Lorg/json/JSONObject;
    .end local v2           #pluginResult:Lorg/apache/cordova/api/PluginResult;
    :cond_b
    const-string v6, "openExternal"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 173
    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v7

    invoke-virtual {p0, v6, v7}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->openExternal(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_8

    .line 175
    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->ERROR:Lorg/apache/cordova/api/PluginResult$Status;

    .line 177
    goto :goto_1

    .line 179
    :cond_c
    sget-object v5, Lorg/apache/cordova/api/PluginResult$Status;->INVALID_ACTION:Lorg/apache/cordova/api/PluginResult$Status;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public openDialog(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 5
    .parameter "options"

    .prologue
    .line 188
    const-string v4, "message"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 189
    .local v1, message:Ljava/lang/String;
    const-string v4, "buttonText"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, buttonText:Ljava/lang/String;
    const-string v4, "title"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, title:Ljava/lang/String;
    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->counterMsg:Ljava/lang/String;

    .line 192
    new-instance v2, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$1;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    .local v2, runnable:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v4, v2}, Lorg/apache/cordova/api/LegacyContext;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 197
    const-string v4, ""

    return-object v4
.end method

.method public openExternal(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "url"
    .parameter "usePhoneGap"

    .prologue
    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, intent:Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 250
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    iget-object v4, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v4}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lorg/apache/cordova/DroidGap;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 251
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 252
    const-string v3, "url"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v3, "loadUrlTimeoutValue"

    const v4, 0xea60

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 258
    const-string v3, "loadingDialog"

    const-string v4, "Wait,Loading web page..."

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v3, "hideLoadingDialogOnPageLoad"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    :goto_0
    iget-object v3, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v3}, Lorg/apache/cordova/api/LegacyContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    const-string v3, ""

    .line 269
    :goto_1
    return-object v3

    .line 262
    :cond_0
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 263
    .end local v1           #intent:Landroid/content/Intent;
    .local v2, intent:Landroid/content/Intent;
    :try_start_2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, e:Landroid/content/ActivityNotFoundException;
    :goto_2
    const-string v3, "ChildBrowser"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ChildBrowser: Error loading url "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 267
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2           #intent:Landroid/content/Intent;
    .restart local v1       #intent:Landroid/content/Intent;
    goto :goto_2
.end method

.method public showAdsWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2
    .parameter "url"
    .parameter "options"

    .prologue
    .line 482
    new-instance v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;

    invoke-direct {v0, p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$5;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V

    .line 608
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/LegacyContext;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 609
    const-string v1, ""

    return-object v1
.end method

.method public showAndroidDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "buttonText"
    .parameter "buttonClickListener"

    .prologue
    .line 218
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->textView:Landroid/widget/TextView;

    .line 219
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->textView:Landroid/widget/TextView;

    const/high16 v2, 0x4180

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 221
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->textView:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 223
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 224
    .local v0, mBuilder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->textView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->aDialog:Landroid/app/AlertDialog;

    .line 225
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->aDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 226
    return-void
.end method

.method public showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "title"
    .parameter "message"
    .parameter "buttonText"

    .prologue
    .line 201
    new-instance v5, Lcom/phonegap/plugins/childBrowser/ChildBrowser$2;

    invoke-direct {v5, p0}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$2;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->showAndroidDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 216
    return-void
.end method

.method public showWebPage(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .parameter "url"
    .parameter "options"

    .prologue
    .line 291
    if-eqz p2, :cond_0

    .line 292
    const-string v1, "interfaceName"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceName:Ljava/lang/String;

    .line 293
    const-string v1, "interfaceVersion"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceVersion:Ljava/lang/String;

    .line 294
    const-string v1, "tranData"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->tranData:Ljava/lang/String;

    .line 295
    const-string v1, "merSignMsg"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->merSignMsg:Ljava/lang/String;

    .line 296
    const-string v1, "appId"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->appId:Ljava/lang/String;

    .line 297
    const-string v1, "transType"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->transType:Ljava/lang/String;

    .line 298
    const-string v1, "childbrowser-appid"

    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->appId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const-string v1, "childbrowser-interfaceName"

    iget-object v2, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->interfaceName:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :cond_0
    new-instance v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;

    invoke-direct {v0, p0, p1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$4;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V

    .line 475
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/LegacyContext;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 476
    const-string v1, ""

    return-object v1
.end method

.method public updateDialog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "msg"

    .prologue
    .line 230
    new-instance v0, Lcom/phonegap/plugins/childBrowser/ChildBrowser$3;

    invoke-direct {v0, p0, p1}, Lcom/phonegap/plugins/childBrowser/ChildBrowser$3;-><init>(Lcom/phonegap/plugins/childBrowser/ChildBrowser;Ljava/lang/String;)V

    .line 236
    .local v0, runnable:Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/phonegap/plugins/childBrowser/ChildBrowser;->ctx:Lorg/apache/cordova/api/LegacyContext;

    invoke-virtual {v1, v0}, Lorg/apache/cordova/api/LegacyContext;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 237
    const-string v1, ""

    return-object v1
.end method
