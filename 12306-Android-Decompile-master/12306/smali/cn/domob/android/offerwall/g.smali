.class Lcn/domob/android/offerwall/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/domob/android/offerwall/g$a;
    }
.end annotation


# instance fields
.field a:Lcn/domob/android/offerwall/m;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Lcn/domob/android/offerwall/g$a;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcn/domob/android/offerwall/g$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/offerwall/g;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/offerwall/g;->a:Lcn/domob/android/offerwall/m;

    iput-object p1, p0, Lcn/domob/android/offerwall/g;->b:Landroid/content/Context;

    iput-object p2, p0, Lcn/domob/android/offerwall/g;->c:Ljava/lang/String;

    iput-object p3, p0, Lcn/domob/android/offerwall/g;->g:Lcn/domob/android/offerwall/g$a;

    return-void
.end method

.method static synthetic a(Lcn/domob/android/offerwall/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/offerwall/g;)Lcn/domob/android/offerwall/g$a;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/g;->g:Lcn/domob/android/offerwall/g$a;

    return-object v0
.end method

.method private f()V
    .locals 7

    iget-object v0, p0, Lcn/domob/android/offerwall/g;->a:Lcn/domob/android/offerwall/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Start Download url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/offerwall/g;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/offerwall/g;->c:Ljava/lang/String;

    iget-object v1, p0, Lcn/domob/android/offerwall/g;->e:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/offerwall/g;->f:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/offerwall/g;->b:Landroid/content/Context;

    new-instance v4, Lcn/domob/android/offerwall/g$1;

    invoke-direct {v4, p0}, Lcn/domob/android/offerwall/g$1;-><init>(Lcn/domob/android/offerwall/g;)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Lcn/domob/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/a/c;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected a()I
    .locals 1

    iget v0, p0, Lcn/domob/android/offerwall/g;->d:I

    return v0
.end method

.method protected a(I)V
    .locals 0

    iput p1, p0, Lcn/domob/android/offerwall/g;->d:I

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/g;->e:Ljava/lang/String;

    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/g;->f:Ljava/lang/String;

    return-void
.end method

.method protected c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected e()V
    .locals 3

    iget-object v0, p0, Lcn/domob/android/offerwall/g;->e:Ljava/lang/String;

    invoke-static {v0}, Lcn/domob/android/offerwall/l;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5e94\u7528"

    iput-object v0, p0, Lcn/domob/android/offerwall/g;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcn/domob/android/offerwall/g;->b:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/offerwall/g;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/domob/android/offerwall/g;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/domob/android/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/domob/android/offerwall/g;->b:Landroid/content/Context;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/domob/android/offerwall/g;->g:Lcn/domob/android/offerwall/g$a;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/domob/android/offerwall/g;->g:Lcn/domob/android/offerwall/g$a;

    invoke-interface {v1, p0}, Lcn/domob/android/offerwall/g$a;->i(Lcn/domob/android/offerwall/g;)V

    :cond_1
    iget-object v1, p0, Lcn/domob/android/offerwall/g;->b:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0}, Lcn/domob/android/offerwall/g;->f()V

    goto :goto_0
.end method
