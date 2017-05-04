//
//  RGAlert.h
//  RGAlertTool
//
//  Created by sxd-iMac on 2017/5/4.
//  Copyright © 2017年 sxd-iMac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^ConfirmClick)();
typedef void (^CancelClick)();

@interface RGAlert : NSObject

/** 确认 */
@property (nonatomic, copy) ConfirmClick confirmClick;
/** 取消 */
@property (nonatomic, copy) CancelClick cancelClick;

/** 弹窗提示，不做任何操作 */
+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionTitle;
/** 弹窗提示，点击确认按钮进行操作 */
+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionTitle confirm:(ConfirmClick)confirm;
/** 弹窗提示，点击确认/取消按钮进行操作 */
+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWitLeftTitle:(NSString *)actionLeftTitle actionWithRightTitle:(NSString *)actionRightTitle confirm:(ConfirmClick)confirm cancel:(CancelClick)cancel;

@end
