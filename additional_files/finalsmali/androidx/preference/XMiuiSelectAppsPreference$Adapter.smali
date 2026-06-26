# newclasses.dex

.class public Landroidx/preference/XMiuiSelectAppsPreference$Adapter;
.super Landroid/widget/ArrayAdapter;
.source "XMiuiSelectAppsPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;
    }
.end annotation


# instance fields
.field ind:I

.field final synthetic this$0:Landroidx/preference/XMiuiSelectAppsPreference;


# direct methods
.method public constructor <init>(Landroidx/preference/XMiuiSelectAppsPreference;ILjava/util/ArrayList;)V
    .registers 6

    invoke-virtual {p1}, Landroidx/preference/XMiuiSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter;->this$0:Landroidx/preference/XMiuiSelectAppsPreference;

    iput p2, p0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter;->ind:I

    return-void
.end method


# virtual methods
.method public getItem(I)Landroidx/preference/XMiuiSelectAppsPreference$AppData;
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/XMiuiSelectAppsPreference$AppData;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 13

    if-nez p2, :cond_c1

    iget-object v2, p0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter;->this$0:Landroidx/preference/XMiuiSelectAppsPreference;

    invoke-virtual {v2}, Landroidx/preference/XMiuiSelectAppsPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Landroidx/preference/XMiuiSelectAppsPreference$Adapter;->getItem(I)Landroidx/preference/XMiuiSelectAppsPreference$AppData;

    move-result-object v0

    iget v0, v0, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->checked:I

    const/4 v3, 0x1

    if-gez v0, :cond_17

    const/4 v3, 0x0

    :cond_17
    new-instance v0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;

    invoke-direct {v0, v2, v1, v3}, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    move-object p2, v1

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_20
    invoke-virtual {p0, p1}, Landroidx/preference/XMiuiSelectAppsPreference$Adapter;->getItem(I)Landroidx/preference/XMiuiSelectAppsPreference$AppData;

    move-result-object v1

    iget-object v2, p0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter;->this$0:Landroidx/preference/XMiuiSelectAppsPreference;

    iget v2, v2, Landroidx/preference/XMiuiSelectAppsPreference;->mExtra:I

    add-int/lit8 v2, v2, -0x2

    const/4 v5, 0x0

    if-nez v2, :cond_2e

    const/4 v5, 0x1

    :cond_2e
    iget v3, v1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->checked:I

    const v4, 0x8

    if-ltz v3, :cond_c9

    const v4, 0x0

    goto/16 :goto_c9

    :cond_3a
    iget v3, v1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->checked:I

    iget-object v2, v0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->cbCheck:Landroid/widget/CheckBox;

    if-eqz v2, :cond_4d

    if-eqz v3, :cond_47

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_4d

    :cond_47
    const v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_4d
    :goto_4d
    iget-object v3, v0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->ivIcon:Landroid/widget/ImageView;

    iget-object v2, v1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, v0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->tvTitle:Landroid/widget/TextView;

    const v3, 0x1

    const v0, 0x10

    if-eqz v4, :cond_69

    const v0, 0xf

    if-nez v5, :cond_69

    const v3, 0x0

    const v0, 0xe

    :cond_69
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, v1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->name:Ljava/lang/String;

    if-eqz v3, :cond_98

    iget-object v3, p0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter;->this$0:Landroidx/preference/XMiuiSelectAppsPreference;

    iget v3, v3, Landroidx/preference/XMiuiSelectAppsPreference;->mExtra:I

    add-int/lit8 v3, v3, -0x4

    if-nez v3, :cond_98

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "<br><small>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Landroidx/preference/XMiuiSelectAppsPreference$AppData;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "</small>"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    :cond_98
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v4, :cond_fa

    if-nez v5, :cond_fa

    const/4 v2, 0x0

    if-eqz p1, :cond_aa

    const/16 v2, 0x20

    :cond_aa
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    const/4 v2, 0x5

    if-eqz p1, :cond_b1

    const/16 v2, 0xf

    :cond_b1
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_b3
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/16 v1, 0x13

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    return-object p2

    :cond_c1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;

    goto/16 :goto_20

    :cond_c9
    :goto_c9
    iget-object v2, v0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->cbCheck:Landroid/widget/CheckBox;

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    if-eqz v4, :cond_d5

    const/4 v2, -0x1

    if-eq v3, v2, :cond_ef

    const/4 v4, 0x0

    goto :goto_da

    :cond_d5
    if-eqz v5, :cond_da

    const v4, 0x8

    :cond_da
    :goto_da
    iget-object v2, v0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->ivIcon:Landroid/widget/ImageView;

    const v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    const/16 v3, 0x84

    if-eqz v4, :cond_ec

    const/16 v3, 0x42

    :cond_ec
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_f4

    :cond_ef
    iget-object v2, v0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->ivIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f4
    if-nez v5, :cond_3a

    if-eqz v4, :cond_3a

    goto/16 :goto_4d

    :cond_fa
    const/4 v2, 0x0

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_b3
.end method
