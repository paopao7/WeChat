//
//  LoginViewController.m
//  demo_UINavigationController
//
//  Created by 钱超 on 16/7/5.
//  Copyright © 2016年 钱超. All rights reserved.
//

#import "LoginViewController.h"
#import "questionViewController.h"

@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.title = @"登录";
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    
    //登录页面标题
    UILabel *login_title = [[UILabel alloc] initWithFrame:CGRectMake(50, 50, 220, 20)];
    
    login_title.font = [UIFont boldSystemFontOfSize:24];
    
    login_title.textColor = [UIColor colorWithRed:0.13 green:0.13 blue:0.13 alpha:1.00];
    
    login_title.textAlignment = UITextAlignmentCenter;
    
    login_title.text = @"使用账号和密码登录";
    
    
    //登录view
    UIView *login_view = [[UIView alloc] initWithFrame:CGRectMake(10, 100, 320, 40)];
    
//    login_view.layer.borderColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00].CGColor;
    
//    login_view.layer.borderWidth = 1.0;
    
    
    
    
    
    
    //账号UILabel
    UILabel *username = [[UILabel alloc] initWithFrame:CGRectMake(5, 0, 60, 30)];
    
    username.text = @"账号";
    
    username.textAlignment = NSTextAlignmentLeft;
    
    
    username.font = [UIFont boldSystemFontOfSize:16.0];
    
    username.textColor = [UIColor colorWithRed:0.24 green:0.24 blue:0.24 alpha:1.00];
    
    [login_view addSubview:username];
    
    
    
    
    
    
    //账号UITextField
    UITextField *username_input = [[UITextField alloc] initWithFrame:CGRectMake(70, 0, 200, 30)];
    
    [username_input.layer setCornerRadius:2.0];
    
    username_input.backgroundColor = [UIColor whiteColor];
    
    username_input.placeholder = @"请输入账号";
    
    [username_input setValue:[UIColor colorWithRed:0.82 green:0.82 blue:0.82 alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    
    [username_input setValue:[UIFont boldSystemFontOfSize:16] forKeyPath:@"_placeholderLabel.font"];
    
    [login_view addSubview:username_input];
    
    
    
    
    
    //账号下的横线
    UIView *username_line = [[UIView alloc] initWithFrame:CGRectMake(5, 35, 315, 1)];
    
    [username_line setBackgroundColor:[UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00]];
    
    [login_view addSubview:username_line];
    
    [username_line release];

    
    
    
    
    //密码view
    UIView *password_view = [[UIView alloc] initWithFrame:CGRectMake(10, 150, 320, 40)];
    
//    password_view.layer.borderColor = [UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00].CGColor;
//    
//    password_view.layer.borderWidth = 1.0;
    
    
    
    
    //密码UILabel
    UILabel *password = [[UILabel alloc] initWithFrame:CGRectMake(5, 0, 60, 30)];
    
    password.text = @"密码";
    
    password.textAlignment = NSTextAlignmentLeft;
    
    password.font = [UIFont boldSystemFontOfSize:16.0];
    
    password.textColor = [UIColor colorWithRed:0.24 green:0.24 blue:0.24 alpha:1.00];
    
    [password_view addSubview:password];
    
    
    
    
    
    //密码UITextField
    UITextField *password_input = [[UITextField alloc] initWithFrame:CGRectMake(70, 0, 200, 30)];
    
    [password_input.layer setCornerRadius:2.0];
    
    password_input.backgroundColor = [UIColor whiteColor];
    
    password_input.placeholder = @"请输入密码";
    
    [password_input setValue:[UIColor colorWithRed:0.82 green:0.82 blue:0.82 alpha:1] forKeyPath:@"_placeholderLabel.textColor"];
    
    [password_input setValue:[UIFont boldSystemFontOfSize:16] forKeyPath:@"_placeholderLabel.font"];
    
    password_input.secureTextEntry = YES;
    
    [password_view addSubview:password_input];
    
    
    
    //密码下的横线
    UIView *password_line = [[UIView alloc] initWithFrame:CGRectMake(5, 85, 315, 1)];
    
    [password_line setBackgroundColor:[UIColor colorWithRed:0.95 green:0.95 blue:0.95 alpha:1.00]];
    
    [login_view addSubview:password_line];
    
    [password_line release];
    
    
    
    
    
    //登录按钮
    UIButton *login_btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 230, 300, 50)];
    
//    login_btn.backgroundColor = [UIColor colorWithRed:0.06 green:0.8 blue:0.05 alpha:1.00];
    
    [login_btn setBackgroundImage:[UIImage imageNamed:@"login_btn"] forState:UIControlStateNormal];
    
    [login_btn setBackgroundImage:[UIImage imageNamed:@"login_btn_selected"] forState:UIControlStateSelected];
    
    [login_btn setTitle:@"登录" forState:UIControlStateNormal];
    
    //设置圆角2度
    [login_btn.layer setCornerRadius:5.0];
    
    //设置边框大小
    [login_btn.layer setBorderWidth:1.0];
    
    login_btn.layer.borderColor = [UIColor colorWithRed:0.06 green:0.62 blue:0.02 alpha:1.00].CGColor;
    
    
    
    
    //登录遇到问题
    UIButton *question_btn = [[UIButton alloc] initWithFrame:CGRectMake(110, 300, 100, 20)];
    
    [question_btn setTitle:@"登录遇到问题?" forState:UIControlStateNormal];
    
    question_btn.titleLabel.font = [UIFont boldSystemFontOfSize:14.0];
    
    [question_btn setTitleColor:[UIColor colorWithRed:0.40 green:0.47 blue:0.62 alpha:1.00] forState:UIControlStateNormal];
    
    
    //登录遇到问题UILabel
    //    UILabel *question_label = [[UILabel alloc] initWithFrame:CGRectMake(110, 300, 100, 20)];
    //
    //    question_label.font = [UIFont boldSystemFontOfSize:14.0];
    //
    //    question_label.textColor = [UIColor colorWithRed:0.40 green:0.47 blue:0.62 alpha:1.00];
    //
    //    question_label.text = @"登录遇到问题?";
    //
    //下划线
    //    NSDictionary *attribtDic = @{NSUnderlineStyleAttributeName: [NSNumber numberWithInteger:NSUnderlineStyleSingle]};
    //
    //    NSMutableAttributedString *attribtStr = [[NSMutableAttributedString alloc]initWithString:@"登录遇到问题?" attributes:attribtDic];
    //
    //    question_btn.attributedText = attribtStr;
    
    

    UIView *question_line = [[UIView alloc] initWithFrame:CGRectMake(105, 87, 90, 1)];
    
    [question_line setBackgroundColor:[UIColor colorWithRed:0.40 green:0.47 blue:0.62 alpha:1.00]];
    
    [login_btn addSubview:question_line];
    
    [question_line release];
    
    
    //登录遇到问题 绑定操作
    [question_btn addTarget:self action:@selector(open_question) forControlEvents:UIControlEventTouchUpInside];
    
    
    
    [self.view addSubview:login_title];
    [self.view addSubview:login_view];
    [self.view addSubview:password_view];
    [self.view addSubview:login_btn];
    [self.view addSubview:question_btn];
    
    //    [self.view addSubview:username];
    //    [self.view addSubview:username_input];
    //    [self.view addSubview:password];
    //    [self.view addSubview:password_input];
}


//点击空白处关闭键盘
-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}

//登录遇到问题 绑定操作
- (void) open_question{
    UIViewController *questions = [[questionViewController alloc] init];
    
    [self.navigationController pushViewController:questions animated:YES];
    
    [questions release];
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
