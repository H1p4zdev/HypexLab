# newclasses.dex

.class public Landroidx/preference/XMiuiCoreSettingsPreference;
.super Ljava/lang/Object;
.source "XMiuiCoreSettingsPreference.java"


# instance fields
.field private attrs:Landroid/util/AttributeSet;

.field private mContext:Landroid/content/Context;

.field private mIntent:Ljava/lang/String;

.field private mKey:Ljava/lang/String;

.field public mStorageType:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LaunchCustomApplication(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1a
    return-void
.end method

.method private SelectStorage(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2a

    const-string v2, "global"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "Global"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_13
    const/4 v0, 0x1

    move v1, v0

    :goto_15
    return v1

    :cond_16
    const-string/jumbo v2, "secure"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    const-string v2, "Secure"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    :cond_27
    const/4 v0, 0x2

    move v1, v0

    goto :goto_15

    :cond_2a
    move v1, v0

    goto :goto_15
.end method

.method public static getKeyParam(Landroid/content/Context;Ljava/lang/String;)I
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getKeyTime(Landroid/content/Context;Ljava/lang/String;)J
    .registers 6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-static {v0, p1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public DrawableToID(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public IDtoID(Ljava/lang/String;)I
    .registers 5

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public IDtoID_FUxiaomi(Ljava/lang/String;)I
    .registers 6

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "id"

    iget-object v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public LayoutToID(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "layout"

    iget-object v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public StyleToID(Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "style"

    const-string v2, "android"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->attrs:Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1, p2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->attrs:Landroid/util/AttributeSet;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntegerValue(I)Ljava/lang/Integer;
    .registers 5

    :try_start_0
    iget v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mStorageType:I
    :try_end_2
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_2} :catch_3d

    packed-switch v1, :pswitch_data_42

    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_9
    return-object v1

    :pswitch_a  #0x0
    :try_start_a
    iget-object v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :pswitch_1b  #0x1
    iget-object v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_9

    :pswitch_2c  #0x2
    iget-object v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_3b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_a .. :try_end_3b} :catch_3d

    move-result-object v1

    goto :goto_9

    :catch_3d
    move-exception v0

    invoke-virtual {p0, p1}, Landroidx/preference/XMiuiCoreSettingsPreference;->setIntegerValue(I)V

    goto :goto_5

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_a  #00000000
        :pswitch_1b  #00000001
        :pswitch_2c  #00000002
    .end packed-switch
.end method

.method public getStringValue()Ljava/lang/String;
    .registers 5

    iget-object v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    iget v3, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mStorageType:I

    packed-switch v3, :pswitch_data_1e

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :pswitch_f  #0x0
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_14  #0x1
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_19  #0x2
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_14  #00000001
        :pswitch_19  #00000002
    .end packed-switch
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    iget v3, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mStorageType:I

    packed-switch v3, :pswitch_data_22

    :goto_e
    if-eqz v0, :cond_20

    :goto_10
    return-object v0

    :pswitch_11  #0x0
    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_16  #0x1
    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :pswitch_1b  #0x2
    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    :cond_20
    move-object v0, p1

    goto :goto_10

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_11  #00000000
        :pswitch_16  #00000001
        :pswitch_1b  #00000002
    .end packed-switch
.end method

.method public initSummary(Ljava/lang/CharSequence;)[Ljava/lang/String;
    .registers 6

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x1

    const-string v3, "%s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    return-object v0
.end method

.method public initialization(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->attrs:Landroid/util/AttributeSet;

    iput-object p3, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    const-string v0, "intent"

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiCoreSettingsPreference;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mIntent:Ljava/lang/String;

    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiCoreSettingsPreference;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiCoreSettingsPreference;->SelectStorage(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mStorageType:I

    return-void
.end method

.method public sendIntent()V
    .registers 4

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mIntent:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_e
    return-void
.end method

.method public setBridge(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    if-eqz p1, :cond_4

    iput-object p1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    :cond_4
    if-eqz p2, :cond_8

    iput-object p2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->attrs:Landroid/util/AttributeSet;

    :cond_8
    return-void
.end method

.method public setIntegerValue(I)V
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mStorageType:I

    packed-switch v2, :pswitch_data_1a

    :goto_d
    return-void

    :pswitch_e  #0x0
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    :pswitch_12  #0x1
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    :pswitch_16  #0x2
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_d

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_12  #00000001
        :pswitch_16  #00000002
    .end packed-switch
.end method

.method public setStringValue(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mKey:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XMiuiCoreSettingsPreference;->mStorageType:I

    packed-switch v2, :pswitch_data_1a

    :goto_d
    return-void

    :pswitch_e  #0x0
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    :pswitch_12  #0x1
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    :pswitch_16  #0x2
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_12  #00000001
        :pswitch_16  #00000002
    .end packed-switch
.end method
