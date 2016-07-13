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

//- (void)viewDidLoad {
//    [super viewDidLoad];
//    
//    self.title = @"第二页";
//    
//    /*UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(30, 30, 50, 30)];
//    
//    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
//    
//    [button setTitle:_str forState:UIControlStateNormal];
//    
//    //设置圆角2度
//    [button.layer setCornerRadius:2.0];
//    
//    //设置边框大小
//    [button.layer setBorderWidth:1.0];
//    
//    //设置边框颜色
//    button.layer.borderColor = [UIColor orangeColor].CGColor;
//    
//    [button addTarget:self action:@selector(clicked) forControlEvents:UIControlEventTouchUpInside];
//    
//    [self.view addSubview:button];*/
//    
//    
//    // Do any additional setup after loading the view.
//}

//- (void) clicked{
//    [self.navigationController popViewControllerAnimated:YES];
//}

//- (void)didReceiveMemoryWarning {
//    [super didReceiveMemoryWarning];
//    // Dispose of any resources that can be recreated.
//}


- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.创建tableview
    UITableView *tableview = [[UITableView alloc] init];
    tableview.frame = self.view.bounds;
    
    // 2.设置数据源
    tableview.dataSource =self;
    
    // 3.添加tableview到view
    [self.view addSubview:tableview];
    
    // 4.设置分割线样式
//     tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    // 5.设置分割线颜色
    //接收的参数是颜色的比例值
    tableview.separatorColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00];
    
    // 设置tableview的头部视图
    
    //登录页面标题
    UILabel *login_title = [[UILabel alloc] initWithFrame:CGRectMake(50, 20, self.view.bounds.size.width-50, 20)];
    
    login_title.font = [UIFont fontWithName:@"Arial" size:6.0];
    
    login_title.font = [UIFont boldSystemFontOfSize:24];
    
    login_title.textColor = [UIColor colorWithRed:0.13 green:0.13 blue:0.13 alpha:1.00];
    
    //    login_title.textAlignment = UITextAlignmentCenter;
    
    login_title.text = @"使用账号和密码登录";
    
    UIView *login_title_view = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 80)];
    
    [login_title_view addSubview:login_title];
    
    tableview.tableHeaderView = login_title_view;
//    tableview.tableFooterView = [[UISwitch alloc] init];
    
    //一句话去除UITableView底部多余行及分割线
    tableview.tableFooterView = [[UIView alloc] initWithFrame:CGRectZero];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 2;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    // 1.创建cell
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewStylePlain reuseIdentifier:nil];
  
    UIImage *username_image = [UIImage imageNamed:@"login_icon"];
    
    UILabel *username= [[UILabel alloc] init];
    
    username.text = @"账号";
    
    if (indexPath.row == 0) {
//        cell.image = username_image;
        
        cell.textLabel.text = @"账号";
        
        cell.detailTextLabel.text = @"请输入您的账号";
    }
    // 2.设置cell的数据
//    cell.textLabel.text = [NSString stringWithFormat:@"%d", indexPath.row ];
    
    // 3.返回cell
    return cell;
}

- (BOOL)prefersStatusBarHidden
{
    return YES;
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
