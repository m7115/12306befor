.class Lcn/domob/wall/core/q$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/wall/core/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/json/JSONArray;

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/domob/wall/core/q$b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic d:Lcn/domob/wall/core/q;


# direct methods
.method constructor <init>(Lcn/domob/wall/core/q;)V
    .locals 0
    .parameter

    .prologue
    .line 126
    iput-object p1, p0, Lcn/domob/wall/core/q$a;->d:Lcn/domob/wall/core/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
