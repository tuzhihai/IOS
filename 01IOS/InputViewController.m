





//
//  InputViewController.m
//  01IOS
//
//  Created by 关郑委 on 17/3/10.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "InputViewController.h"

@interface InputViewController ()

@end

@implementation InputViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    UITextField 输入控件
    
    //1、创建
    UITextField *textField = [[UITextField alloc] initWithFrame:CGRectMake(50, 80, 200, 40)];
    textField.tag = 2000;
    //    2、设置风格
    textField.borderStyle = UITextBorderStyleLine;
    //    3、设置文字
    //textField.text = @"中软国际";
    
    //    4、设置提示文字
    textField.placeholder = @"请输入用户名";
    
    //5、键盘成为第一响应者
    [textField becomeFirstResponder];
    
    //    6、键盘的类型
    //textField.keyboardType = UIKeyboardTypeNumberPad;
    
    //    7、键盘确定return的风格
    textField.returnKeyType =  UIReturnKeyDone;
    
    //8、设置密文  把文字变星号
    // textField.secureTextEntry = YES;
    
    //    9、设置委托
    textField.delegate = self;
    
    
    //    10、添加控件
    [self.view addSubview:textField];
    
}

#pragma mark  UITextFieldDelegate
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{//return NO 是不允许编辑的
    return YES;
}
- (BOOL)textFieldShouldReturn:(UITextField *)textField;
{
    NSLog(@"Done 被点击了");
    [textField resignFirstResponder];
    return YES;
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
