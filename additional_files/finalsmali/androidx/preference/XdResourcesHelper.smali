# xdclasses.dex

.class public Landroidx/preference/XdResourcesHelper;
.super Ljava/lang/Object;
.source "XdResourcesHelper.java"


# instance fields
.field private final SEEKBAR_BACKGROUND_COLORS:[Ljava/lang/String;

.field private final SEEKBAR_MAIN_RADIUS:I

.field private final SEEKBAR_NAVIGATE_DRAWABLES:[Ljava/lang/String;

.field private final SEEKBAR_PROGRESS_COLORS:[Ljava/lang/String;

.field private final WIDGET_STROKE_DISABLED_COLORS:[Ljava/lang/String;

.field private final WIDGET_STROKE_ENABLED_COLORS:[Ljava/lang/String;

.field private final WIDGET_TEXT_COLOR:[Ljava/lang/String;

.field context:Landroid/content/Context;

.field private isDarkMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "miuix_appcompat_progress_primary_color_light"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "miuix_appcompat_progress_primary_color_dark"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iput-object v1, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_PROGRESS_COLORS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "miuix_appcompat_progress_background_light"

    aput-object v2, v1, v3

    const-string v2, "miuix_appcompat_progress_background_dark"

    aput-object v2, v1, v4

    iput-object v1, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_BACKGROUND_COLORS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "ic_xd_seekbar_minus"

    aput-object v2, v1, v3

    const-string v2, "ic_xd_seekbar_plus"

    aput-object v2, v1, v4

    iput-object v1, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_NAVIGATE_DRAWABLES:[Ljava/lang/String;

    const/16 v1, 0x28

    iput v1, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_MAIN_RADIUS:I

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "dark_color_mode_outer"

    aput-object v2, v1, v3

    const-string v5, "dark_color_mode_outer_dark"

    aput-object v5, v1, v4

    iput-object v1, p0, Landroidx/preference/XdResourcesHelper;->WIDGET_STROKE_ENABLED_COLORS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    aput-object v2, v1, v3

    aput-object v5, v1, v4

    iput-object v1, p0, Landroidx/preference/XdResourcesHelper;->WIDGET_STROKE_DISABLED_COLORS:[Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v3

    aput-object v5, v0, v4

    iput-object v0, p0, Landroidx/preference/XdResourcesHelper;->WIDGET_TEXT_COLOR:[Ljava/lang/String;

    iput-object p1, p0, Landroidx/preference/XdResourcesHelper;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5d

    move v3, v4

    :cond_5d
    iput-boolean v3, p0, Landroidx/preference/XdResourcesHelper;->isDarkMode:Z

    return-void
.end method

.method private getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .registers 5

    iget-object v0, p0, Landroidx/preference/XdResourcesHelper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/XdResourcesHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public getColor(Ljava/lang/String;)I
    .registers 3

    const-string v0, "color"

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdResourcesHelper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDrawable(Ljava/lang/String;)I
    .registers 3

    const-string v0, "drawable"

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdResourcesHelper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getId(Ljava/lang/String;)I
    .registers 3

    const-string v0, "id"

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdResourcesHelper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getLayout(Ljava/lang/String;)I
    .registers 3

    const-string v0, "layout"

    invoke-direct {p0, p1, v0}, Landroidx/preference/XdResourcesHelper;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSeekColorResources(I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    iget-boolean v2, p0, Landroidx/preference/XdResourcesHelper;->isDarkMode:Z

    if-eqz v2, :cond_d

    iget-object v0, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_BACKGROUND_COLORS:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_11

    :cond_d
    iget-object v1, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_BACKGROUND_COLORS:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_11
    invoke-virtual {p0, v0}, Landroidx/preference/XdResourcesHelper;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_16
    iget-boolean v2, p0, Landroidx/preference/XdResourcesHelper;->isDarkMode:Z

    if-eqz v2, :cond_1f

    iget-object v0, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_PROGRESS_COLORS:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_23

    :cond_1f
    iget-object v1, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_PROGRESS_COLORS:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_23
    invoke-virtual {p0, v0}, Landroidx/preference/XdResourcesHelper;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSeekDimenResources()I
    .registers 2

    const/16 v0, 0x28

    return v0
.end method

.method public getSeekDrawableResources(I)Landroid/graphics/drawable/Drawable;
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    iget-object v1, p0, Landroidx/preference/XdResourcesHelper;->context:Landroid/content/Context;

    iget-object v2, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_NAVIGATE_DRAWABLES:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {p0, v0}, Landroidx/preference/XdResourcesHelper;->getDrawable(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_12
    iget-object v0, p0, Landroidx/preference/XdResourcesHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Landroidx/preference/XdResourcesHelper;->SEEKBAR_NAVIGATE_DRAWABLES:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Landroidx/preference/XdResourcesHelper;->getDrawable(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getWidgetColorResources(I)I
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_16

    iget-boolean v2, p0, Landroidx/preference/XdResourcesHelper;->isDarkMode:Z

    if-eqz v2, :cond_d

    iget-object v0, p0, Landroidx/preference/XdResourcesHelper;->WIDGET_STROKE_ENABLED_COLORS:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_11

    :cond_d
    iget-object v1, p0, Landroidx/preference/XdResourcesHelper;->WIDGET_STROKE_ENABLED_COLORS:[Ljava/lang/String;

    aget-object v0, v1, v0

    :goto_11
    invoke-virtual {p0, v0}, Landroidx/preference/XdResourcesHelper;->getColor(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_16
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1d

    const v0, 0x1060031

    return v0

    :cond_1d
    return v0
.end method
