.class Lcn/domob/wall/core/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/wall/core/j;

.field private b:I

.field private c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/j;Lorg/json/JSONObject;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 347
    iput-object p1, p0, Lcn/domob/wall/core/j$a;->a:Lcn/domob/wall/core/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    const-string v0, "code"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcn/domob/wall/core/j$a;->b:I

    .line 350
    const-string v0, "text"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/wall/core/j$a;->c:Ljava/lang/String;

    .line 353
    return-void
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcn/domob/wall/core/j$a;->b:I

    return v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcn/domob/wall/core/j$a;->c:Ljava/lang/String;

    return-object v0
.end method
