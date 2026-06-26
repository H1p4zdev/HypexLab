# xdclasses.dex

.class Landroidx/preference/XdSeekBarPreference$1;
.super Ljava/lang/Object;
.source "XdSeekBarPreference.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/XdSeekBarPreference;->SeekBarLayout(Landroid/content/Context;)Landroid/widget/LinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/preference/XdSeekBarPreference;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$widgetFrame:Landroid/widget/LinearLayout;


# direct methods
.method constructor <init>(Landroidx/preference/XdSeekBarPreference;Landroid/widget/LinearLayout;Landroid/content/Context;)V
    .registers 4
    .param p1, "this$0"  # Landroidx/preference/XdSeekBarPreference;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 257
    iput-object p1, p0, Landroidx/preference/XdSeekBarPreference$1;->this$0:Landroidx/preference/XdSeekBarPreference;

    iput-object p2, p0, Landroidx/preference/XdSeekBarPreference$1;->val$widgetFrame:Landroid/widget/LinearLayout;

    iput-object p3, p0, Landroidx/preference/XdSeekBarPreference$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 4

    .line 260
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference$1;->val$widgetFrame:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 263
    iget-object v0, p0, Landroidx/preference/XdSeekBarPreference$1;->this$0:Landroidx/preference/XdSeekBarPreference;

    iget-object v0, v0, Landroidx/preference/XdSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget-object v1, p0, Landroidx/preference/XdSeekBarPreference$1;->this$0:Landroidx/preference/XdSeekBarPreference;

    iget-object v2, p0, Landroidx/preference/XdSeekBarPreference$1;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroidx/preference/XdSeekBarPreference;->progressDrawable(Landroid/content/Context;)Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    const/4 v0, 0x1

    return v0
.end method
