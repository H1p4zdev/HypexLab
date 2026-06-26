# fixclasses.dex

.class public Landroidx/preference/MyXSelectAppsPreference;
.super Landroidx/preference/Preference;
.source "MyXSelectAppsPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field private divider:Z

.field private lvDetail:Landroid/widget/ListView;

.field mCheckedTitle:Ljava/lang/String;

.field mExtra:I

.field private mLoadApps:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

.field protected mMyPreference:Landroidx/preference/MyXPreference;

.field private mProgressContainer:Landroid/widget/LinearLayout;

.field mShown:Z

.field mUncheckedTitle:Ljava/lang/String;

.field private tvCount:Landroid/widget/TextView;

.field wifiReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroidx/preference/MyXPreference;

    invoke-direct {v0, p1, p2}, Landroidx/preference/MyXPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/preference/MyXSelectAppsPreference;->wifiReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v1, p0, Landroidx/preference/MyXSelectAppsPreference;->mShown:Z

    const-string v0, "checkedTitle"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1c

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24

    :cond_1c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_24
    if-nez v0, :cond_28

    const-string v0, ""

    :cond_28
    iput-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mCheckedTitle:Ljava/lang/String;

    const-string/jumbo v0, "uncheckedTitle"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_38

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    :cond_38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_40
    if-nez v0, :cond_44

    const-string v0, ""

    :cond_44
    iput-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mUncheckedTitle:Ljava/lang/String;

    const-string/jumbo v0, "share"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_77

    const-string v0, "activities"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x2

    if-nez v2, :cond_77

    const-string/jumbo v0, "openWith"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_77

    const-string/jumbo v0, "wifi"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x4

    if-nez v2, :cond_77

    const-string v0, "installed"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    const/4 v3, 0x5

    if-nez v2, :cond_77

    const/4 v3, 0x0

    :cond_77
    iput v3, p0, Landroidx/preference/MyXSelectAppsPreference;->mExtra:I

    const-string v0, "divider"

    const/4 v2, 0x1

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Landroidx/preference/MyXSelectAppsPreference;->divider:Z

    return-void
.end method

