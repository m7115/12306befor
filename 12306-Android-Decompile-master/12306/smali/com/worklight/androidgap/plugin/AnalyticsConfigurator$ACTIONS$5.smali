.class final enum Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS$5;
.super Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.source "AnalyticsConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator$ACTIONS;-><init>(Ljava/lang/String;ILcom/worklight/androidgap/plugin/AnalyticsConfigurator$1;)V

    return-void
.end method


# virtual methods
.method public doAction(Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;Ljava/lang/String;)V
    .locals 1
    .parameter "configurator"
    .parameter "value"

    .prologue
    .line 338
    sget-object v0, Lcom/worklight/androidgap/plugin/AnalyticsConfigurator;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 339
    return-void
.end method
