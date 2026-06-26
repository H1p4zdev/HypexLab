# xdclasses.dex

.class public Landroidx/preference/XdOverlayCheckBox;
.super Landroidx/preference/SwitchPreference;
.source "XdOverlayCheckBox.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field private static final BUILD_VERSION:Ljava/lang/String; = "v2.2"

.field private static final DEFAULT_VALUE_MESSAGE:Ljava/lang/String; = "Default Value Restored"

.field private static final NAMESPACE_ANDROID:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"


# instance fields
.field private final contentResolver:Landroid/content/ContentResolver;

.field private debug:Z

.field private defaultValue:Z

.field private intentAction:Ljava/lang/String;

.field private isMultiOverlays:Z

.field private key:Ljava/lang/String;

.field private multiplePackages:[Ljava/lang/String;

.field private final overlayManager:Landroid/content/om/IOverlayManager;

.field private final preferenceHelper:Landroidx/preference/XdPreferenceHelper;

.field private storeType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 34
    invoke-direct {p0, p1, p2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x1

    iput v0, p0, Landroidx/preference/XdOverlayCheckBox;->storeType:I

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->debug:Z

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->contentResolver:Landroid/content/ContentResolver;

    .line 38
    new-instance v0, Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdOverlayCheckBox;->contentResolver:Landroid/content/ContentResolver;

    const-string v2, "v2.2"

    invoke-direct {v0, p1, p2, v1, v2}, Landroidx/preference/XdPreferenceHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/ContentResolver;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    .line 39
    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->overlayManager:Landroid/content/om/IOverlayManager;

    .line 40
    invoke-virtual {p0}, Landroidx/preference/XdOverlayCheckBox;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->key:Ljava/lang/String;

    .line 41
    if-eqz p2, :cond_31

    .line 42
    invoke-direct {p0, p1, p2}, Landroidx/preference/XdOverlayCheckBox;->parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    :cond_31
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdOverlayCheckBox;->key:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/preference/XdOverlayCheckBox;->defaultValue:Z

    iget v3, p0, Landroidx/preference/XdOverlayCheckBox;->storeType:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/XdPreferenceHelper;->getBool(Ljava/lang/String;ZI)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/XdOverlayCheckBox;->setChecked(Z)V

    .line 46
    return-void
.end method

.method private Debug(Ljava/lang/String;)V
    .registers 3
    .param p1, "message"  # Ljava/lang/String;

    .line 138
    iget-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->debug:Z

    if-eqz v0, :cond_9

    .line 139
    const-string v0, "XD_PREFS "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_9
    return-void
.end method

.method private parseAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 52
    const-string v0, "intent"

    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->intentAction:Ljava/lang/String;

    .line 53
    const-string v0, "multiOverlays"

    const/4 v2, 0x0

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->isMultiOverlays:Z

    .line 54
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    const-string v3, "http://schemas.android.com/apk/res/android"

    const-string v4, "entries"

    invoke-virtual {v0, v3, v4}, Landroidx/preference/XdPreferenceHelper;->getArrayFromAttr(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->multiplePackages:[Ljava/lang/String;

    .line 56
    const-string v0, "debug"

    invoke-interface {p2, v1, v0, v2}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->debug:Z

    .line 57
    return-void
.end method

.method private resetToDefaultValue()V
    .registers 3

    .line 90
    iget-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->defaultValue:Z

    invoke-virtual {p0, v0}, Landroidx/preference/XdOverlayCheckBox;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    const-string v1, "Default Value Restored"

    invoke-virtual {v0, v1}, Landroidx/preference/XdPreferenceHelper;->showToast(Ljava/lang/String;)V

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Preference reset to default value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroidx/preference/XdOverlayCheckBox;->defaultValue:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/XdOverlayCheckBox;->Debug(Ljava/lang/String;)V

    .line 93
    return-void
.end method

.method private setOverlayState(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "enable"  # Z

    .line 121
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->overlayManager:Landroid/content/om/IOverlayManager;

    if-nez v0, :cond_a

    .line 122
    const-string v0, "OverlayManager service is null."

    invoke-direct {p0, v0}, Landroidx/preference/XdOverlayCheckBox;->Debug(Ljava/lang/String;)V

    .line 123
    return-void

    .line 127
    :cond_a
    :try_start_a
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->overlayManager:Landroid/content/om/IOverlayManager;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroid/content/om/IOverlayManager;->setEnabled(Ljava/lang/String;ZI)Z

    .line 128
    const-string v0, "Overlay %s: %s"

    if-eqz p2, :cond_17

    const-string v1, "enabled"

    goto :goto_19

    :cond_17
    const-string v1, "disabled"

    :goto_19
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/preference/XdOverlayCheckBox;->Debug(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_a .. :try_end_24} :catchall_25

    .line 131
    goto :goto_4a

    .line 129
    :catchall_25
    move-exception v0

    .line 130
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to change overlay state for package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Landroidx/preference/XdOverlayCheckBox;->Debug(Ljava/lang/String;)V

    .line 132
    .end local v0  # "t":Ljava/lang/Throwable;
    :goto_4a
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .registers 3
    .param p1, "holder"  # Landroidx/preference/PreferenceViewHolder;

    .line 75
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    .line 76
    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    .line 77
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 78
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .registers 4
    .param p1, "a"  # Landroid/content/res/TypedArray;
    .param p2, "index"  # I

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->defaultValue:Z

    .line 62
    iget-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->defaultValue:Z

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3
    .param p1, "view"  # Landroid/view/View;

    .line 82
    invoke-direct {p0}, Landroidx/preference/XdOverlayCheckBox;->resetToDefaultValue()V

    .line 83
    const/4 v0, 0x1

    return v0
.end method

.method public onLongClickUseDefaultHapticFeedback(Landroid/view/View;)Z
    .registers 3
    .param p1, "v"  # Landroid/view/View;

    .line 146
    invoke-super {p0, p1}, Landroid/view/View$OnLongClickListener;->onLongClickUseDefaultHapticFeedback(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method protected onSetInitialValue(Ljava/lang/Object;)V
    .registers 6
    .param p1, "defaultValue"  # Ljava/lang/Object;

    .line 67
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    .line 68
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->defaultValue:Z

    .line 70
    :cond_d
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdOverlayCheckBox;->key:Ljava/lang/String;

    iget-boolean v2, p0, Landroidx/preference/XdOverlayCheckBox;->defaultValue:Z

    iget v3, p0, Landroidx/preference/XdOverlayCheckBox;->storeType:I

    invoke-virtual {v0, v1, v2, v3}, Landroidx/preference/XdPreferenceHelper;->getBool(Ljava/lang/String;ZI)Z

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/preference/XdOverlayCheckBox;->setChecked(Z)V

    .line 71
    return-void
.end method

.method public setChecked(Z)V
    .registers 6
    .param p1, "isChecked"  # Z

    .line 97
    invoke-virtual {p0}, Landroidx/preference/XdOverlayCheckBox;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_7

    .line 98
    return-void

    .line 100
    :cond_7
    invoke-super {p0, p1}, Landroidx/preference/SwitchPreference;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdOverlayCheckBox;->key:Ljava/lang/String;

    iget v2, p0, Landroidx/preference/XdOverlayCheckBox;->storeType:I

    invoke-virtual {v0, v1, p1, v2}, Landroidx/preference/XdPreferenceHelper;->putInt(Ljava/lang/String;II)V

    .line 104
    iget-boolean v0, p0, Landroidx/preference/XdOverlayCheckBox;->isMultiOverlays:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->multiplePackages:[Ljava/lang/String;

    if-eqz v0, :cond_29

    .line 105
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->multiplePackages:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1f
    if-ge v2, v1, :cond_2e

    aget-object v3, v0, v2

    .line 106
    .local v3, "packageName":Ljava/lang/String;
    invoke-direct {p0, v3, p1}, Landroidx/preference/XdOverlayCheckBox;->setOverlayState(Ljava/lang/String;Z)V

    .line 105
    .end local v3  # "packageName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 109
    :cond_29
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->key:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Landroidx/preference/XdOverlayCheckBox;->setOverlayState(Ljava/lang/String;Z)V

    .line 112
    :cond_2e
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->intentAction:Ljava/lang/String;

    if-eqz v0, :cond_39

    .line 113
    iget-object v0, p0, Landroidx/preference/XdOverlayCheckBox;->preferenceHelper:Landroidx/preference/XdPreferenceHelper;

    iget-object v1, p0, Landroidx/preference/XdOverlayCheckBox;->intentAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/preference/XdPreferenceHelper;->sendIntent(Ljava/lang/String;)V

    .line 115
    :cond_39
    return-void
.end method
