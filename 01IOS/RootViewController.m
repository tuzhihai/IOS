//
//  RootViewController.m
//  01IOS
//
//  Created by 关郑委 on 17/3/9.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "RootViewController.h"

#define VIEW1_TAG 2000
#define ANIMATION_TAG 3000
@interface RootViewController ()
{
    UIView *view2;
}
@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 200, 200)];
    view1.backgroundColor=[UIColor redColor];
    view1.tag=VIEW1_TAG;
    [self.view addSubview:view1];
    
    view2=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 200, 100)];
    view2.backgroundColor=[UIColor orangeColor];
    [view1 addSubview:view2];
    
    UIView *view3=[[UIView alloc]initWithFrame:CGRectMake(20, 20, 200, 50)];
    view3.backgroundColor=[UIColor yellowColor];
    view3.tag=ANIMATION_TAG;
    [view2 addSubview:view3];
    
    
    
    
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

- (IBAction)firstClick:(id)sender {
    
    //第一种方法：设置全局变量（不推荐）
    view2.backgroundColor=[UIColor greenColor];
    
    //第二种方法，设置view tag值
    UIView *tempView=[self.view viewWithTag:VIEW1_TAG];
    tempView.backgroundColor=[UIColor orangeColor];
    NSLog(@"我被点击了");
}

- (IBAction)animation:(id)sender {
    
    
    UIView *tempView2=[self.view viewWithTag:ANIMATION_TAG];
    
    [UIView beginAnimations:nil  context:NULL];  //标记动画的开始
    [UIView setAnimationDuration:3.0];//设置动画时长
    [UIView setAnimationDelay:0.5];//设置延时
    tempView2.frame=CGRectMake(50, 480, 200, 50);//设置改变后的位置
    tempView2.alpha=0.5;
    //延迟
    
    //旋转
    tempView2.transform=CGAffineTransformRotate(tempView2.transform,0.8);
    //放大、缩小
    tempView2.transform=CGAffineTransformScale(tempView2.transform,1,6);
    [UIView commitAnimations];  //提交动画
    
    
    
}
@end