.method static synthetic access$1(Landroidx/preference/MyXSelectAppsPreference;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->lvDetail:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2(Landroidx/preference/MyXSelectAppsPreference;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mProgressContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Landroidx/preference/MyXSelectAppsPreference;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    const-string/jumbo v3, ""

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/MyXPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRemovePackage(Ljava/lang/String;Z)Z
    .registers 9

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/MyXPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_25

    const-string v2, "\u0001"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_61

    :cond_2d
    const/4 v0, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_65

    const-string v5, "\u0001"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_65

    const/4 v0, 0x0

    const/4 v2, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_43
    array-length v4, v3

    if-ge v0, v4, :cond_5d

    aget-object v4, v3, v0

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5a

    if-eqz v2, :cond_55

    const-string v5, "\u0001"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_55
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_43

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_61
    invoke-virtual {p0, v0}, Landroidx/preference/MyXSelectAppsPreference;->setString(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_65
    return v0
.end method

.method private addRemovePackageActivity(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 10

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/MyXPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_aa

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/MyXSelectAppsPreference;->existActivityInString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_b6

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u0003"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    :cond_35
    const-string v2, "\u0003"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "\u0001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5d
    if-ge v1, v2, :cond_8c

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_89

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\u0003"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v3, "\u0001"

    invoke-direct {p0, v3, v0}, Landroidx/preference/MyXSelectAppsPreference;->join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    :cond_89
    add-int/lit8 v1, v1, 0x1

    goto :goto_5d

    :cond_8c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "\u0001"

    invoke-direct {p0, v3, v0}, Landroidx/preference/MyXSelectAppsPreference;->join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    goto :goto_a5

    :goto_a5
    invoke-virtual {p0, v0}, Landroidx/preference/MyXSelectAppsPreference;->setString(Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_b6

    :cond_aa
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/preference/MyXSelectAppsPreference;->existActivityInString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_b6

    invoke-virtual {p0, v1}, Landroidx/preference/MyXSelectAppsPreference;->setString(Ljava/lang/String;)V

    const/4 v2, 0x1

    :cond_b6
    :goto_b6
    return v2
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

.method private existActivityInString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 11

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8f

    const-string v5, "\u0003"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "\u0001"

    invoke-virtual {p3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2e
    if-ge v1, v2, :cond_8f

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8c

    const-string v5, "\u0003"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v3, 0x1

    :goto_4f
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_8c

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_89

    if-eqz p4, :cond_82

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-gt v3, v5, :cond_79

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_82

    const-string v0, ""

    goto :goto_88

    :cond_79
    const-string v3, "\u0003"

    invoke-direct {p0, v3, v4}, Landroidx/preference/MyXSelectAppsPreference;->join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_82
    const-string v3, "\u0001"

    invoke-direct {p0, v3, v0}, Landroidx/preference/MyXSelectAppsPreference;->join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    :goto_88
    return-object v0

    :cond_89
    add-int/lit8 v3, v3, 0x1

    goto :goto_4f

    :cond_8c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_8f
    const/4 v0, 0x0

    return-object v0
.end method

.method private getDialogCloseText()Ljava/lang/String;
    .registers 5

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v1, "close_button_text"

    const-string/jumbo v0, "string"

    const-string v3, "android"

    invoke-virtual {v2, v1, v0, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private join(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/lang/String;
    .registers 6

    const-string v1, ""

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_31

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_31
    return-object v1
.end method

.method private setCount()V
    .registers 7

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    const-string v3, ""

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/MyXPreference;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v0, "\u0001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_24

    const/4 v1, 0x0

    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3d

    const/4 v1, 0x1

    :cond_24
    iget v3, p0, Landroidx/preference/MyXSelectAppsPreference;->mExtra:I

    const/4 v2, 0x2

    if-ne v3, v2, :cond_3d

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v1, 0x0

    const-string v5, "\u0003"

    :goto_2e
    if-ge v3, v2, :cond_3d

    aget-object v4, v0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    add-int/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_3d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/MyXSelectAppsPreference;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getOnLongClickListener()Landroid/view/View$OnLongClickListener;
    .registers 2

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iget-object v0, v0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "list"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Landroidx/preference/MyXSelectAppsPreference;->lvDetail:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-boolean v1, p0, Landroidx/preference/MyXSelectAppsPreference;->divider:Z

    if-eqz v1, :cond_3d

    const-string v1, "list_divider_holo_light"

    const-string v2, "drawable"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v1, p0, Landroidx/preference/MyXSelectAppsPreference;->lvDetail:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    goto :goto_43

    :cond_3d
    iget-object v1, p0, Landroidx/preference/MyXSelectAppsPreference;->lvDetail:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    :goto_43
    const-string v2, "id"

    const-string/jumbo v1, "progressContainer"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iput-object v1, p0, Landroidx/preference/MyXSelectAppsPreference;->mProgressContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v0, 0x40

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Void;

    new-instance v0, Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    invoke-direct {v0, p0}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;-><init>(Landroidx/preference/MyXSelectAppsPreference;)V

    iput-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mLoadApps:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    invoke-virtual {v0, v1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 5

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v2, p0, Landroidx/preference/MyXSelectAppsPreference;->tvCount:Landroid/widget/TextView;

    if-nez v2, :cond_34

    iget-object v1, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    iput-object v2, p0, Landroidx/preference/MyXSelectAppsPreference;->tvCount:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v2, -0x2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v2, 0x15

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    :cond_34
    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iget-object v2, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroidx/preference/MyXPreference;->setMargin(Landroid/view/View;Landroid/content/Context;)I

    invoke-direct {p0}, Landroidx/preference/MyXSelectAppsPreference;->setCount()V

    invoke-direct {p0}, Landroidx/preference/MyXSelectAppsPreference;->checkDependency()V

    return-void
.end method

.method protected onClick()V
    .registers 2

    invoke-super {p0}, Landroidx/preference/Preference;->onClick()V

    iget-boolean v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mShown:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mShown:Z

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->showDialog()V

    :cond_d
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    return-void
.end method

.method protected onCreateDialogView(Landroid/app/AlertDialog$Builder;)Landroid/view/View;
    .registers 6

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "list_content"

    const-string v2, "layout"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v1, 0x0

    if-nez v3, :cond_16

    return-object v1

    :cond_16
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->wifiReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_b
    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mLoadApps:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1d

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mLoadApps:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/MyXSelectAppsPreference$LoadApps;->cancel(Z)Z

    :cond_1d
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mLoadApps:Landroidx/preference/MyXSelectAppsPreference$LoadApps;

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/MyXPreference;->sendIntent(Landroid/content/Context;)V

    invoke-direct {p0}, Landroidx/preference/MyXSelectAppsPreference;->setCount()V

    :cond_2c
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mShown:Z

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/MyXSelectAppsPreference$AppData;

    iget v1, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    const/4 v2, -0x2

    if-lt v1, v2, :cond_46

    if-ltz v1, :cond_45

    xor-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    iget-object v2, p0, Landroidx/preference/MyXSelectAppsPreference;->lvDetail:Landroid/widget/ListView;

    iget v3, p0, Landroidx/preference/MyXSelectAppsPreference;->mExtra:I

    const/4 v2, 0x4

    if-eq v3, v2, :cond_1b

    const/4 v2, 0x2

    if-ne v3, v2, :cond_23

    :cond_1b
    iget-object v2, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v1}, Landroidx/preference/MyXSelectAppsPreference;->addRemovePackageActivity(Ljava/lang/String;Ljava/lang/String;Z)Z

    goto :goto_28

    :cond_23
    iget-object v2, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-direct {p0, v2, v1}, Landroidx/preference/MyXSelectAppsPreference;->addRemovePackage(Ljava/lang/String;Z)Z

    :goto_28
    check-cast p2, Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    if-nez v1, :cond_3f

    const v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_45

    :cond_3f
    const v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_45
    :goto_45
    return-void

    :cond_46
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    check-cast v5, Landroid/widget/ArrayAdapter;

    const/4 v2, -0x3

    if-eq v1, v2, :cond_69

    iput v2, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    :goto_57
    if-ge p3, v3, :cond_91

    invoke-virtual {v5, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/MyXSelectAppsPreference$AppData;

    iget v2, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    if-ltz v2, :cond_91

    invoke-virtual {v5, v0}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_57

    :cond_69
    add-int/lit8 p3, p3, 0x1

    const/4 v1, -0x4

    iput v1, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    iget-object v2, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->act:[Landroid/content/pm/ActivityInfo;

    iget-object v6, v0, Landroidx/preference/MyXSelectAppsPreference$AppData;->actChecked:[Z

    const/4 v0, 0x0

    :goto_73
    array-length v4, v2

    if-ge v0, v4, :cond_91

    aget-object v1, v2, v0

    new-instance v4, Landroidx/preference/MyXSelectAppsPreference$AppData;

    invoke-direct {v4}, Landroidx/preference/MyXSelectAppsPreference$AppData;-><init>()V

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iput-object v3, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v3, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->name:Ljava/lang/String;

    aget-boolean v1, v6, v0

    iput v1, v4, Landroidx/preference/MyXSelectAppsPreference$AppData;->checked:I

    invoke-virtual {v5, v4, p3}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    :cond_91
    invoke-virtual {v5}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_45
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getOnLongClickListener()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_15

    :cond_e
    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iget-boolean v0, v0, Landroidx/preference/MyXPreference;->mDisableLongClick:Z

    if-nez v0, :cond_15

    const/4 v1, 0x1

    :cond_15
    :goto_15
    return v1
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 3

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    iput-object p1, v0, Landroidx/preference/MyXPreference;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Landroidx/preference/MyXSelectAppsPreference;->mMyPreference:Landroidx/preference/MyXPreference;

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/preference/MyXSelectAppsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Landroidx/preference/MyXPreference;->setString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected showDialog()V
    .registers 6

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroidx/preference/MyXSelectAppsPreference;->onCreateDialogView(Landroid/app/AlertDialog$Builder;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1f

    invoke-virtual {p0, v1}, Landroidx/preference/MyXSelectAppsPreference;->onBindDialogView(Landroid/view/View;)V

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_1f

    :cond_1f
    :goto_1f
    invoke-direct {p0}, Landroidx/preference/MyXSelectAppsPreference;->getDialogCloseText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    const/4 v1, -0x1

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
