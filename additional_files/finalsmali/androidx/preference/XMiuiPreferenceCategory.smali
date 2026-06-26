# newclasses.dex

.class public Landroidx/preference/XMiuiPreferenceCategory;
.super Landroidx/preference/PreferenceCategory;
.source "XMiuiPreferenceCategory.java"


# instance fields
.field private mMargin:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Landroidx/preference/PreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x0

    const-string v0, "margin"

    invoke-interface {p2, v1, v0, v1}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroidx/preference/XMiuiPreferenceCategory;->mMargin:I

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

    instance-of v1, v0, Landroidx/preference/XMiuiCheckBoxPreference;

    if-eqz v1, :cond_13

    goto :goto_26

    :cond_13
    instance-of v1, v0, Landroidx/preference/XMiuiListPreference;

    if-eqz v1, :cond_1d

    check-cast v0, Landroidx/preference/XMiuiListPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/XMiuiListPreference;->registerDependent(Landroidx/preference/Preference;)Z

    goto :goto_26

    :cond_1d
    instance-of v1, v0, Landroidx/preference/XMiuiDropDownPreference;

    if-eqz v1, :cond_26

    check-cast v0, Landroidx/preference/XMiuiDropDownPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/XMiuiDropDownPreference;->registerDependent(Landroidx/preference/Preference;)Z

    :cond_26
    :goto_26
    return-void
.end method

.method private setMargin(Landroid/view/View;)V
    .registers 6

    invoke-virtual {p0}, Landroidx/preference/XMiuiPreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "title"

    const-string v2, "id"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_26

    const-string/jumbo v1, "summary"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3a

    :cond_26
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v2, p0, Landroidx/preference/XMiuiPreferenceCategory;->mMargin:I

    const v3, 0x2f

    mul-int/2addr v2, v3

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    :cond_3a
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0}, Landroidx/preference/XMiuiPreferenceCategory;->checkDependency()V

    invoke-direct {p0, v0}, Landroidx/preference/XMiuiPreferenceCategory;->setMargin(Landroid/view/View;)V

    return-void
.end method
