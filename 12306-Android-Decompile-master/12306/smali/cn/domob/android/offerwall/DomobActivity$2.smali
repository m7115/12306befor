.class Lcn/domob/android/offerwall/DomobActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/offerwall/DomobActivity;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/DomobActivity;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/DomobActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/DomobActivity$2;->a:Lcn/domob/android/offerwall/DomobActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    sget-object v0, Lcn/domob/android/a/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/offerwall/DomobActivity$2;->a:Lcn/domob/android/offerwall/DomobActivity;

    invoke-static {v1}, Lcn/domob/android/offerwall/DomobActivity;->a(Lcn/domob/android/offerwall/DomobActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/a/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/domob/android/a/a;->b()V

    invoke-virtual {v0}, Lcn/domob/android/a/a;->a()Lcn/domob/android/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcn/domob/android/a/c;->b()V

    :cond_0
    iget-object v0, p0, Lcn/domob/android/offerwall/DomobActivity$2;->a:Lcn/domob/android/offerwall/DomobActivity;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/DomobActivity;->finish()V

    return-void
.end method
