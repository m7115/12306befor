.class Lcn/domob/ui/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/ui/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Landroid/widget/ImageView;

.field final synthetic b:Lcn/domob/ui/i;


# direct methods
.method private constructor <init>(Lcn/domob/ui/i;)V
    .locals 0
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcn/domob/ui/i$a;->b:Lcn/domob/ui/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/domob/ui/i;Lcn/domob/ui/i$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    invoke-direct {p0, p1}, Lcn/domob/ui/i$a;-><init>(Lcn/domob/ui/i;)V

    return-void
.end method
