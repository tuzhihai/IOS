//
//  ImageViewController.m
//  01IOS
//
//  Created by 关郑委 on 17/3/10.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "ImageViewController.h"

@interface ImageViewController ()

@end

@implementation ImageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //图片默认是没有事件的（点击事件）
    UIImageView *imageView=[[UIImageView alloc]init];
    imageView.frame=CGRectMake(50, 50, 100, 200);
    imageView.image=[UIImage imageNamed:@"Icon.png"];
    //设置图片  （缩放比例） 的模式
    imageView.contentMode=UIViewContentModeScaleAspectFit;
    //允许图片有点击事件
    imageView.userInteractionEnabled=YES;
    
    UIButton *button=[UIButton buttonWithType:UIButtonTypeContactAdd];
    button.frame=CGRectMake(20, 100,80, 36);
    [button  addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [imageView addSubview:button];

    
    [self.view addSubview:imageView];
}
-(void) buttonAction:(UIButton *)button{
    NSLog(@"我被点击了");
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
