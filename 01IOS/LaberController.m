//
//  LaberController.m
//  01IOS
//
//  Created by 关郑委 on 17/3/10.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "LaberController.h"

@interface LaberController ()

@end

@implementation LaberController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *laber=[[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200,200)];
    
    laber.text=@"这是laber上的文字，1234567";
    laber.backgroundColor =[UIColor redColor];      //设置背景颜色
    laber.textColor=[UIColor yellowColor];          //设置字体颜色
    laber.font=[UIFont systemFontOfSize:20.0];     //设置字体大小
    laber.font=[UIFont boldSystemFontOfSize:20.0]; //设置粗体
    laber.numberOfLines=0;                          //设置行数
    laber.textAlignment=NSTextAlignmentCenter;
    [self.view addSubview:laber]; //将laber添加到UIView
    
    
    
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
