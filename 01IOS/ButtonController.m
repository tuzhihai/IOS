//
//  ButtonController.m
//  01IOS
//
//  Created by 关郑委 on 17/3/10.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "ButtonController.h"

@interface ButtonController ()

@end

@implementation ButtonController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIButton *button=[UIButton buttonWithType:UIButtonTypeCustom];
    
    button.frame=CGRectMake(100, 100,80,36);
    
   //button.backgroundColor=[UIColor redColor];
    
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateHighlighted];
    
    //button.enabled=NO;    //是否有点击事件,默认是yes
//    [button setTitle:@"Disabled" forState:UIControlStateDisabled];//不能点击
//    [button setTitle:@"这是按钮" forState:UIControlStateNormal]; //普通状态
//    [button setTitle:@"高亮" forState:UIControlStateHighlighted];//点击出现高亮状态
//    [button setTitle:@"Selected" forState:UIControlStateSelected];//设置选中状态
    //[button addTarget:self action:@"selector:(buttonAction)" forControlEvents:]
    
    
    //设置背景图片
    [button setBackgroundImage:[UIImage imageNamed:@"midgreenbtn.png"] forState:UIControlStateNormal];
    //设置图片
//    [button setImage:[UIImage imageNamed:@"address_checked_ico.png"] forState:UIControlStateNormal];//未选中转态
//    [button setImage:[UIImage imageNamed:@"address_unchecked_ico.png"] forState:UIControlStateSelected];//选中状态
    
    //添加事件
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [button addTarget:self action:@selector(buttonTouchDown) forControlEvents:UIControlEventTouchDown];
    
    [self.view addSubview:button];
}
-(void)buttonAction:(UIButton *)button{
    NSLog(@"我被点击了");
    if(button.selected==YES){
        button.selected=NO;
    }else{
        button.selected=YES;
    }
    
}
-(void) buttonTouchDown{
    NSLog(@"TouchDown:我刚被按下按钮了");
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
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
