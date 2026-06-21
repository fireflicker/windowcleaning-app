.class Lcom/onesignal/InAppMessageView$3;
.super Ljava/lang/Object;
.source "InAppMessageView.java"

# interfaces
.implements Lcom/onesignal/DraggableRelativeLayout$DraggableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/InAppMessageView;->setUpDraggableLayout(Landroid/content/Context;Landroid/widget/RelativeLayout$LayoutParams;Lcom/onesignal/DraggableRelativeLayout$Params;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/InAppMessageView;


# direct methods
.method constructor <init>(Lcom/onesignal/InAppMessageView;)V
    .locals 0

    .line 350
    iput-object p1, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-static {v0}, Lcom/onesignal/InAppMessageView;->access$1000(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    invoke-static {v0}, Lcom/onesignal/InAppMessageView;->access$1000(Lcom/onesignal/InAppMessageView;)Lcom/onesignal/InAppMessageView$InAppMessageViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/onesignal/InAppMessageView$InAppMessageViewListener;->onMessageWillDismiss()V

    .line 356
    :cond_0
    iget-object p0, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/InAppMessageView;->access$1300(Lcom/onesignal/InAppMessageView;Lcom/onesignal/WebViewManager$OneSignalGenericCallback;)V

    return-void
.end method

.method public onDragEnd()V
    .locals 1

    .line 366
    iget-object p0, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/onesignal/InAppMessageView;->access$1402(Lcom/onesignal/InAppMessageView;Z)Z

    return-void
.end method

.method public onDragStart()V
    .locals 1

    .line 361
    iget-object p0, p0, Lcom/onesignal/InAppMessageView$3;->this$0:Lcom/onesignal/InAppMessageView;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/onesignal/InAppMessageView;->access$1402(Lcom/onesignal/InAppMessageView;Z)Z

    return-void
.end method
