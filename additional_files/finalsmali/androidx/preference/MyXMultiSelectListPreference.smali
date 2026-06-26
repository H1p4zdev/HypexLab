# fixclasses.dex

.class public Landroidx/preference/MyXMultiSelectListPreference;
.super Landroidx/preference/MultiSelectListPreference;
.source "MyXMultiSelectListPreference.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field protected mMyPreference:Landroidx/preference/MyXPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    new-instance v0, Landroidx/preference/MyXPreference;

    invoke-direct {v0, p1, p2}, Landroidx/preference/MyXPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/preference/MyXMultiSelectListPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v0, "defaultValue"

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1a

    invoke-virtual {p0, v0}, Landroidx/preference/MyXMultiSelectListPreference;->onSetInitialValue(Ljava/lang/Object;)V

    :cond_1a
    return-void
.end method

.method private checkDependency()V
    .registers 3

    invoke-virtual {p0}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    instance-of v1, v0, Landroidx/preference/MyXCheckBoxPreference;

    if-eqz v1, :cond_13

    goto :goto_26

    :cond_13
    instance-of v1, v0, Landroidx/preference/MyXListPreference;

    if-eqz v1, :cond_1d

    check-cast v0, Landroidx/preference/MyXListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/MyXListPreference;->registerDependent(Landroidx/preference/Preference;)Z

    goto :goto_26

    :cond_1d
    instance-of v1, v0, Landroidx/preference/MyXDropDownPreference;

    if-eqz v1, :cond_26

    check-cast v0, Landroidx/preference/MyXDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/MyXDropDownPreference;->registerDependent(Landroidx/preference/Preference;)Z

    :cond_26
    :goto_26
    return-void
.end method

.method private createSet(Ljava/lang/Object;)Ljava/util/Set;
    .registers 8

    iget-object v0, p0, Landroidx/preference/MyXMultiSelectListPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    invoke-virtual {p0}, Landroidx/preference/MyXMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXMultiSelectListPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_39

    instance-of v5, p1, Ljava/lang/String;

    if-nez v5, :cond_3b

    check-cast p1, Ljava/util/Set;

    const-string v5, ","

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/MyXPreference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    move-object v5, p1

    goto :goto_5e

    :cond_39
    const-string p1, ""

    :cond_3b
    invoke-virtual {v0, v1, v2, p1}, Landroidx/preference/MyXPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const v2, -0x1

    :cond_4e
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    if-ge v2, v1, :cond_5e

    aget-object v3, v0, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4e

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_5e
    :goto_5e
    return-object v5
.end method

.method private getMultiDescription(Ljava/util/Set;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/preference/MyXMultiSelectListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x1

    :catch_e
    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Landroidx/preference/MyXMultiSelectListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v3

    if-eqz v2, :cond_27

    :try_start_20
    aget-object v3, v0, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_e

    :cond_27
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, v0, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3d
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_20 .. :try_end_3d} :catch_e

    goto :goto_e

    :cond_3e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_49

    return-object v0

    :cond_49
    const-string v0, "-"

    return-object v0
.end method


# virtual methods
.method public findIndexOfValue(Ljava/lang/String;)I
    .registers 5

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Landroidx/preference/MyXMultiSelectListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1b

    array-length v0, v2

    :cond_9
    :goto_9
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1b

    aget-object v1, v2, v0

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    return v0

    goto :goto_9

    :cond_1b
    const/4 v0, -0x1

    return v0
.end method

.method public getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .registers 2

    iget-object v0, p0, Landroidx/preference/MyXMultiSelectListPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iget-object v0, v0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Landroidx/preference/MyXMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/MyXMultiSelectListPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroidx/preference/MyXPreference;->setMargin(Landroid/view/View;Landroid/content/Context;)I

    invoke-direct {p0}, Landroidx/preference/MyXMultiSelectListPreference;->checkDependency()V

    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/preference/MyXMultiSelectListPreference;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_15

    :cond_e
    iget-object v0, p0, Landroidx/preference/MyXMultiSelectListPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iget-boolean v0, v0, Landroidx/preference/MyXPreference;->mDisableLongClick:Z

    if-nez v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    :goto_15
    return v1
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    const/4 v1, 0x0

    if-eqz p2, :cond_1c

    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p2}, Landroidx/preference/MyXMultiSelectListPreference;->getMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p2}, Landroidx/preference/MyXMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    invoke-direct {p0, p2}, Landroidx/preference/MyXMultiSelectListPreference;->createSet(Ljava/lang/Object;)Ljava/util/Set;

    iget-object v0, p0, Landroidx/preference/MyXMultiSelectListPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    invoke-virtual {p0}, Landroidx/preference/MyXMultiSelectListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/MyXPreference;->sendIntent(Landroid/content/Context;)V

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 2

    if-nez p1, :cond_6

    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_6
    check-cast p1, Landroidx/preference/Preference$BaseSavedState;

    invoke-virtual {p1}, Landroid/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/preference/MultiSelectListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/preference/MyXMultiSelectListPreference;->createSet(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    invoke-direct {p0, p1}, Landroidx/preference/MyXMultiSelectListPreference;->getMultiDescription(Ljava/util/Set;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/preference/MyXMultiSelectListPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iput-object p1, v0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method
