.class Lcn/domob/android/offerwall/a$d$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/offerwall/a$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/offerwall/a$d;


# direct methods
.method constructor <init>(Lcn/domob/android/offerwall/a$d;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/offerwall/a$d$1;->a:Lcn/domob/android/offerwall/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcn/domob/android/offerwall/a$d$1;->a:Lcn/domob/android/offerwall/a$d;

    iget-object v0, v0, Lcn/domob/android/offerwall/a$d;->a:Lcn/domob/android/offerwall/a;

    invoke-virtual {v0}, Lcn/domob/android/offerwall/a;->stopLoading()V

    return-void
.end method
