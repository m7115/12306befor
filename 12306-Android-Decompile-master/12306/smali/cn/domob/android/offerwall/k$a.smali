.class Lcn/domob/android/offerwall/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/offerwall/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/k;

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/k;Lorg/json/JSONObject;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lcn/domob/android/offerwall/k$a;->a:Lcn/domob/android/offerwall/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/domob/android/offerwall/k$a;->b:I

    const-string v0, "rp_url"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/offerwall/k$a;->c:Ljava/lang/String;

    const-string v0, "name"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/offerwall/k$a;->d:Ljava/lang/String;

    const-string v0, "pkg"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/offerwall/k$a;->e:Ljava/lang/String;

    const-string v0, "file_url"

    invoke-virtual {p2, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/offerwall/k$a;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lcn/domob/android/offerwall/k$a;->b:I

    return v0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/k$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/k$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/k$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/k$a;->f:Ljava/lang/String;

    return-object v0
.end method
