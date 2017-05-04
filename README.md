# RGAlertTool
对系统提示框的封装，方便调用使用

![image](https://github.com/rangang/RGAlertTool/blob/master/image1.gif)

```
/** 弹窗提示，不做任何操作 */
+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionTitle;
/** 弹窗提示，点击确认按钮进行操作 */
+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionTitle confirm:(ConfirmClick)confirm;
/** 弹窗提示，点击确认/取消按钮进行操作 */
+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWitLeftTitle:(NSString *)actionLeftTitle actionWithRightTitle:(NSString *)actionRightTitle confirm:(ConfirmClick)confirm cancel:(CancelClick)cancel;
```
