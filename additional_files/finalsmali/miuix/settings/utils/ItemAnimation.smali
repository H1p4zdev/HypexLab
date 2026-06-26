# listviewclasses.dex

.class public Lmiuix/settings/utils/ItemAnimation;
.super Ljava/lang/Object;
.source "ItemAnimation.java"

# interfaces
.implements Landroid/preference/CustomUpdater$CustomReceiver;


# static fields
.field private static final sAnimatiom:Lmiuix/settings/utils/ItemAnimation;

.field private static final sKey:Ljava/lang/String; = "listview_animation"


# instance fields
.field private mAnimDuration:I

.field private mAnimEnable:Z

.field private mAnimType:I

.field private mInterpolatorType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lmiuix/settings/utils/ItemAnimation;

    invoke-direct {v0}, Lmiuix/settings/utils/ItemAnimation;-><init>()V

    sput-object v0, Lmiuix/settings/utils/ItemAnimation;->sAnimatiom:Lmiuix/settings/utils/ItemAnimation;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/preference/CustomUpdater;->getInstance()Landroid/preference/CustomUpdater;

    move-result-object v0

    const-string v1, "listview_animation"

    invoke-virtual {v0, p0, v1}, Landroid/preference/CustomUpdater;->addCustomReceiver(Landroid/preference/CustomUpdater$CustomReceiver;Ljava/lang/String;)V

    const-string v0, "listview_animation"

    invoke-virtual {p0, v0}, Lmiuix/settings/utils/ItemAnimation;->onCustomChanged(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lmiuix/settings/utils/ItemAnimation;
    .registers 4

    const-class v2, Lmiuix/settings/utils/ItemAnimation;

    monitor-enter v2

    :try_start_3
    const-class v3, Lmiuix/settings/utils/ItemAnimation;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_e

    :try_start_6
    sget-object v0, Lmiuix/settings/utils/ItemAnimation;->sAnimatiom:Lmiuix/settings/utils/ItemAnimation;

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_6 .. :try_end_9} :catchall_b

    monitor-exit v2

    return-object v0

    :catchall_b
    move-exception v1

    :try_start_c
    monitor-exit v3
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_b

    :try_start_d
    throw v1
    :try_end_e
    .catchall {:try_start_d .. :try_end_e} :catchall_e

    :catchall_e
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .registers 4

    iget v1, p0, Lmiuix/settings/utils/ItemAnimation;->mInterpolatorType:I

    packed-switch v1, :pswitch_data_4e

    const v1, 0x10a000b

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    :goto_c
    return-object v0

    :pswitch_d  #0x1
    const v1, 0x10a0005

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_c

    :pswitch_15  #0x2
    const v1, 0x10a0006

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_c

    :pswitch_1d  #0x3
    const v1, 0x10a0004

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_c

    :pswitch_25  #0x4
    const v1, 0x10a0007

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_c

    :pswitch_2d  #0x5
    const v1, 0x10a0008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_c

    :pswitch_35  #0x6
    const v1, 0x10a0009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_c

    :pswitch_3d  #0x7
    const v1, 0x10a000a

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_c

    :pswitch_45  #0x8
    const v1, 0x10a000c

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    goto :goto_c

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_d  #00000001
        :pswitch_15  #00000002
        :pswitch_1d  #00000003
        :pswitch_25  #00000004
        :pswitch_2d  #00000005
        :pswitch_35  #00000006
        :pswitch_3d  #00000007
        :pswitch_45  #00000008
    .end packed-switch
.end method

.method public static playAnim(Ljava/lang/Object;)V
    .registers 8

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v4, v0

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v4, :cond_24

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/view/View;

    if-ne v5, v6, :cond_25

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    new-instance v3, Lmiuix/settings/utils/ItemAnimation$1;

    invoke-direct {v3, v2}, Lmiuix/settings/utils/ItemAnimation$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_28

    :cond_24
    :goto_24
    return-void

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :catch_28
    move-exception v3

    goto :goto_24
.end method


# virtual methods
.method public goAnim(Landroid/view/View;)V
    .registers 13

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000  # 1.0f

    const/high16 v1, 0x3f000000  # 0.5f

    const/4 v4, 0x0

    if-eqz p1, :cond_c

    iget-boolean v3, p0, Lmiuix/settings/utils/ItemAnimation;->mAnimEnable:Z

    if-nez v3, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v5, :cond_3c

    const/16 v10, 0x438

    :goto_1b
    const/16 v9, 0xc8

    iget v3, p0, Lmiuix/settings/utils/ItemAnimation;->mAnimType:I

    packed-switch v3, :pswitch_data_92

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    invoke-direct {v0, v1, v2, v1, v2}, Landroid/view/animation/ScaleAnimation;-><init>(FFFF)V

    :goto_27
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/settings/utils/ItemAnimation;->getInterpolator(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget v1, p0, Lmiuix/settings/utils/ItemAnimation;->mAnimDuration:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    :cond_3c
    const/16 v10, 0x924

    goto :goto_1b

    :pswitch_3f  #0x2
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v2

    move v7, v5

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_27

    :pswitch_4a  #0x3
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    goto :goto_27

    :pswitch_55  #0x4
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_27

    :pswitch_5b  #0x5
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, v9

    int-to-float v1, v1

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_27

    :pswitch_63  #0x6
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v9

    invoke-direct {v0, v4, v4, v1, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_27

    :pswitch_6a  #0x7
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    neg-int v1, v10

    int-to-float v1, v1

    invoke-direct {v0, v1, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_27

    :pswitch_72  #0x8
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    int-to-float v1, v10

    invoke-direct {v0, v1, v4, v4, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_27

    :pswitch_79  #0x9
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v3, 0x43340000  # 180.0f

    move-object v2, v0

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    goto :goto_27

    :pswitch_85  #0xa
    new-instance v0, Landroid/view/animation/RotateAnimation;

    const/high16 v3, 0x43b40000  # 360.0f

    move-object v2, v0

    move v6, v1

    move v7, v5

    move v8, v1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    goto :goto_27

    nop

    :pswitch_data_92
    .packed-switch 0x2
        :pswitch_3f  #00000002
        :pswitch_4a  #00000003
        :pswitch_55  #00000004
        :pswitch_5b  #00000005
        :pswitch_63  #00000006
        :pswitch_6a  #00000007
        :pswitch_72  #00000008
        :pswitch_79  #00000009
        :pswitch_85  #0000000a
    .end packed-switch
.end method

.method public onCustomChanged(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x1

    const-string v1, "listview_animation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29

    const-string v1, "listview_animation"

    invoke-static {v1, v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiuix/settings/utils/ItemAnimation;->mAnimType:I

    const-string v1, "listview_interpolator"

    invoke-static {v1, v0}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiuix/settings/utils/ItemAnimation;->mInterpolatorType:I

    const-string v1, "listview_duration"

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Landroid/preference/SettingsHelper;->getIntofSettings(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lmiuix/settings/utils/ItemAnimation;->mAnimDuration:I

    iget v1, p0, Lmiuix/settings/utils/ItemAnimation;->mAnimType:I

    if-eqz v1, :cond_2a

    :goto_27
    iput-boolean v0, p0, Lmiuix/settings/utils/ItemAnimation;->mAnimEnable:Z

    :cond_29
    return-void

    :cond_2a
    const/4 v0, 0x0

    goto :goto_27
.end method
