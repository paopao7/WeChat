//
//  SecondViewController.m
//  demo_UINavigationController
//
//  Created by 钱超 on 16/7/5.
//  Copyright © 2016年 钱超. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"第二页";
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(30, 30, 50, 30)];
    
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    
    [button setTitle:_str forState:UIControlStateNormal];
    
    //设置圆角2度
    [button.layer setCornerRadius:2.0];
    
    //设置边框大小
    [button.layer setBorderWidth:1.0];
    
    //设置边框颜色
    button.layer.borderColor = [UIColor orangeColor].CGColor;
    
    [button addTarget:self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    // Do any additional setup after loading the view.
}

- (void) clicked{
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
