//
//  MasonryViewController.m
//  demo_UINavigationController
//
//  Created by 钱超 on 16/7/14.
//  Copyright © 2016年 钱超. All rights reserved.
//

#import "MasonryViewController.h"
#import "Masonry.h"
#import "configure.h"

@interface MasonryViewController ()

@end

@implementation MasonryViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.title = @"Masonry";
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    WS(ws);
    
    UIView *sv = [UIView new];
    
//    [sv showPlaceHolder];
    sv.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:sv];
    
    [sv mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(ws.view);
        
        make.size.mas_equalTo(CGSizeMake(300, 300));
    }];
    
    UIView *sv1 = [UIView new];
    
//    sv1.backgroundColor = [UIColor redColor];
//    
//    [sv addSubview:sv1];
//    
//    [sv1 mas_makeConstraints:^(MASConstraintMaker *make){
//        make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//    }];
    
   //    UIView *sv1 = [UIView new];
//
//    sv1.backgroundColor = [UIColor redColor];
//    [sv addSubview:sv1];
//    [sv1 mas_makeConstraints:^(MASConstraintMaker *make) {
//        make.edges.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//        
//        /* 等价于
//         make.top.equalTo(sv).with.offset(10);
//         make.left.equalTo(sv).with.offset(10);
//         make.bottom.equalTo(sv).with.offset(-10);
//         make.right.equalTo(sv).with.offset(-10);
//         */
//        
//        /* 也等价于
//         make.top.left.bottom.and.right.equalTo(sv).with.insets(UIEdgeInsetsMake(10, 10, 10, 10));
//         */
//    }];
    // Do any additional setup after loading the view.
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
