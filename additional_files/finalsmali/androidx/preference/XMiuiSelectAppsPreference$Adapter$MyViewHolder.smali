# newclasses.dex

.class Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;
.super Ljava/lang/Object;
.source "XMiuiSelectAppsPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/preference/XMiuiSelectAppsPreference$Adapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyViewHolder"
.end annotation


# instance fields
.field cbCheck:Landroid/widget/CheckBox;

.field ivIcon:Landroid/widget/ImageView;

.field tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, 0x84

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/16 v1, 0x13

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput-object v2, p0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->ivIcon:Landroid/widget/ImageView;

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v2, p0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->tvTitle:Landroid/widget/TextView;

    const v1, 0x10

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const v0, 0xa

    const v1, 0x0

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/widget/CheckBox;

    invoke-direct {v2, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/16 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v1, 0x15

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setClickable(Z)V

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setFocusable(Z)V

    iput-object v2, p0, Landroidx/preference/XMiuiSelectAppsPreference$Adapter$MyViewHolder;->cbCheck:Landroid/widget/CheckBox;

    if-nez p3, :cond_78

    const v0, 0x8

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_78
    const v0, 0xa

    const v1, 0x0

    invoke-virtual {p2, v0, v1, v0, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method
