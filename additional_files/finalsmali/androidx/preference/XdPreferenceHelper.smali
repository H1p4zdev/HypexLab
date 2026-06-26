# xdclasses.dex

.class public Landroidx/preference/XdPreferenceHelper;
.super Ljava/lang/Object;
.source "XdPreferenceHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "XD_PREFS "


# instance fields
.field private final AUTHOR:Ljava/lang/String;

.field private BUILD_VER:Ljava/lang/String;

.field private final attrs:Landroid/util/AttributeSet;

.field private final contentResolver:Landroid/content/ContentResolver;

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;
    .param p3, "contentResolver"  # Landroid/content/ContentResolver;
    .param p4, "ver"  # Ljava/lang/String;

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-string v0, "Mod created by @iputobject"

    iput-object v0, p0, Landroidx/preference/XdPreferenceHelper;->AUTHOR:Ljava/lang/String;

    .line 25
    iput-object p1, p0, Landroidx/preference/XdPreferenceHelper;->context:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Landroidx/preference/XdPreferenceHelper;->attrs:Landroid/util/AttributeSet;

    .line 27
    iput-object p3, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    .line 28
    iput-object p4, p0, Landroidx/preference/XdPreferenceHelper;->BUILD_VER:Ljava/lang/String;

    .line 30
    return-void
.end method

.method private getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "type"  # Ljava/lang/String;

    .line 166
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XdPreferenceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected getArrayFromAttr(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 8
    .param p1, "namespace"  # Ljava/lang/String;
    .param p2, "attrName"  # Ljava/lang/String;

    .line 209
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "attrValue":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_46

    .line 211
    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 214
    const/4 v2, 0x1

    :try_start_12
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 215
    .local v2, "resId":I
    iget-object v3, p0, Landroidx/preference/XdPreferenceHelper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1
    :try_end_24
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_12 .. :try_end_24} :catch_25
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_24} :catch_25

    return-object v1

    .line 216
    .end local v2  # "resId":I
    :catch_25
    move-exception v2

    .line 217
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid resource reference for array: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "XD_PREFS "

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    return-object v1

    .line 222
    .end local v2  # "e":Ljava/lang/RuntimeException;
    :cond_3f
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 225
    :cond_46
    return-object v1
.end method

