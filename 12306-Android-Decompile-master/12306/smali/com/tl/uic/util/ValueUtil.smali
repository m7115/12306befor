.class public final Lcom/tl/uic/util/ValueUtil;
.super Ljava/lang/Object;
.source "ValueUtil.java"


# static fields
.field private static volatile _myInstance:Lcom/tl/uic/util/ValueUtil;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static compareListAndMask(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "id"
    .parameter "value"

    .prologue
    .line 95
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 109
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 99
    .restart local p1
    :cond_1
    const-string v4, "MaskIdList"

    invoke-static {v4}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, keys:[Ljava/lang/String;
    array-length v5, v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v3, v0, v4

    .line 102
    .local v3, string:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 103
    .local v2, pattern:Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 104
    .local v1, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 105
    invoke-static {p1}, Lcom/tl/uic/util/ValueUtil;->maskValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 101
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method public static getInstance()Lcom/tl/uic/util/ValueUtil;
    .locals 2

    .prologue
    .line 27
    sget-object v0, Lcom/tl/uic/util/ValueUtil;->_myInstance:Lcom/tl/uic/util/ValueUtil;

    if-nez v0, :cond_0

    .line 28
    const-class v1, Lcom/tl/uic/util/ValueUtil;

    monitor-enter v1

    .line 29
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/ValueUtil;

    invoke-direct {v0}, Lcom/tl/uic/util/ValueUtil;-><init>()V

    sput-object v0, Lcom/tl/uic/util/ValueUtil;->_myInstance:Lcom/tl/uic/util/ValueUtil;

    .line 28
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    :cond_0
    sget-object v0, Lcom/tl/uic/util/ValueUtil;->_myInstance:Lcom/tl/uic/util/ValueUtil;

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static maskValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "originalValue"

    .prologue
    .line 64
    move-object v6, p0

    .line 65
    .local v6, value:Ljava/lang/String;
    const-string v7, "HasMasking"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    .line 66
    .local v2, hasMasking:Ljava/lang/Boolean;
    const-string v7, "HasCustomMask"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    .line 67
    .local v1, hasCustomMasking:Ljava/lang/Boolean;
    const-string v7, "SensitiveSmallCaseAlphabet"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, smallCase:Ljava/lang/String;
    const-string v7, "SensitiveCapitalCaseAlphabet"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, capitalCase:Ljava/lang/String;
    const-string v7, "SensitiveSymbol"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 70
    .local v5, symbol:Ljava/lang/String;
    const-string v7, "SensitiveNumber"

    invoke-static {v7}, Lcom/tl/uic/util/ConfigurationUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, number:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 74
    const-string v7, "\\p{Ll}"

    invoke-virtual {v6, v7, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 75
    const-string v7, "\\p{Lu}"

    invoke-virtual {v6, v7, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 76
    const-string v7, "\\p{P}|\\p{S}"

    invoke-virtual {v6, v7, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 77
    const-string v7, "\\p{N}"

    invoke-virtual {v6, v7, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    move-object v7, v6

    .line 84
    :goto_0
    return-object v7

    .line 80
    :cond_1
    const-string v7, ""

    goto :goto_0
.end method

.method public static trimValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 54
    .end local p0
    :goto_0
    return-object p0

    .line 46
    .restart local p0
    :cond_0
    const-string v2, "MaxStringsLength"

    invoke-static {v2}, Lcom/tl/uic/util/ConfigurationUtil;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 47
    .local v0, maxLength:I
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 49
    .local v1, stringBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 50
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuffer;

    .line 54
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 52
    :cond_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
