.class public Lcn/domob/android/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final A:I = 0x64

.field private static F:Z = false

.field private static G:Z = false

.field public static a:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/a/a;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final c:Ljava/lang/String; = "typeCancel"

.field public static final d:Ljava/lang/String; = "typeInstall"

.field public static final e:Ljava/lang/String; = "actType"

.field public static final f:Ljava/lang/String; = "appName"

.field public static final g:Ljava/lang/String; = "appId"

.field public static final h:Ljava/lang/String; = "notifyId"

.field public static final i:Ljava/lang/String; = "downloadPath"

.field public static final j:I = 0x200

.field public static final k:I = 0x201

.field private static l:Lcn/domob/android/offerwall/m; = null

.field private static m:Landroid/content/Context; = null

.field private static final t:I = 0x3e8

.field private static u:I = 0x0

.field private static v:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static w:Ljava/util/Vector; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final z:I = 0x5


# instance fields
.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private H:Landroid/app/PendingIntent;

.field private I:Landroid/os/Handler;

.field private J:Lcn/domob/android/a/f;

.field private n:Landroid/app/Notification;

.field private o:Landroid/app/NotificationManager;

.field private p:I

.field private q:I

.field private r:Lcn/domob/android/a/c;

.field private s:Ljava/lang/String;

.field private final x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/domob/android/offerwall/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    const/4 v0, 0x0

    sput v0, Lcn/domob/android/a/a;->u:I

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/a/a;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/a/a;->v:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/a/a;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcn/domob/android/a/a;->w:Ljava/util/Vector;

    sput-boolean v2, Lcn/domob/android/a/a;->F:Z

    sput-boolean v2, Lcn/domob/android/a/a;->G:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 6

    const/16 v5, 0x1e

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    iput-object v1, p0, Lcn/domob/android/a/a;->o:Landroid/app/NotificationManager;

    iput v4, p0, Lcn/domob/android/a/a;->p:I

    iput v4, p0, Lcn/domob/android/a/a;->q:I

    iput-object v1, p0, Lcn/domob/android/a/a;->r:Lcn/domob/android/a/c;

    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/a;->s:Ljava/lang/String;

    iput v5, p0, Lcn/domob/android/a/a;->x:I

    iput v4, p0, Lcn/domob/android/a/a;->y:I

    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/a;->B:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/a;->C:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/a/a;->D:Ljava/lang/String;

    iput-object v1, p0, Lcn/domob/android/a/a;->E:Ljava/lang/String;

    new-instance v0, Lcn/domob/android/a/b;

    invoke-direct {v0, p0}, Lcn/domob/android/a/b;-><init>(Lcn/domob/android/a/a;)V

    iput-object v0, p0, Lcn/domob/android/a/a;->I:Landroid/os/Handler;

    invoke-virtual {p6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    iput-object p1, p0, Lcn/domob/android/a/a;->B:Ljava/lang/String;

    iput-object p2, p0, Lcn/domob/android/a/a;->C:Ljava/lang/String;

    iput-object p3, p0, Lcn/domob/android/a/a;->D:Ljava/lang/String;

    iput-object p5, p0, Lcn/domob/android/a/a;->E:Ljava/lang/String;

    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start to download. appName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pkgName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcn/domob/android/a/a;->v:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcn/domob/android/a/a;->u:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/domob/android/a/a;->u:I

    sget-object v0, Lcn/domob/android/a/a;->v:Ljava/util/Hashtable;

    sget v1, Lcn/domob/android/a/a;->u:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lcn/domob/android/a/a;->u:I

    iput v0, p0, Lcn/domob/android/a/a;->p:I

    :goto_0
    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notification_id is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/domob/android/a/a;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    sget-object v0, Lcn/domob/android/a/a;->b:Ljava/util/Hashtable;

    iget v1, p0, Lcn/domob/android/a/a;->p:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p4, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/domob/android/a/a;->w:Ljava/util/Vector;

    invoke-virtual {v0, p4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcn/domob/android/a/a;->w:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v5, :cond_0

    sget-object v1, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v2, Lcn/domob/android/a/a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remove "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v0, Lcn/domob/android/a/a;->w:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " from AppPkgMapping"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcn/domob/android/a/a;->b:Ljava/util/Hashtable;

    sget-object v1, Lcn/domob/android/a/a;->w:Ljava/util/Vector;

    invoke-virtual {v1, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcn/domob/android/a/a;->w:Ljava/util/Vector;

    invoke-virtual {v0, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " notification_id for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "already exists"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcn/domob/android/a/a;->v:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/domob/android/a/a;->p:I

    goto/16 :goto_0
.end method

.method static synthetic a(Lcn/domob/android/a/a;)I
    .locals 1

    iget v0, p0, Lcn/domob/android/a/a;->y:I

    return v0
.end method

.method static synthetic a(Lcn/domob/android/a/a;I)I
    .locals 0

    iput p1, p0, Lcn/domob/android/a/a;->y:I

    return p1
.end method

.method static synthetic a(Lcn/domob/android/a/a;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcn/domob/android/a/a;->H:Landroid/app/PendingIntent;

    return-object p1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/domob/android/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/domob/android/a/h;

    invoke-direct {v2, p0, v1, p1, v0}, Lcn/domob/android/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/a/i;)V

    sget-object v1, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v3, Lcn/domob/android/a/a;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  exists"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/domob/android/a/h;->a()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v1}, Lcn/domob/android/a/a;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/a/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcn/domob/android/a/a;->s:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcn/domob/android/a/a;Ljava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/domob/android/a/a;->a(Ljava/lang/String;J)V

    return-void
.end method

.method private a(Lcn/domob/android/a/c;)V
    .locals 0

    iput-object p1, p0, Lcn/domob/android/a/a;->r:Lcn/domob/android/a/c;

    return-void
.end method

.method private a(Ljava/lang/String;J)V
    .locals 7

    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "begin download in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcn/domob/android/offerwall/m;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcn/domob/android/a/f;

    iget-object v1, p0, Lcn/domob/android/a/a;->B:Ljava/lang/String;

    new-instance v5, Lcn/domob/android/a/a$2;

    invoke-direct {v5, p0}, Lcn/domob/android/a/a$2;-><init>(Lcn/domob/android/a/a;)V

    sget-object v6, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;JLcn/domob/android/a/d;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/domob/android/a/a;->J:Lcn/domob/android/a/f;

    iget-object v0, p0, Lcn/domob/android/a/a;->J:Lcn/domob/android/a/f;

    invoke-virtual {v0}, Lcn/domob/android/a/f;->start()V

    sget-object v0, Lcn/domob/android/a/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/a/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/a/c;)V
    .locals 7

    const/4 v5, 0x0

    sget-boolean v6, Lcn/domob/android/a/a;->F:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcn/domob/android/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/a/c;Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/a/c;Ljava/lang/String;Z)V
    .locals 7

    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Download url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v3, Lcn/domob/android/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download uri path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v3, Lcn/domob/android/a/a;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Download uri host: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lcn/domob/android/a/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download filename(md5) "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    sput-boolean p6, Lcn/domob/android/a/a;->G:Z

    sget-object v0, Lcn/domob/android/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x200

    const-string v1, "\u5f53\u524d\u5e94\u7528\u5df2\u5728\u4e0b\u8f7d"

    invoke-interface {p4, v0, v1}, Lcn/domob/android/a/c;->a(ILjava/lang/String;)V

    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is downloading"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcn/domob/android/a/a;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    const/16 v0, 0x201

    const-string v1, "\u6700\u5927\u4e0b\u8f7d\u6570\u4e3a1000\u4e2a"

    invoke-interface {p4, v0, v1}, Lcn/domob/android/a/c;->a(ILjava/lang/String;)V

    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    const-string v2, "Maximum download number is 1000"

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcn/domob/android/a/a;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcn/domob/android/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {v0, p4}, Lcn/domob/android/a/a;->a(Lcn/domob/android/a/c;)V

    sget-boolean v1, Lcn/domob/android/a/a;->G:Z

    if-eqz v1, :cond_2

    invoke-direct {v0}, Lcn/domob/android/a/a;->f()V

    :cond_2
    invoke-direct {v0}, Lcn/domob/android/a/a;->i()V

    invoke-interface {p4}, Lcn/domob/android/a/c;->a()V

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/a/a;I)I
    .locals 0

    iput p1, p0, Lcn/domob/android/a/a;->q:I

    return p1
.end method

.method static synthetic b(Lcn/domob/android/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->C:Ljava/lang/String;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcn/domob/android/offerwall/l;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b(Lcn/domob/android/a/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/domob/android/a/a;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcn/domob/android/a/a;)Landroid/app/PendingIntent;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->H:Landroid/app/PendingIntent;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    sget-object v0, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    iget v1, p0, Lcn/domob/android/a/a;->p:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x800

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    const v2, 0x1080078

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/a;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    sget-object v2, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/domob/android/a/a;->C:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcn/domob/android/a/a;->o:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/a/a;->p:I

    iget-object v2, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic c()Z
    .locals 1

    sget-boolean v0, Lcn/domob/android/a/a;->G:Z

    return v0
.end method

.method static synthetic d(Lcn/domob/android/a/a;)Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    return-object v0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcn/domob/android/a/a;)I
    .locals 1

    iget v0, p0, Lcn/domob/android/a/a;->p:I

    return v0
.end method

.method static synthetic e()Lcn/domob/android/offerwall/m;
    .locals 1

    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/a/a;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->o:Landroid/app/NotificationManager;

    return-object v0
.end method

.method private f()V
    .locals 5

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    iget-object v0, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    const v1, 0x1080081

    iput v1, v0, Landroid/app/Notification;->icon:I

    iget-object v0, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/domob/android/a/a;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v0, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    iget v1, p0, Lcn/domob/android/a/a;->p:I

    invoke-direct {p0}, Lcn/domob/android/a/a;->h()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x800

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/a/a;->H:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    sget-object v1, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/domob/android/a/a;->C:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcn/domob/android/a/a;->H:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v0, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/domob/android/a/a;->o:Landroid/app/NotificationManager;

    invoke-direct {p0}, Lcn/domob/android/a/a;->g()V

    return-void
.end method

.method static synthetic g(Lcn/domob/android/a/a;)I
    .locals 1

    iget v0, p0, Lcn/domob/android/a/a;->q:I

    return v0
.end method

.method private g()V
    .locals 3

    iget-object v0, p0, Lcn/domob/android/a/a;->o:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/a/a;->p:I

    iget-object v2, p0, Lcn/domob/android/a/a;->n:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private h()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    const-class v2, Lcn/domob/android/offerwall/DomobActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, "appName"

    iget-object v2, p0, Lcn/domob/android/a/a;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appId"

    iget-object v2, p0, Lcn/domob/android/a/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "actType"

    const-string v2, "typeCancel"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DomobActivityType"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic h(Lcn/domob/android/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->s:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcn/domob/android/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->D:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 5

    new-instance v0, Lcn/domob/android/a/h;

    sget-object v1, Lcn/domob/android/a/a;->m:Landroid/content/Context;

    iget-object v2, p0, Lcn/domob/android/a/a;->D:Ljava/lang/String;

    iget-object v3, p0, Lcn/domob/android/a/a;->B:Ljava/lang/String;

    new-instance v4, Lcn/domob/android/a/a$1;

    invoke-direct {v4, p0}, Lcn/domob/android/a/a$1;-><init>(Lcn/domob/android/a/a;)V

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/domob/android/a/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/a/i;)V

    invoke-virtual {v0}, Lcn/domob/android/a/h;->start()V

    return-void
.end method

.method static synthetic j(Lcn/domob/android/a/a;)Lcn/domob/android/a/c;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->r:Lcn/domob/android/a/c;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/android/a/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcn/domob/android/a/a;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->I:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()Lcn/domob/android/a/c;
    .locals 1

    iget-object v0, p0, Lcn/domob/android/a/a;->r:Lcn/domob/android/a/c;

    return-object v0
.end method

.method public b()V
    .locals 4

    sget-object v0, Lcn/domob/android/a/a;->l:Lcn/domob/android/offerwall/m;

    const-class v1, Lcn/domob/android/a/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop download  and cancel notify if is UI mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/domob/android/a/a;->p:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/domob/android/offerwall/m;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/a/a;->J:Lcn/domob/android/a/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/domob/android/a/a;->J:Lcn/domob/android/a/f;

    invoke-virtual {v0}, Lcn/domob/android/a/f;->b()V

    :cond_0
    iget-object v0, p0, Lcn/domob/android/a/a;->o:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/a/a;->p:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    sget-object v0, Lcn/domob/android/a/a;->a:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/a/a;->D:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
