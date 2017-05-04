//
//  ViewController.m
//  RGAlertTool
//
//  Created by sxd-iMac on 2017/5/4.
//  Copyright © 2017年 sxd-iMac. All rights reserved.
//

#import "ViewController.h"

#import "RGAlert.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *detailL;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
}

- (IBAction)alertClick:(id)sender {
    
    [RGAlert alertWithCurrentController:self title:@"提示标题" message:@"提示内容" actionWithTitle:@"确认"];
    self.detailL.text = @"弹框提示";
}

- (IBAction)alertConfirm:(id)sender {
    [RGAlert alertWithCurrentController:self title:@"提示标题" message:@"提示内容" actionWithTitle:@"确认" confirm:^{
        NSLog(@"点了确认按钮");
        self.detailL.text = @"点了确认按钮";
    }];
}

- (IBAction)alertWithConfirmAndCancel:(id)sender {
    
    [RGAlert alertWithCurrentController:self title:@"提示标题" message:@"提示内容" actionWitLeftTitle:@"确认" actionWithRightTitle:@"取消" confirm:^{
        NSLog(@"点了确认按钮");
        self.detailL.text = @"点了确认按钮";
    } cancel:^{
        NSLog(@"点了取消按钮");
        self.detailL.text = @"点了取消按钮";
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
