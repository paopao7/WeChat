//
//  PersonViewController.m
//  demo_UINavigationController
//
//  Created by 钱超 on 16/7/13.
//  Copyright © 2016年 钱超. All rights reserved.
//

#import "PersonViewController.h"

@interface PersonViewController ()

@end

@implementation PersonViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //读取本地数据
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    
    NSString *name = [defaults stringForKey:@"usernames"];//根据键值取出name
    
    self.title = @"个人中心";
    
    
    //label
    UILabel *username_title_label = [[UILabel alloc] initWithFrame:CGRectMake(10, 50, 50, 20)];
    
    username_title_label.text = @"账号";
    
    UILabel *username_label = [[UILabel alloc] initWithFrame:CGRectMake(70, 50, 90, 20)];
    
    username_label.text = name;
    
    
    
    //退出按钮
    UIButton *logout_btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, self.view.bounds.size.width-20, 50)];
    
    [logout_btn setTitle:@"退出" forState:UIControlStateNormal];
    
    [logout_btn setBackgroundImage:[UIImage imageNamed:@"login_btn"] forState:UIControlStateNormal];
    
    [logout_btn setBackgroundImage:[UIImage imageNamed:@"login_btn_selected"] forState:UIControlStateSelected];
    
    [logout_btn addTarget:self action:@selector(logout) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    
    
    [self.view addSubview:username_title_label];
    
    [self.view addSubview:username_label];
    
    [self.view addSubview:logout_btn];
}


//退出
- (void) logout{
    UIAlertView *alter = [[UIAlertView alloc] initWithTitle:@"退出" message:@"确定要退出吗？" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    
    [alter show];
}

- (void) alertView:(UIAlertView *) alertView clickedButtonAtIndex:
(NSInteger) buttonIndex{
    switch (buttonIndex) {
        case 0:
            NSLog(@"0");
            [self performSelector:@selector(show_tips) withObject:nil];
            break;
        case 1:
            NSLog(@"1");
            [self performSelector:@selector(logout_back) withObject:nil afterDelay:1.0];
            break;
        default:
            break;
    }
}

- (void) show_tips{
    HUD = [[MBProgressHUD alloc] initWithView:self.view];
    
    [self.view addSubview:HUD];
    
    HUD.labelText = @"你点击了取消";
    
    HUD.mode = MBProgressHUDModeText;
    
    [HUD showAnimated:YES whileExecutingBlock:^{
        sleep(1);
    }];
}

- (void) logout_back{
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    
    [defaults removeObjectForKey:@"usernames"];
    
    //修改左侧导航按钮背景
    UIButton *login_btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    login_btn.frame = CGRectMake(0, 0, 24, 24);
    
    [login_btn setBackgroundImage:[UIImage imageNamed:@"login_item"] forState:UIControlStateNormal];
    
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:login_btn];
    
    
    
    
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