.method public getBool(Ljava/lang/String;ZI)Z
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Z
    .param p3, "type"  # I

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Landroidx/preference/XdPreferenceHelper;->getInt(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method protected getBooleanFromAttr(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "namespace"  # Ljava/lang/String;
    .param p2, "attrName"  # Ljava/lang/String;
    .param p3, "def"  # Z

    .line 200
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getColor(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 182
    const-string v0, "color"

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdPreferenceHelper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDrawable(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 178
    const-string v0, "drawable"

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdPreferenceHelper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 170
    const-string v0, "id"

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdPreferenceHelper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;II)I
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "def"  # I
    .param p3, "type"  # I

    .line 52
    packed-switch p3, :pswitch_data_18

    .line 58
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 56
    :pswitch_a  #0x2
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 54
    :pswitch_11  #0x1
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_a  #00000002
    .end packed-switch
.end method

.method protected getIntFromAttr(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 5
    .param p1, "namespace"  # Ljava/lang/String;
    .param p2, "attrName"  # Ljava/lang/String;
    .param p3, "def"  # I

    .line 204
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLayout(Ljava/lang/String;)I
    .registers 3
    .param p1, "name"  # Ljava/lang/String;

    .line 174
    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdPreferenceHelper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getPropBoolean(Ljava/lang/String;Z)Z
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Z

    .line 123
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 125
    :catch_5
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Target Prop isn\'t read-able"

    invoke-virtual {p0, v1}, Landroidx/preference/XdPreferenceHelper;->showToast(Ljava/lang/String;)V

    .line 128
    .end local v0  # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return v0
.end method

.method protected getPropString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "defaultValue"  # Ljava/lang/String;

    .line 145
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 147
    :catch_5
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Target Prop isn\'t read-able"

    invoke-virtual {p0, v1}, Landroidx/preference/XdPreferenceHelper;->showToast(Ljava/lang/String;)V

    .line 150
    .end local v0  # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "def"  # Ljava/lang/String;
    .param p3, "type"  # I

    .line 83
    packed-switch p3, :pswitch_data_1e

    .line 91
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "value":Ljava/lang/String;
    goto :goto_18

    .line 88
    .end local v0  # "value":Ljava/lang/String;
    :pswitch_a  #0x2
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .restart local v0  # "value":Ljava/lang/String;
    goto :goto_18

    .line 85
    .end local v0  # "value":Ljava/lang/String;
    :pswitch_11  #0x1
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0  # "value":Ljava/lang/String;
    nop

    .line 94
    :goto_18
    if-eqz v0, :cond_1c

    move-object v1, v0

    goto :goto_1d

    :cond_1c
    move-object v1, p2

    :goto_1d
    return-object v1

    :pswitch_data_1e
    .packed-switch 0x1
        :pswitch_11  #00000001
        :pswitch_a  #00000002
    .end packed-switch
.end method

.method protected getStringFromAttr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "namespace"  # Ljava/lang/String;
    .param p2, "attrName"  # Ljava/lang/String;
    .param p3, "def"  # Ljava/lang/String;

    .line 187
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->attrs:Landroid/util/AttributeSet;

    invoke-interface {v0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "attrValue":Ljava/lang/String;
    if-eqz v0, :cond_26

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 190
    const/4 v1, 0x1

    :try_start_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 191
    .local v1, "resId":I
    iget-object v2, p0, Landroidx/preference/XdPreferenceHelper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_23
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_11 .. :try_end_23} :catch_24
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_23} :catch_24

    return-object v2

    .line 192
    .end local v1  # "resId":I
    :catch_24
    move-exception v1

    .line 193
    .local v1, "e":Ljava/lang/RuntimeException;
    return-object p3

    .line 196
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :cond_26
    return-object v0
.end method

.method public putBool(Ljava/lang/String;ZI)V
    .registers 4
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Z
    .param p3, "type"  # I

    .line 98
    invoke-virtual {p0, p1, p2, p3}, Landroidx/preference/XdPreferenceHelper;->putInt(Ljava/lang/String;II)V

    .line 99
    return-void
.end method

.method public putInt(Ljava/lang/String;II)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # I
    .param p3, "type"  # I

    .line 35
    packed-switch p3, :pswitch_data_32

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XD_PREFS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XdPreferenceHelper;->BUILD_VER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid type for putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 43
    :pswitch_1e  #0x2
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    goto :goto_30

    .line 40
    :pswitch_24  #0x1
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 41
    goto :goto_30

    .line 37
    :pswitch_2a  #0x0
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 38
    nop

    .line 49
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_24  #00000001
        :pswitch_1e  #00000002
    .end packed-switch
.end method

.method protected putPropBoolean(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Z

    .line 113
    :try_start_0
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 117
    goto :goto_e

    .line 115
    :catch_8
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Target Prop isn\'t write-able"

    invoke-virtual {p0, v1}, Landroidx/preference/XdPreferenceHelper;->showToast(Ljava/lang/String;)V

    .line 118
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_e
    return-void
.end method

.method protected putPropString(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;

    .line 133
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    .line 137
    goto :goto_a

    .line 135
    :catch_4
    move-exception v0

    .line 136
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Target Prop isn\'t write-able"

    invoke-virtual {p0, v1}, Landroidx/preference/XdPreferenceHelper;->showToast(Ljava/lang/String;)V

    .line 140
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_a
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 6
    .param p1, "key"  # Ljava/lang/String;
    .param p2, "value"  # Ljava/lang/String;
    .param p3, "type"  # I

    .line 65
    packed-switch p3, :pswitch_data_32

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XD_PREFS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XdPreferenceHelper;->BUILD_VER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Invalid type for putInt"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_30

    .line 73
    :pswitch_1e  #0x2
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 74
    goto :goto_30

    .line 70
    :pswitch_24  #0x1
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 71
    goto :goto_30

    .line 67
    :pswitch_2a  #0x0
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 68
    nop

    .line 79
    :goto_30
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_2a  #00000000
        :pswitch_24  #00000001
        :pswitch_1e  #00000002
    .end packed-switch
.end method

.method public sendIntent(Ljava/lang/String;)V
    .registers 4
    .param p1, "mIntent"  # Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sending Broadcust on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XD_PREFS "

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2c

    .line 160
    :cond_21
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 161
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroidx/preference/XdPreferenceHelper;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 162
    return-void

    .line 158
    .end local v0  # "intent":Landroid/content/Intent;
    :cond_2c
    :goto_2c
    return-void
.end method

.method protected showToast(Ljava/lang/String;)V
    .registers 4
    .param p1, "s"  # Ljava/lang/String;

    .line 107
    iget-object v0, p0, Landroidx/preference/XdPreferenceHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 108
    return-void
.end method
