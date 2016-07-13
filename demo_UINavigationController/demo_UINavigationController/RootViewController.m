//
//  RootViewController.m
//  demo_UINavigationController
//
//  Created by 钱超 on 16/7/5.
//  Copyright © 2016年 钱超. All rights reserved.
//

#import "RootViewController.h"
#import "SecondViewController.h"
#import "LoginViewController.h"
#import "PersonViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //读取本地数据
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    
    NSString *name = [defaults stringForKey:@"usernames"];//根据键值取出name
    
    NSLog(@"%@",name);
    
    [self.navigationController.navigationBar setTranslucent:NO];
    
    self.title  =@"首页";
    
    [self.navigationController.navigationBar setBarTintColor:[UIColor colorWithRed:0.24 green:0.24 blue:0.26 alpha:1.00]];
    
    UIButton *login_btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    login_btn.frame = CGRectMake(0, 0, 24, 24);
    
    if(name==nil){
        [login_btn setBackgroundImage:[UIImage imageNamed:@"login_item"] forState:UIControlStateNormal];
    }else{
        [login_btn setBackgroundImage:[UIImage imageNamed:@"login_item_selected"] forState:UIControlStateNormal];
    }
    
    [login_btn addTarget:self action:@selector(login) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *left_bar_item = [[UIBarButtonItem alloc] initWithCustomView:login_btn];

    
    
//    UIBarButtonItem *left_bar_item = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"login_item"] style:UIBarButtonItemStyleBordered target:self action:@selector(login)];
    
    self.navigationItem.leftBarButtonItem = left_bar_item;
    
    UIBarButtonItem *right_bar_item = [[UIBarButtonItem alloc] initWithTitle:@"下一页" style:UIBarButtonItemStyleBordered target:self action:@selector(clicked)];
    
//    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonItemStylePlain target:self action:@selector(clicked)];

    self.navigationItem.rightBarButtonItem = right_bar_item;
    
    [self.navigationController.navigationBar setTintColor:[UIColor whiteColor]];
    
    [self.navigationController.navigationBar setTitleTextAttributes:@{NSForegroundColorAttributeName : [UIColor whiteColor]}];
    
//    NSArray *arr = [NSArray arrayWithObjects:@"1",@"2",nil];
    
//    UISegmentedControl *segment = [[UISegmentedControl alloc] initWithItems:arr];
//    
//    self.navigationItem.titleView = segment;
    
    
    
    
    // Do any additional setup after loading the view.
}

- (void) login{
    //读取本地数据
    NSUserDefaults *defaults =[NSUserDefaults standardUserDefaults];
    
    NSString *name = [defaults stringForKey:@"usernames"];//根据键值取出name
    
    if(name == nil){
        LoginViewController *login = [[LoginViewController alloc] init];
    
        [self.navigationController pushViewController:login animated:YES];
    
        [login release];
    }else{
        PersonViewController *person = [[PersonViewController alloc] init];
        
        [self.navigationController pushViewController:person animated:YES];
        
        [person release];
    }
}

- (void) clicked{
    SecondViewController *second = [[SecondViewController alloc] init];
    
    [self.navigationController pushViewController:second animated:YES];
    
    second.str = @"back";
    
    [second release];
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
