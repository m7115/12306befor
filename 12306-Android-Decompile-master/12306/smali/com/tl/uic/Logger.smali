.class public Lcom/tl/uic/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final textKeyName:Ljava/lang/String; = "text"


# instance fields
.field private _application:Landroid/app/Application;

.field private _currentActivity:Landroid/app/Activity;

.field private final _formActivities:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/tl/uic/model/Control;",
            ">;>;"
        }
    .end annotation
.end field

.field private _previousFocusControlDate:Ljava/util/Date;

.field private _previousFocusTarget:Lcom/tl/uic/model/Target;

.field private currentScreenview:Lcom/tl/uic/model/Screenview;

.field private loadDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1
    .parameter "application"

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/tl/uic/Logger;->_application:Landroid/app/Application;

    .line 77
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    return-void
.end method

.method private createControl(Landroid/view/View;Ljava/lang/String;I)Lcom/tl/uic/model/Control;
    .locals 8
    .parameter "view"
    .parameter "eventType"
    .parameter "logLevel"

    .prologue
    .line 229
    new-instance v0, Lcom/tl/uic/model/Control;

    invoke-direct {v0}, Lcom/tl/uic/model/Control;-><init>()V

    .line 230
    .local v0, control:Lcom/tl/uic/model/Control;
    invoke-virtual {v0, p3}, Lcom/tl/uic/model/Control;->setLogLevel(I)V

    .line 231
    invoke-direct {p0, p1}, Lcom/tl/uic/Logger;->createTarget(Landroid/view/View;)Lcom/tl/uic/model/Target;

    move-result-object v3

    .line 232
    .local v3, target:Lcom/tl/uic/model/Target;
    invoke-direct {p0, v3, p1, p2}, Lcom/tl/uic/Logger;->getState(Lcom/tl/uic/model/Target;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 233
    .local v2, saveFormField:Ljava/lang/Boolean;
    invoke-virtual {v0, v3}, Lcom/tl/uic/model/Control;->setTarget(Lcom/tl/uic/model/Target;)V

    .line 235
    if-eqz p2, :cond_0

    .line 236
    new-instance v1, Lcom/tl/uic/model/EventInfo;

    invoke-direct {v1}, Lcom/tl/uic/model/EventInfo;-><init>()V

    .line 237
    .local v1, eventInfo:Lcom/tl/uic/model/EventInfo;
    invoke-virtual {v1, p2}, Lcom/tl/uic/model/EventInfo;->setType(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v0}, Lcom/tl/uic/model/Control;->getTarget()Lcom/tl/uic/model/Target;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tl/uic/model/Target;->getTlType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/tl/uic/model/EventInfo;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/tl/uic/Logger;->getTlEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/tl/uic/model/EventInfo;->setTlEvent(Ljava/lang/String;)V

    .line 239
    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Control;->setEventInfo(Lcom/tl/uic/model/EventInfo;)V

    .line 241
    const-string v4, "OnFocusChange_Out"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/tl/uic/model/Control;->getTarget()Lcom/tl/uic/model/Target;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/tl/uic/model/Control;->getTarget()Lcom/tl/uic/model/Target;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tl/uic/model/Target;->getDwell()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 243
    invoke-virtual {v0}, Lcom/tl/uic/model/Control;->getOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/tl/uic/model/Control;->getTarget()Lcom/tl/uic/model/Target;

    move-result-object v6

    invoke-virtual {v6}, Lcom/tl/uic/model/Target;->getDwell()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Lcom/tl/uic/model/Control;->setFocusInOffset(J)V

    .line 247
    .end local v1           #eventInfo:Lcom/tl/uic/model/EventInfo;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/tl/uic/Logger;->_currentActivity:Landroid/app/Activity;

    if-eqz v4, :cond_2

    .line 248
    iget-object v4, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/tl/uic/Logger;->_currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 249
    iget-object v4, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/tl/uic/Logger;->_currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    :cond_1
    iget-object v4, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v5, p0, Lcom/tl/uic/Logger;->_currentActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    :cond_2
    return-object v0
.end method

.method private createTarget(Landroid/view/View;)Lcom/tl/uic/model/Target;
    .locals 2
    .parameter "view"

    .prologue
    .line 265
    new-instance v0, Lcom/tl/uic/model/Target;

    invoke-direct {v0}, Lcom/tl/uic/model/Target;-><init>()V

    .line 266
    .local v0, target:Lcom/tl/uic/model/Target;
    invoke-direct {p0, p1}, Lcom/tl/uic/Logger;->getControlType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Target;->setType(Ljava/lang/String;)V

    .line 267
    invoke-direct {p0, p1}, Lcom/tl/uic/Logger;->getControlSubType(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Target;->setSubType(Ljava/lang/String;)V

    .line 268
    invoke-direct {p0, p1}, Lcom/tl/uic/Logger;->getPropertyName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Target;->setId(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, p1}, Lcom/tl/uic/Logger;->getPosition(Landroid/view/View;)Lcom/tl/uic/model/Position;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Target;->setPosition(Lcom/tl/uic/model/Position;)V

    .line 270
    invoke-direct {p0, p1}, Lcom/tl/uic/Logger;->getTlType(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Target;->setTlType(Ljava/lang/String;)V

    .line 271
    return-object v0
.end method

.method private getControlSubType(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .parameter "view"

    .prologue
    const/4 v0, 0x0

    .line 291
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 292
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getControlType(Landroid/view/View;)Ljava/lang/String;
    .locals 1
    .parameter "view"

    .prologue
    .line 281
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getPosition(Landroid/view/View;)Lcom/tl/uic/model/Position;
    .locals 2
    .parameter "view"

    .prologue
    .line 321
    new-instance v0, Lcom/tl/uic/model/Position;

    invoke-direct {v0}, Lcom/tl/uic/model/Position;-><init>()V

    .line 322
    .local v0, position:Lcom/tl/uic/model/Position;
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Position;->setHeight(I)V

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Position;->setWidth(I)V

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Position;->setX(I)V

    .line 325
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Position;->setY(I)V

    .line 326
    return-object v0
.end method

.method private getPropertyName(Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .parameter "view"

    .prologue
    .line 303
    const/4 v1, 0x0

    .line 306
    .local v1, propertyName:Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/tl/uic/Logger;->_application:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 307
    .local v2, resources:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    const-string v1, "-1"

    .line 311
    .end local v2           #resources:Landroid/content/res/Resources;
    :goto_0
    return-object v1

    .line 307
    .restart local v2       #resources:Landroid/content/res/Resources;
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 308
    .end local v2           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 309
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trying to get property id for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private getState(Lcom/tl/uic/model/Target;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 12
    .parameter "target"
    .parameter "widget"
    .parameter "eventType"

    .prologue
    const/4 v11, 0x1

    const/4 v8, 0x0

    .line 339
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 340
    .local v4, saveFormField:Ljava/lang/Boolean;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 342
    .local v0, current:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    move-object v5, v4

    .line 461
    .end local v4           #saveFormField:Ljava/lang/Boolean;
    .end local p2
    .local v5, saveFormField:Ljava/lang/Boolean;
    :goto_0
    return-object v5

    .line 346
    .end local v5           #saveFormField:Ljava/lang/Boolean;
    .restart local v4       #saveFormField:Ljava/lang/Boolean;
    .restart local p2
    :cond_1
    instance-of v7, p2, Landroid/widget/ToggleButton;

    if-eqz v7, :cond_4

    .line 347
    const-string v8, "isToggled"

    check-cast p2, Landroid/widget/ToggleButton;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "true"

    :goto_1
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v8, v7, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 460
    :cond_2
    :goto_2
    invoke-virtual {p1, v0}, Lcom/tl/uic/model/Target;->setCurrentState(Ljava/util/HashMap;)V

    move-object v5, v4

    .line 461
    .end local v4           #saveFormField:Ljava/lang/Boolean;
    .restart local v5       #saveFormField:Ljava/lang/Boolean;
    goto :goto_0

    .line 347
    .end local v5           #saveFormField:Ljava/lang/Boolean;
    .restart local v4       #saveFormField:Ljava/lang/Boolean;
    :cond_3
    const-string v7, "false"

    goto :goto_1

    .line 348
    .restart local p2
    :cond_4
    instance-of v7, p2, Landroid/widget/Button;

    if-eqz v7, :cond_6

    .line 354
    const-string v9, "text"

    move-object v7, p2

    check-cast v7, Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_5

    move-object v7, v8

    .line 355
    .end local p2
    :goto_3
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v8

    .line 354
    invoke-direct {p0, v0, v9, v7, v8}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 355
    .restart local p2
    :cond_5
    check-cast p2, Landroid/widget/Button;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 356
    .restart local p2
    :cond_6
    instance-of v7, p2, Landroid/widget/DatePicker;

    if-eqz v7, :cond_7

    .line 357
    new-instance v1, Ljava/util/Date;

    move-object v7, p2

    check-cast v7, Landroid/widget/DatePicker;

    invoke-virtual {v7}, Landroid/widget/DatePicker;->getYear()I

    move-result v8

    move-object v7, p2

    check-cast v7, Landroid/widget/DatePicker;

    invoke-virtual {v7}, Landroid/widget/DatePicker;->getMonth()I

    move-result v7

    .line 358
    check-cast p2, Landroid/widget/DatePicker;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v9

    .line 357
    invoke-direct {v1, v8, v7, v9}, Ljava/util/Date;-><init>(III)V

    .line 359
    .local v1, datePickerValue:Ljava/util/Date;
    const-string v7, "date"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_2

    .line 360
    .end local v1           #datePickerValue:Ljava/util/Date;
    .restart local p2
    :cond_7
    instance-of v7, p2, Landroid/widget/Scroller;

    if-eqz v7, :cond_8

    .line 361
    const-string v8, "x"

    move-object v7, p2

    check-cast v7, Landroid/widget/Scroller;

    invoke-virtual {v7}, Landroid/widget/Scroller;->getFinalX()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v8, v7, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 362
    const-string v7, "y"

    check-cast p2, Landroid/widget/Scroller;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 363
    .restart local p2
    :cond_8
    instance-of v7, p2, Landroid/widget/HorizontalScrollView;

    if-eqz v7, :cond_9

    .line 364
    const-string v8, "x"

    move-object v7, p2

    check-cast v7, Landroid/widget/HorizontalScrollView;

    invoke-virtual {v7}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 365
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 364
    invoke-direct {p0, v0, v8, v7, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 366
    const-string v7, "y"

    check-cast p2, Landroid/widget/HorizontalScrollView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollY()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 366
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 368
    .restart local p2
    :cond_9
    instance-of v7, p2, Landroid/widget/ScrollView;

    if-eqz v7, :cond_a

    .line 369
    const-string v8, "x"

    move-object v7, p2

    check-cast v7, Landroid/widget/ScrollView;

    invoke-virtual {v7}, Landroid/widget/ScrollView;->getScrollX()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 370
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 369
    invoke-direct {p0, v0, v8, v7, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 371
    const-string v7, "y"

    check-cast p2, Landroid/widget/ScrollView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 372
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 371
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 373
    .restart local p2
    :cond_a
    instance-of v7, p2, Landroid/widget/DialerFilter;

    if-eqz v7, :cond_c

    .line 374
    const-string v9, "text"

    move-object v7, p2

    check-cast v7, Landroid/widget/DialerFilter;

    invoke-virtual {v7}, Landroid/widget/DialerFilter;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_b

    .line 375
    .end local p2
    :goto_4
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v7

    .line 374
    invoke-direct {p0, v0, v9, v8, v7}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 375
    .restart local p2
    :cond_b
    check-cast p2, Landroid/widget/DialerFilter;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/DialerFilter;->getFilterText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_4

    .line 376
    .restart local p2
    :cond_c
    instance-of v7, p2, Landroid/widget/ProgressBar;

    if-eqz v7, :cond_d

    .line 378
    const-string v8, "value"

    move-object v7, p2

    check-cast v7, Landroid/widget/ProgressBar;

    invoke-virtual {v7}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 379
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 378
    invoke-direct {p0, v0, v8, v7, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 380
    const-string v7, "maxValue"

    check-cast p2, Landroid/widget/ProgressBar;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 381
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 380
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 382
    .restart local p2
    :cond_d
    instance-of v7, p2, Landroid/widget/RadioGroup;

    if-eqz v7, :cond_10

    move-object v7, p2

    .line 383
    check-cast v7, Landroid/view/View;

    check-cast p2, Landroid/widget/RadioGroup;

    .line 384
    .end local p2
    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v9

    .line 383
    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 385
    .local v3, radioButton:Landroid/widget/RadioButton;
    const-string v7, "text"

    .line 386
    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-nez v9, :cond_f

    .line 387
    :cond_e
    :goto_5
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 385
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 386
    :cond_f
    invoke-virtual {v3}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_5

    .line 388
    .end local v3           #radioButton:Landroid/widget/RadioButton;
    .restart local p2
    :cond_10
    instance-of v7, p2, Landroid/widget/Spinner;

    if-eqz v7, :cond_12

    .line 390
    const-string v9, "text"

    move-object v7, p2

    check-cast v7, Landroid/widget/Spinner;

    invoke-virtual {v7}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_11

    .line 391
    .end local p2
    :goto_6
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v7

    .line 390
    invoke-direct {p0, v0, v9, v8, v7}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 391
    .restart local p2
    :cond_11
    check-cast p2, Landroid/widget/Spinner;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/Spinner;->getPrompt()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 392
    .restart local p2
    :cond_12
    instance-of v7, p2, Landroid/widget/TabHost;

    if-eqz v7, :cond_14

    .line 393
    const-string v9, "text"

    move-object v7, p2

    check-cast v7, Landroid/widget/TabHost;

    invoke-virtual {v7}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_13

    .line 394
    .end local p2
    :goto_7
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v7

    .line 393
    invoke-direct {p0, v0, v9, v8, v7}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 394
    .restart local p2
    :cond_13
    check-cast p2, Landroid/widget/TabHost;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_7

    .line 395
    .restart local p2
    :cond_14
    instance-of v7, p2, Landroid/widget/TabWidget;

    if-eqz v7, :cond_16

    .line 396
    const-string v9, "text"

    move-object v7, p2

    check-cast v7, Landroid/widget/TabWidget;

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getTag()Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_15

    .line 397
    .end local p2
    :goto_8
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v7

    .line 396
    invoke-direct {p0, v0, v9, v8, v7}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 397
    .restart local p2
    :cond_15
    check-cast p2, Landroid/widget/TabWidget;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TabWidget;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    .line 398
    .restart local p2
    :cond_16
    instance-of v7, p2, Landroid/widget/TextView;

    if-eqz v7, :cond_1e

    .line 401
    if-eqz p3, :cond_1c

    .line 402
    const-string v7, "OnFocusChange_In"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 403
    const-string v7, "OnFocusChange_Out"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 404
    :cond_17
    const-string v7, "OnFocusChange_In"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 405
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    iput-object v7, p0, Lcom/tl/uic/Logger;->_previousFocusControlDate:Ljava/util/Date;

    .line 406
    const-string v9, "text"

    move-object v7, p2

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_18

    .line 407
    .end local p2
    :goto_9
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v7

    .line 406
    invoke-direct {p0, v0, v9, v8, v7}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 408
    invoke-virtual {p1, v0}, Lcom/tl/uic/model/Target;->setCurrentState(Ljava/util/HashMap;)V

    .line 409
    iput-object p1, p0, Lcom/tl/uic/Logger;->_previousFocusTarget:Lcom/tl/uic/model/Target;

    goto/16 :goto_2

    .line 407
    .restart local p2
    :cond_18
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9

    .line 410
    .restart local p2
    :cond_19
    const-string v7, "OnFocusChange_Out"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 411
    const-string v9, "text"

    move-object v7, p2

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_1b

    .line 412
    :goto_a
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v7

    .line 411
    invoke-direct {p0, v0, v9, v8, v7}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 413
    iget-object v7, p0, Lcom/tl/uic/Logger;->_previousFocusTarget:Lcom/tl/uic/model/Target;

    if-eqz v7, :cond_1a

    iget-object v7, p0, Lcom/tl/uic/Logger;->_previousFocusTarget:Lcom/tl/uic/model/Target;

    invoke-virtual {v7, p1}, Lcom/tl/uic/model/Target;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 414
    iget-object v7, p0, Lcom/tl/uic/Logger;->_previousFocusControlDate:Ljava/util/Date;

    if-eqz v7, :cond_1a

    .line 415
    iget-object v7, p0, Lcom/tl/uic/Logger;->_previousFocusTarget:Lcom/tl/uic/model/Target;

    invoke-virtual {v7}, Lcom/tl/uic/model/Target;->getCurrentState()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/tl/uic/model/Target;->setPreviousState(Ljava/util/HashMap;)V

    .line 416
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    iget-object v9, p0, Lcom/tl/uic/Logger;->_previousFocusControlDate:Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {p1, v7, v8}, Lcom/tl/uic/model/Target;->setDwell(J)V

    .line 418
    :cond_1a
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-direct {p0, p2, p1}, Lcom/tl/uic/Logger;->setVisitedCount(Landroid/view/View;Lcom/tl/uic/model/Target;)V

    .line 419
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    goto/16 :goto_2

    .restart local p2
    :cond_1b
    move-object v7, p2

    .line 412
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_a

    .line 422
    :cond_1c
    const-string v9, "text"

    move-object v7, p2

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    if-nez v7, :cond_1d

    .line 423
    :goto_b
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v7

    .line 422
    invoke-direct {p0, v0, v9, v8, v7}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 424
    check-cast p2, Landroid/widget/TextView;

    .end local p2
    invoke-direct {p0, p2, p1}, Lcom/tl/uic/Logger;->setVisitedCount(Landroid/view/View;Lcom/tl/uic/model/Target;)V

    goto/16 :goto_2

    .restart local p2
    :cond_1d
    move-object v7, p2

    .line 423
    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_b

    .line 426
    :cond_1e
    instance-of v7, p2, Landroid/widget/TimePicker;

    if-eqz v7, :cond_20

    .line 427
    new-instance v6, Ljava/lang/StringBuffer;

    move-object v7, p2

    check-cast v7, Landroid/widget/TimePicker;

    .line 428
    invoke-virtual {v7}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 427
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 429
    .local v6, timePickerValue:Ljava/lang/StringBuffer;
    check-cast p2, Landroid/widget/TimePicker;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    .local v2, minutes:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v11, :cond_1f

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ":0"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_c
    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 431
    const-string v7, "time"

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 430
    :cond_1f
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_c

    .line 432
    .end local v2           #minutes:Ljava/lang/String;
    .end local v6           #timePickerValue:Ljava/lang/StringBuffer;
    .restart local p2
    :cond_20
    instance-of v7, p2, Landroid/widget/AbsListView;

    if-eqz v7, :cond_23

    .line 433
    instance-of v7, p2, Landroid/widget/ExpandableListView;

    if-eqz v7, :cond_21

    if-eqz p3, :cond_21

    .line 434
    const-string v7, "OnGroupCollapse"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 435
    const-string v7, "text"

    const-string v8, "collapsed"

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 440
    :cond_21
    :goto_d
    const-string v8, "x"

    move-object v7, p2

    check-cast v7, Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getLeft()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v8, v7, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 441
    const-string v7, "y"

    check-cast p2, Landroid/widget/AbsListView;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/AbsListView;->getTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 436
    .restart local p2
    :cond_22
    const-string v7, "OnGroupExpand"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_21

    .line 437
    const-string v7, "text"

    const-string v8, "expanded"

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_d

    .line 442
    :cond_23
    instance-of v7, p2, Landroid/widget/SlidingDrawer;

    if-eqz v7, :cond_2

    .line 443
    if-eqz p3, :cond_24

    .line 444
    const-string v7, "OnDrawerOpened"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 445
    const-string v7, "text"

    const-string v8, "opened"

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 450
    :cond_24
    :goto_e
    const-string v8, "x"

    move-object v7, p2

    check-cast v7, Landroid/widget/SlidingDrawer;

    invoke-virtual {v7}, Landroid/widget/SlidingDrawer;->getLeft()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 451
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 450
    invoke-direct {p0, v0, v8, v7, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 452
    const-string v7, "y"

    check-cast p2, Landroid/widget/SlidingDrawer;

    .end local p2
    invoke-virtual {p2}, Landroid/widget/SlidingDrawer;->getTop()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 453
    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    .line 452
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 446
    .restart local p2
    :cond_25
    const-string v7, "OnDrawerClosed"

    invoke-virtual {p3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 447
    const-string v7, "text"

    const-string v8, "closed"

    invoke-virtual {p1}, Lcom/tl/uic/model/Target;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v0, v7, v8, v9}, Lcom/tl/uic/Logger;->trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_e
.end method

.method private getTlEvent(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tlType"
    .parameter "type"

    .prologue
    .line 573
    const-string v0, ""

    .line 575
    .local v0, tlEvent:Ljava/lang/String;
    if-nez p1, :cond_1

    .line 576
    const-string v0, ""

    .line 605
    :cond_0
    :goto_0
    return-object v0

    .line 577
    :cond_1
    const-string v1, "button"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 578
    const-string v1, "checkBox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 579
    const-string v1, "gallery"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 580
    const-string v1, "radioButton"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 581
    const-string v1, "toggleButton"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 582
    :cond_2
    const-string v0, "click"

    goto :goto_0

    .line 583
    :cond_3
    const-string v1, "calendar"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 584
    const-string v1, "datePicker"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 585
    :cond_4
    const-string v0, "dateChange"

    goto :goto_0

    .line 586
    :cond_5
    const-string v1, "numberPicker"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 587
    const-string v1, "searchBox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 588
    const-string v1, "selectList"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 589
    const-string v1, "slider"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 590
    :cond_6
    const-string v0, "valueChange"

    goto :goto_0

    .line 591
    :cond_7
    const-string v1, "scroll"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 592
    const-string v0, "scrollChange"

    goto :goto_0

    .line 593
    :cond_8
    const-string v1, "tabContainer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 594
    const-string v0, "tabChange"

    goto :goto_0

    .line 595
    :cond_9
    const-string v1, "textBox"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 596
    if-eqz p2, :cond_a

    const-string v1, "unchanged"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 597
    const-string v0, "unchanged"

    goto/16 :goto_0

    .line 599
    :cond_a
    const-string v0, "textChange"

    goto/16 :goto_0

    .line 601
    :cond_b
    const-string v1, "timePicker"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    const-string v0, "timeChange"

    goto/16 :goto_0
.end method

.method private getTlType(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "object"

    .prologue
    .line 504
    const-string v0, "scroll"

    .line 505
    .local v0, scrollType:Ljava/lang/String;
    const-string v1, ""

    .line 507
    .local v1, tlType:Ljava/lang/String;
    instance-of v2, p1, Landroid/widget/ToggleButton;

    if-eqz v2, :cond_1

    .line 508
    const-string v1, "toggleButton"

    .line 561
    :cond_0
    :goto_0
    return-object v1

    .line 509
    :cond_1
    instance-of v2, p1, Landroid/widget/RadioButton;

    if-eqz v2, :cond_2

    .line 510
    const-string v1, "radioButton"

    goto :goto_0

    .line 511
    :cond_2
    instance-of v2, p1, Landroid/widget/CheckBox;

    if-eqz v2, :cond_3

    .line 512
    const-string v1, "checkBox"

    goto :goto_0

    .line 513
    :cond_3
    instance-of v2, p1, Landroid/widget/Button;

    if-eqz v2, :cond_4

    .line 514
    const-string v1, "button"

    goto :goto_0

    .line 515
    :cond_4
    instance-of v2, p1, Landroid/widget/DatePicker;

    if-eqz v2, :cond_5

    .line 516
    const-string v1, "datePicker"

    goto :goto_0

    .line 517
    :cond_5
    instance-of v2, p1, Landroid/widget/Scroller;

    if-eqz v2, :cond_6

    .line 518
    const-string v1, "scroll"

    goto :goto_0

    .line 519
    :cond_6
    instance-of v2, p1, Landroid/widget/HorizontalScrollView;

    if-eqz v2, :cond_7

    .line 520
    const-string v1, "scroll"

    goto :goto_0

    .line 521
    :cond_7
    instance-of v2, p1, Landroid/widget/ScrollView;

    if-eqz v2, :cond_8

    .line 522
    const-string v1, "scroll"

    goto :goto_0

    .line 523
    :cond_8
    instance-of v2, p1, Landroid/widget/DialerFilter;

    if-eqz v2, :cond_9

    .line 524
    const-string v1, "dialerFilter"

    goto :goto_0

    .line 525
    :cond_9
    instance-of v2, p1, Landroid/widget/ProgressBar;

    if-eqz v2, :cond_a

    .line 526
    const-string v1, "slider"

    goto :goto_0

    .line 527
    :cond_a
    instance-of v2, p1, Landroid/widget/RadioGroup;

    if-eqz v2, :cond_b

    .line 528
    const-string v1, "radioButton"

    goto :goto_0

    .line 529
    :cond_b
    instance-of v2, p1, Landroid/widget/Gallery;

    if-eqz v2, :cond_c

    .line 530
    const-string v1, "gallery"

    goto :goto_0

    .line 531
    :cond_c
    instance-of v2, p1, Landroid/widget/AbsSpinner;

    if-eqz v2, :cond_d

    .line 532
    const-string v1, "selectList"

    goto :goto_0

    .line 533
    :cond_d
    instance-of v2, p1, Landroid/widget/TabHost;

    if-eqz v2, :cond_e

    .line 534
    const-string v1, "tabContainer"

    goto :goto_0

    .line 535
    :cond_e
    instance-of v2, p1, Landroid/widget/TabWidget;

    if-eqz v2, :cond_f

    .line 536
    const-string v1, "tabBar"

    goto :goto_0

    .line 537
    :cond_f
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_10

    .line 538
    const-string v1, "textBox"

    goto :goto_0

    .line 539
    :cond_10
    instance-of v2, p1, Landroid/widget/TimePicker;

    if-eqz v2, :cond_11

    .line 540
    const-string v1, "timePicker"

    goto :goto_0

    .line 541
    :cond_11
    instance-of v2, p1, Landroid/graphics/Canvas;

    if-eqz v2, :cond_12

    .line 542
    const-string v1, "view"

    goto :goto_0

    .line 543
    :cond_12
    instance-of v2, p1, Landroid/widget/ImageSwitcher;

    if-eqz v2, :cond_13

    .line 544
    const-string v1, "imageSwitcher"

    goto :goto_0

    .line 545
    :cond_13
    instance-of v2, p1, Landroid/app/Activity;

    if-eqz v2, :cond_14

    .line 546
    const-string v1, "page"

    goto/16 :goto_0

    .line 547
    :cond_14
    instance-of v2, p1, Landroid/widget/TabHost$TabSpec;

    if-eqz v2, :cond_15

    .line 548
    const-string v1, "tabBarItem"

    goto/16 :goto_0

    .line 549
    :cond_15
    instance-of v2, p1, Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 550
    const-string v1, "webView"

    goto/16 :goto_0
.end method

.method private setVisitedCount(Landroid/view/View;Lcom/tl/uic/model/Target;)V
    .locals 4
    .parameter "widget"
    .parameter "target"

    .prologue
    .line 469
    iget-object v2, p0, Lcom/tl/uic/Logger;->_currentActivity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/tl/uic/Logger;->_currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    iget-object v2, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v3, p0, Lcom/tl/uic/Logger;->_currentActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 471
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/TextView;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 470
    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tl/uic/model/Control;

    .line 472
    .local v0, visitedControl:Lcom/tl/uic/model/Control;
    if-nez v0, :cond_1

    const/4 v1, 0x1

    .line 473
    .local v1, visitedCount:I
    :goto_0
    invoke-virtual {p2, v1}, Lcom/tl/uic/model/Target;->setVisitedCount(I)V

    .line 475
    .end local v0           #visitedControl:Lcom/tl/uic/model/Control;
    .end local v1           #visitedCount:I
    :cond_0
    return-void

    .line 472
    .restart local v0       #visitedControl:Lcom/tl/uic/model/Control;
    :cond_1
    invoke-virtual {v0}, Lcom/tl/uic/model/Control;->getTarget()Lcom/tl/uic/model/Target;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tl/uic/model/Target;->getVisitedCount()I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    goto :goto_0
.end method

.method private trimAndMaskValueForControl(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "keyName"
    .parameter "value"
    .parameter "controlId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 487
    .local p1, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, ""

    .line 488
    .local v0, masked:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 489
    invoke-static {p3}, Lcom/tl/uic/util/ValueUtil;->trimValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 490
    invoke-static {p4, v0}, Lcom/tl/uic/util/ValueUtil;->compareListAndMask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 493
    :cond_0
    if-nez v0, :cond_1

    .end local p3
    :goto_0
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .restart local p3
    :cond_1
    move-object p3, v0

    goto :goto_0
.end method


# virtual methods
.method protected final enable(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/tl/uic/TLFCache;->startSession(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 98
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final getApplicationScreenviewOffset()J
    .locals 4

    .prologue
    .line 177
    iget-object v0, p0, Lcom/tl/uic/Logger;->loadDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tl/uic/Logger;->loadDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 180
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public final getCurrentScreenview()Lcom/tl/uic/model/Screenview;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/tl/uic/Logger;->currentScreenview:Lcom/tl/uic/model/Screenview;

    return-object v0
.end method

.method protected final logConnection(Ljava/lang/String;Lorg/apache/http/HttpResponse;JJJ)Ljava/lang/Boolean;
    .locals 5
    .parameter "url"
    .parameter "httpResponse"
    .parameter "initTime"
    .parameter "loadTime"
    .parameter "responseTime"

    .prologue
    .line 739
    new-instance v0, Lcom/tl/uic/model/Connection;

    invoke-direct {v0}, Lcom/tl/uic/model/Connection;-><init>()V

    .line 741
    .local v0, connection:Lcom/tl/uic/model/Connection;
    if-eqz p2, :cond_0

    .line 742
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 743
    .local v2, entity:Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/tl/uic/model/Connection;->setResponseDataSize(J)V

    .line 744
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/tl/uic/model/Connection;->setStatusCode(I)V

    .line 745
    if-nez p1, :cond_2

    const-string v3, "Location"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v1, 0x0

    .line 746
    .local v1, connectionUrl:Ljava/lang/String;
    :goto_0
    invoke-virtual {v0, v1}, Lcom/tl/uic/model/Connection;->setUrl(Ljava/lang/String;)V

    .line 748
    .end local v1           #connectionUrl:Ljava/lang/String;
    .end local v2           #entity:Lorg/apache/http/HttpEntity;
    :cond_0
    invoke-static {}, Lcom/tl/uic/TLFCache;->timestampFromSession()J

    move-result-wide v3

    sub-long/2addr v3, p3

    invoke-virtual {v0, v3, v4}, Lcom/tl/uic/model/Connection;->setInitTime(J)V

    .line 749
    invoke-static {}, Lcom/tl/uic/TLFCache;->timestampFromSession()J

    move-result-wide v3

    sub-long/2addr v3, p5

    invoke-virtual {v0, v3, v4}, Lcom/tl/uic/model/Connection;->setLoadTime(J)V

    .line 750
    invoke-virtual {v0, p7, p8}, Lcom/tl/uic/model/Connection;->setResponseTime(J)V

    .line 751
    invoke-static {v0}, Lcom/tl/uic/TLFCache;->addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;

    move-result-object v3

    return-object v3

    .line 745
    .restart local v2       #entity:Lorg/apache/http/HttpEntity;
    :cond_1
    const-string v3, "Location"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, p1

    goto :goto_0
.end method

.method protected final logCustomEvent(Ljava/lang/String;Ljava/util/HashMap;I)Ljava/lang/Boolean;
    .locals 1
    .parameter "eventName"
    .parameter
    .parameter "logLevel"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 618
    .local p2, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/tl/uic/TLFCache;->getLogLevel()I

    move-result v0

    if-le p3, v0, :cond_0

    .line 619
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/tl/uic/model/CustomEvent;

    invoke-direct {v0, p3, p1, p2}, Lcom/tl/uic/model/CustomEvent;-><init>(ILjava/lang/String;Ljava/util/HashMap;)V

    invoke-static {v0}, Lcom/tl/uic/TLFCache;->addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected final logEvent(Landroid/view/View;Ljava/lang/String;I)Ljava/lang/Boolean;
    .locals 2
    .parameter "view"
    .parameter "eventType"
    .parameter "logLevel"

    .prologue
    .line 207
    invoke-static {}, Lcom/tl/uic/TLFCache;->getLogLevel()I

    move-result v1

    if-le p3, v1, :cond_0

    .line 208
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 217
    :goto_0
    return-object v1

    .line 211
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/tl/uic/Logger;->createControl(Landroid/view/View;Ljava/lang/String;I)Lcom/tl/uic/model/Control;

    move-result-object v0

    .line 213
    .local v0, control:Lcom/tl/uic/model/Control;
    if-eqz p2, :cond_1

    const-string v1, "OnFocusChange_In"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {v0}, Lcom/tl/uic/TLFCache;->addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected final logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "exception"
    .parameter "extraMessage"

    .prologue
    .line 632
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/tl/uic/Logger;->logException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final logException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 5
    .parameter "exception"
    .parameter "extraMessage"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .local p3, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v4, 0x0

    .line 655
    new-instance v2, Lcom/tl/uic/model/JSONException;

    invoke-direct {v2}, Lcom/tl/uic/model/JSONException;-><init>()V

    .line 656
    .local v2, jsonException:Lcom/tl/uic/model/JSONException;
    invoke-static {p1, p2}, Lcom/tl/uic/util/LogInternal;->getExceptionMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/JSONException;->setDescription(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/JSONException;->setName(Ljava/lang/String;)V

    .line 658
    invoke-static {p1}, Lcom/tl/uic/util/LogInternal;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/JSONException;->setStackTrace(Ljava/lang/String;)V

    .line 660
    if-eqz p3, :cond_0

    .line 661
    invoke-virtual {v2, p3}, Lcom/tl/uic/model/JSONException;->setData(Ljava/util/HashMap;)V

    .line 664
    :cond_0
    invoke-static {v2}, Lcom/tl/uic/TLFCache;->addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;

    move-result-object v1

    .line 665
    .local v1, hasBeenLogged:Ljava/lang/Boolean;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/tl/uic/TLFCache;->saveToCache(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 666
    .local v0, hasBeenFlushed:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected final logException(Ljava/lang/Throwable;Ljava/util/HashMap;)Ljava/lang/Boolean;
    .locals 1
    .parameter "exception"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .prologue
    .line 643
    .local p2, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tl/uic/Logger;->logException(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/HashMap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final logScreenview(Landroid/app/Activity;Ljava/lang/String;Lcom/tl/uic/model/ScreenviewType;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 6
    .parameter "activity"
    .parameter "logicalPageName"
    .parameter "screenviewType"
    .parameter "referrer"

    .prologue
    .line 698
    new-instance v3, Lcom/tl/uic/model/Screenview;

    invoke-direct {v3, p2, p3, p4}, Lcom/tl/uic/model/Screenview;-><init>(Ljava/lang/String;Lcom/tl/uic/model/ScreenviewType;Ljava/lang/String;)V

    .line 700
    .local v3, screenview:Lcom/tl/uic/model/Screenview;
    if-eqz p3, :cond_1

    sget-object v4, Lcom/tl/uic/model/ScreenviewType;->LOAD:Lcom/tl/uic/model/ScreenviewType;

    invoke-virtual {p3, v4}, Lcom/tl/uic/model/ScreenviewType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 701
    if-nez p4, :cond_0

    iget-object v4, p0, Lcom/tl/uic/Logger;->currentScreenview:Lcom/tl/uic/model/Screenview;

    if-eqz v4, :cond_0

    .line 702
    iget-object v4, p0, Lcom/tl/uic/Logger;->currentScreenview:Lcom/tl/uic/model/Screenview;

    invoke-virtual {v4}, Lcom/tl/uic/model/Screenview;->getLogicalPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/tl/uic/model/Screenview;->setReferringLogicalPageName(Ljava/lang/String;)V

    .line 704
    :cond_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    iput-object v4, p0, Lcom/tl/uic/Logger;->loadDate:Ljava/util/Date;

    .line 705
    iput-object p1, p0, Lcom/tl/uic/Logger;->_currentActivity:Landroid/app/Activity;

    .line 708
    :cond_1
    if-eqz p3, :cond_4

    sget-object v4, Lcom/tl/uic/model/ScreenviewType;->UNLOAD:Lcom/tl/uic/model/ScreenviewType;

    invoke-virtual {p3, v4}, Lcom/tl/uic/model/ScreenviewType;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz p1, :cond_4

    .line 709
    iget-object v4, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentHashMap;

    .line 711
    .local v2, formFields:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/tl/uic/model/Control;>;"
    if-eqz v2, :cond_3

    .line 712
    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5

    .line 719
    :cond_3
    iget-object v4, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .end local v2           #formFields:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/tl/uic/model/Control;>;"
    :cond_4
    iput-object v3, p0, Lcom/tl/uic/Logger;->currentScreenview:Lcom/tl/uic/model/Screenview;

    .line 723
    invoke-static {v3}, Lcom/tl/uic/TLFCache;->addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;

    move-result-object v4

    return-object v4

    .line 712
    .restart local v2       #formFields:Ljava/util/concurrent/ConcurrentHashMap;,"Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/Integer;Lcom/tl/uic/model/Control;>;"
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 713
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/tl/uic/model/Control;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tl/uic/model/Control;

    .line 714
    .local v0, control:Lcom/tl/uic/model/Control;
    invoke-virtual {v0}, Lcom/tl/uic/model/Control;->getTarget()Lcom/tl/uic/model/Target;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tl/uic/model/Target;->getVisitedCount()I

    move-result v5

    if-nez v5, :cond_2

    .line 715
    invoke-static {v0}, Lcom/tl/uic/TLFCache;->addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;

    goto :goto_0
.end method

.method protected final logTLLibErrorException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5
    .parameter "exception"
    .parameter "extraMessage"

    .prologue
    const/4 v4, 0x0

    .line 677
    new-instance v2, Lcom/tl/uic/model/JSONException;

    invoke-direct {v2}, Lcom/tl/uic/model/JSONException;-><init>()V

    .line 678
    .local v2, jsonException:Lcom/tl/uic/model/JSONException;
    invoke-static {p1, p2}, Lcom/tl/uic/util/LogInternal;->getTLLibErrorExceptionMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/JSONException;->setDescription(Ljava/lang/String;)V

    .line 679
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/JSONException;->setName(Ljava/lang/String;)V

    .line 680
    invoke-static {p1}, Lcom/tl/uic/util/LogInternal;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tl/uic/model/JSONException;->setStackTrace(Ljava/lang/String;)V

    .line 681
    invoke-static {v2}, Lcom/tl/uic/TLFCache;->addMessage(Lcom/tl/uic/model/ClientMessageHeader;)Ljava/lang/Boolean;

    move-result-object v1

    .line 682
    .local v1, hasBeenLogged:Ljava/lang/Boolean;
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v3}, Lcom/tl/uic/TLFCache;->saveToCache(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    .line 683
    .local v0, hasBeenFlushed:Ljava/lang/Boolean;
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_0
.end method

.method protected final onDestroy(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "logicalPageName"

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is destroyed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/tl/uic/Tealeaf;->logCustomEvent(Ljava/lang/String;I)Ljava/lang/Boolean;

    .line 158
    invoke-static {}, Lcom/tl/uic/Tealeaf;->flush()Ljava/lang/Boolean;

    .line 159
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final onPause(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2
    .parameter "activity"
    .parameter "logicalPageName"

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " goes to background"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tl/uic/Tealeaf;->logCustomEvent(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 113
    sget-object v0, Lcom/tl/uic/model/ScreenviewType;->UNLOAD:Lcom/tl/uic/model/ScreenviewType;

    invoke-static {p1, p2, v0}, Lcom/tl/uic/Tealeaf;->logScreenview(Landroid/app/Activity;Ljava/lang/String;Lcom/tl/uic/model/ScreenviewType;)Ljava/lang/Boolean;

    .line 115
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final onPauseNoActivityInForeground()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 124
    invoke-static {}, Lcom/tl/uic/TLFCache;->onPause()Ljava/lang/Boolean;

    .line 125
    const-string v0, "Application goes to background"

    invoke-static {v0}, Lcom/tl/uic/Tealeaf;->logCustomEvent(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final onResume(Ljava/lang/String;Landroid/app/Activity;)Ljava/lang/Boolean;
    .locals 2
    .parameter "logicalPageName"
    .parameter "activity"

    .prologue
    .line 141
    invoke-static {}, Lcom/tl/uic/TLFCache;->onResume()Ljava/lang/Boolean;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " comes from background"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tl/uic/Tealeaf;->logCustomEvent(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 144
    sget-object v0, Lcom/tl/uic/model/ScreenviewType;->LOAD:Lcom/tl/uic/model/ScreenviewType;

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v0, v1}, Lcom/tl/uic/Logger;->logScreenview(Landroid/app/Activity;Ljava/lang/String;Lcom/tl/uic/model/ScreenviewType;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 145
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final registerFormField(Landroid/view/View;Landroid/app/Activity;I)Ljava/lang/Boolean;
    .locals 4
    .parameter "formField"
    .parameter "activity"
    .parameter "logLevel"

    .prologue
    .line 763
    const-string v1, "unchanged"

    invoke-direct {p0, p1, v1, p3}, Lcom/tl/uic/Logger;->createControl(Landroid/view/View;Ljava/lang/String;I)Lcom/tl/uic/model/Control;

    move-result-object v0

    .line 764
    .local v0, control:Lcom/tl/uic/model/Control;
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/tl/uic/model/Control;->setOffset(J)V

    .line 765
    invoke-virtual {v0}, Lcom/tl/uic/model/Control;->getTarget()Lcom/tl/uic/model/Target;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/tl/uic/model/Target;->setVisitedCount(I)V

    .line 767
    iget-object v1, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 768
    iget-object v1, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    iget-object v1, p0, Lcom/tl/uic/Logger;->_formActivities:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected final startSession(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .parameter "sessionId"

    .prologue
    .line 194
    invoke-static {p1}, Lcom/tl/uic/TLFCache;->startSession(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected final terminate()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tl/uic/Logger;->_application:Landroid/app/Application;

    .line 169
    invoke-static {}, Lcom/tl/uic/TLFCache;->terminate()Ljava/lang/Boolean;

    .line 170
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
