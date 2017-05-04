//
//  RGAlert.m
//  RGAlertTool
//
//  Created by sxd-iMac on 2017/5/4.
//  Copyright © 2017年 sxd-iMac. All rights reserved.
//

#import "RGAlert.h"

@implementation RGAlert

+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionTitle {
    
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alertVC addAction:[UIAlertAction actionWithTitle:actionTitle style:UIAlertActionStyleDefault handler:nil]];
    [currentController presentViewController:alertVC animated:YES completion:nil];
    
}

+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWithTitle:(NSString *)actionTitle confirm:(ConfirmClick)confirm {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alertVC addAction:[UIAlertAction actionWithTitle:actionTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        confirm();
    }]];
    [currentController presentViewController:alertVC animated:YES completion:nil];
}

+ (void)alertWithCurrentController:(UIViewController *)currentController title:(NSString *)title message:(NSString *)message actionWitLeftTitle:(NSString *)actionLeftTitle actionWithRightTitle:(NSString *)actionRightTitle confirm:(ConfirmClick)confirm cancel:(CancelClick)cancel {
    UIAlertController *alertVC = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    [alertVC addAction:[UIAlertAction actionWithTitle:actionLeftTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        confirm();
    }]];
    [alertVC addAction:[UIAlertAction actionWithTitle:actionRightTitle style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        cancel();
    }]];
    [currentController presentViewController:alertVC animated:YES completion:nil];
}

@end
