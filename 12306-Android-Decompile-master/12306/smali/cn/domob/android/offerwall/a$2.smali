.class Lcn/domob/android/offerwall/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/webkit/DownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/offerwall/a;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/a;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/a;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/a$2;->a:Lcn/domob/android/offerwall/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/a$2;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->e(Lcn/domob/android/offerwall/a;)Lcn/domob/android/offerwall/a$c;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/offerwall/a$2;->a:Lcn/domob/android/offerwall/a;

    invoke-static {v0}, Lcn/domob/android/offerwall/a;->e(Lcn/domob/android/offerwall/a;)Lcn/domob/android/offerwall/a$c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/domob/android/offerwall/a$c;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
