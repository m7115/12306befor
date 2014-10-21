.class public final Lcom/tl/uic/util/LogInternal;
.super Ljava/lang/Object;
.source "LogInternal.java"


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x1

.field public static final INFO:I = 0x3

.field public static final VERBOSE:I = 0x5

.field public static final WARNING:I = 0x4

.field private static _isDEBUG:Z

.field private static volatile _myInstance:Lcom/tl/uic/util/LogInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tl/uic/util/LogInternal;->_isDEBUG:Z

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public static getExceptionMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "exception"
    .parameter "extraMessage"

    .prologue
    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 96
    .local v0, exceptionMessage:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 98
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getExceptionString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "exception"
    .parameter "extraMessage"

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v0, exceptionMessage:Ljava/lang/StringBuffer;
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-static {p0}, Lcom/tl/uic/util/LogInternal;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance()Lcom/tl/uic/util/LogInternal;
    .locals 2

    .prologue
    .line 36
    sget-object v0, Lcom/tl/uic/util/LogInternal;->_myInstance:Lcom/tl/uic/util/LogInternal;

    if-nez v0, :cond_0

    .line 37
    const-class v1, Lcom/tl/uic/util/LogInternal;

    monitor-enter v1

    .line 38
    :try_start_0
    new-instance v0, Lcom/tl/uic/util/LogInternal;

    invoke-direct {v0}, Lcom/tl/uic/util/LogInternal;-><init>()V

    sput-object v0, Lcom/tl/uic/util/LogInternal;->_myInstance:Lcom/tl/uic/util/LogInternal;

    .line 37
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    :cond_0
    sget-object v0, Lcom/tl/uic/util/LogInternal;->_myInstance:Lcom/tl/uic/util/LogInternal;

    return-object v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3
    .parameter "aThrowable"

    .prologue
    .line 161
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 162
    .local v1, result:Ljava/io/Writer;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 163
    .local v0, printWriter:Ljava/io/PrintWriter;
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTLLibErrorExceptionMessage(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "exception"
    .parameter "extraMessage"

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 111
    .local v0, exceptionMessage:Ljava/lang/StringBuffer;
    const-string v1, "TL Library Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 117
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTLLibErrorExceptionString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "exception"
    .parameter "extraMessage"

    .prologue
    .line 144
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 145
    .local v0, exceptionMessage:Ljava/lang/StringBuffer;
    const-string v1, "TL Library Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    if-eqz p1, :cond_0

    .line 148
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 151
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 152
    invoke-static {p0}, Lcom/tl/uic/util/LogInternal;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isDEBUG()Z
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/tl/uic/util/LogInternal;->_isDEBUG:Z

    return v0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 62
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;I)V

    .line 63
    return-void
.end method

.method public static log(Ljava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "logType"

    .prologue
    .line 172
    invoke-static {}, Lcom/tl/uic/util/LogInternal;->isDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 174
    const-string v0, "UICAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 185
    const-string v0, "UICAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_1
    return-void

    .line 175
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    .line 176
    const-string v0, "UICAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 177
    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 178
    const-string v0, "UICAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 180
    const-string v0, "UICAndroid"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "exception"
    .parameter "extraMessage"

    .prologue
    const/4 v2, 0x1

    .line 78
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-static {p0, p1}, Lcom/tl/uic/util/LogInternal;->getTLLibErrorExceptionString(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, exMessage:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/tl/uic/util/LogInternal;->log(Ljava/lang/String;I)V

    .line 80
    invoke-static {}, Lcom/tl/uic/Tealeaf;->isEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 81
    invoke-static {p0, p1}, Lcom/tl/uic/Tealeaf;->logTLLibErrorException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 84
    :cond_0
    const/4 v0, 0x0

    .line 85
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method public static logException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "exception"

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tl/uic/util/LogInternal;->logException(Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/Boolean;

    .line 70
    return-void
.end method

.method public static setIsDEBUG(Z)V
    .locals 0
    .parameter "isDEBUG"

    .prologue
    .line 55
    sput-boolean p0, Lcom/tl/uic/util/LogInternal;->_isDEBUG:Z

    .line 56
    return-void
.end method
