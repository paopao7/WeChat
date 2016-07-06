//
//  questionViewController.m
//  demo_UINavigationController
//
//  Created by 钱超 on 16/7/5.
//  Copyright © 2016年 钱超. All rights reserved.
//

#import "questionViewController.h"

@interface questionViewController ()

@end

@implementation questionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"问题";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIWebView * view = [[UIWebView alloc]initWithFrame:self.view.frame];
    
    [view loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"http://www.itinfor.cn"]]];
    
    [self.view addSubview:view];
    
    
//    UIWebView *web = [[UIWebView alloc] initWithFrame:CGRectMake(0, 0, 320, 568)];
    
//    NSURL *url = [NSURL URLWithString:@"http://www.baidu.com"];
//    [web loadRequest:[NSURLRequest requestWithURL:url]];
    
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
