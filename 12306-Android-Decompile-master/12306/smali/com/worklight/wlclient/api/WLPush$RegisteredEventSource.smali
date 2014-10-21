.class Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;
.super Ljava/lang/Object;
.source "WLPush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/wlclient/api/WLPush;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RegisteredEventSource"
.end annotation


# instance fields
.field private adapter:Ljava/lang/String;

.field private eventSource:Ljava/lang/String;

.field private eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;

.field final synthetic this$0:Lcom/worklight/wlclient/api/WLPush;


# direct methods
.method constructor <init>(Lcom/worklight/wlclient/api/WLPush;)V
    .locals 0
    .parameter

    .prologue
    .line 699
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->this$0:Lcom/worklight/wlclient/api/WLPush;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->adapter:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSource:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;)Lcom/worklight/wlclient/api/WLEventSourceListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;

    return-object v0
.end method


# virtual methods
.method public getAdapter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->adapter:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 714
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSource:Ljava/lang/String;

    return-object v0
.end method

.method public getEventSourceListener()Lcom/worklight/wlclient/api/WLEventSourceListener;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;

    return-object v0
.end method

.method public setAdapter(Ljava/lang/String;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 710
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->adapter:Ljava/lang/String;

    .line 711
    return-void
.end method

.method public setEventSource(Ljava/lang/String;)V
    .locals 0
    .parameter "eventSource"

    .prologue
    .line 718
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSource:Ljava/lang/String;

    .line 719
    return-void
.end method

.method public setEventSourceListener(Lcom/worklight/wlclient/api/WLEventSourceListener;)V
    .locals 0
    .parameter "eventSourceListener"

    .prologue
    .line 726
    iput-object p1, p0, Lcom/worklight/wlclient/api/WLPush$RegisteredEventSource;->eventSourceListener:Lcom/worklight/wlclient/api/WLEventSourceListener;

    .line 727
    return-void
.end method
