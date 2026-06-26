# newclasses.dex

.class public Landroidx/preference/XMiuiDropDownPreference;
.super Lmiuix/preference/DropDownPreference;
.source "XMiuiDropDownPreference.java"


# instance fields
.field private Helper:Landroidx/preference/XMiuiPreferenceHelper;

.field private mEnableSummary:Z

.field private mEntries:[Ljava/lang/CharSequence;

.field private mLastState:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lmiuix/preference/DropDownPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mValueSet:Z

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setPersistent(Z)V

    new-instance v0, Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {v0, p1, p2}, Landroidx/preference/XMiuiPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-direct {p0}, Landroidx/preference/XMiuiDropDownPreference;->initial()V

    return-void
.end method

.method static synthetic access$000(Landroidx/preference/XMiuiDropDownPreference;)V
    .registers 1

    invoke-direct {p0}, Landroidx/preference/XMiuiDropDownPreference;->initial()V

    return-void
.end method

.method private checkIconsForEntries()V
    .registers 10

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v0, :cond_59

    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_1a
    if-ge v5, v3, :cond_2f

    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    const-class v8, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2c

    move-object v2, v6

    goto :goto_2f

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    :cond_2f
    :goto_2f
    const/4 v3, 0x0

    if-eqz v2, :cond_59

    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :try_start_36
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_36 .. :try_end_3a} :catch_3c

    move-object v3, v6

    goto :goto_3d

    :catch_3c
    move-exception v6

    :goto_3d
    if-eqz v3, :cond_40

    move v4, v5

    :cond_40
    iput-boolean v4, p0, Landroidx/preference/XMiuiDropDownPreference;->mEnableSummary:Z

    if-eqz v4, :cond_59

    iget-object v4, p0, Landroidx/preference/XMiuiDropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v4, v4

    new-array v4, v4, [Ljava/lang/CharSequence;

    const/4 v5, 0x0

    :goto_4a
    iget-object v6, p0, Landroidx/preference/XMiuiDropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    array-length v6, v6

    if-ge v5, v6, :cond_56

    const-string v6, ""

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4a

    :cond_56
    invoke-virtual {p0, v4}, Landroidx/preference/XMiuiDropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    :cond_59
    return-void
.end method

.method private getDependents(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_5} :catch_9

    if-gtz v1, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0

    :catch_9
    move-exception v1

    return v0
.end method

.method private init()V
    .registers 5

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Landroidx/preference/XMiuiDropDownPreference$1;

    invoke-direct {v1, p0}, Landroidx/preference/XMiuiDropDownPreference$1;-><init>(Landroidx/preference/XMiuiDropDownPreference;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private initial()V
    .registers 5

    sget-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Landroidx/preference/XMiuiDropDownPreference;->mValueSet:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mValueSet:Z

    if-nez v0, :cond_81

    sget-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v3}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-eqz v0, :cond_70

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    sget-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setValueIndex(I)V

    invoke-direct {p0}, Landroidx/preference/XMiuiDropDownPreference;->checkIconsForEntries()V

    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_81

    :cond_70
    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->onSetInitialValue(Ljava/lang/Object;)V

    return-void

    :cond_81
    :goto_81
    return-void
.end method


# virtual methods
.method public callChangeListener(Ljava/lang/Object;)Z
    .registers 6

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callChangeListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    if-eqz v1, :cond_57

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1, v0}, Landroidx/preference/XMiuiPreferenceHelper;->putStr(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->getDependents(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/preference/XMiuiDropDownPreference;->notifyDependencyChange(Z)V

    const/4 v1, 0x1

    return v1

    :cond_57
    invoke-super {p0, p1}, Lmiuix/preference/DropDownPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getEntry()Ljava/lang/CharSequence;
    .registers 3

    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getValueIndex()I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    if-nez v1, :cond_b

    goto :goto_e

    :cond_b
    aget-object v1, v1, v0

    return-object v1

    :cond_e
    :goto_e
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 9

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getValueIndex()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    array-length v3, v0

    if-ge v1, v3, :cond_12

    if-gez v1, :cond_f

    goto :goto_12

    :cond_f
    aget-object v3, v0, v1

    goto :goto_13

    :cond_12
    :goto_12
    const/4 v3, 0x0

    :goto_13
    invoke-super {p0}, Lmiuix/preference/DropDownPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_2b

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    if-nez v3, :cond_24

    const-string v3, ""

    :cond_24
    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2b
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_33

    move-object v5, v4

    goto :goto_34

    :cond_33
    move-object v5, v2

    :goto_34
    return-object v5
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    return-object v0
.end method

.method public getValueIndex()I
    .registers 2

    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mValueSet:Z

    sget-object v0, Landroidx/preference/XMiuiPreferenceHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSetInitialValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v2}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->isValidateKey()Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    goto :goto_56

    :cond_43
    if-eqz p1, :cond_56

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/XMiuiPreferenceHelper;->putStr(Ljava/lang/String;)V

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v0}, Landroidx/preference/XMiuiPreferenceHelper;->sendIntent()V

    :cond_56
    :goto_56
    invoke-direct {p0}, Landroidx/preference/XMiuiDropDownPreference;->checkIconsForEntries()V

    iget-object v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mLastState:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setValueIndex(I)V

    invoke-virtual {p0}, Landroidx/preference/XMiuiDropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/XMiuiDropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .registers 3

    iget-boolean v0, p0, Landroidx/preference/XMiuiDropDownPreference;->mEnableSummary:Z

    if-eqz v0, :cond_7

    invoke-super {p0, p1}, Lmiuix/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7
    return-void
.end method

.method public shouldDisableDependents()Z
    .registers 3

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroidx/preference/XMiuiDropDownPreference;->Helper:Landroidx/preference/XMiuiPreferenceHelper;

    invoke-virtual {v1}, Landroidx/preference/XMiuiPreferenceHelper;->getStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_b} :catch_f

    if-gtz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0

    :catch_f
    move-exception v1

    return v0
.end method

.method public shouldPersist()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
