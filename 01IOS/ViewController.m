//
//  ViewController.m
//  01IOS
//
//  Created by 关郑委 on 17/3/9.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"第三步");
    
    //自定义view
    UILabel *laber=[[UILabel alloc] init];
    laber.frame=CGRectMake(0, 100, 200, 200);
    laber.backgroundColor=[UIColor redColor];
    laber.text=@"涂志海的第一个IOS程序";
    [self.view addSubview:laber];
    
    
    //坐标--学习用
    CGPoint point=CGPointMake(200,100);
    CGSize size=CGSizeMake(200, 200);
    CGRect rect=CGRectMake(point.x, point.y, size.width, size.height);
    
    UIView *view=[[UIView alloc]init];
    view.frame=rect;
    
    //自定义颜色
    UIColor *color=[UIColor colorWithRed:100/255.0 green:180/255.0 blue:190/255.0 alpha:0.1];
    view.backgroundColor=color;
    [self.view addSubview:view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
