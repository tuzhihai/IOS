
//
//  AnimationViewController.m
//  01IOS
//
//  Created by 关郑委 on 17/3/10.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "AnimationViewController.h"

#define  IMAGEVIEW_TAG 2000
@interface AnimationViewController ()

@end

@implementation AnimationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //UIImageView 图片控件
    //UIImage     图片类
    
    UIImageView *imageView=[[UIImageView alloc]initWithFrame:CGRectMake(40, 50, 375-80, 400)];
    imageView.image=[UIImage imageNamed:@"campFire1.gif"];
    [self.view addSubview:imageView];
    
    //图片的动画，设置动画的图片数组
    NSMutableArray *theImageArray=[[NSMutableArray alloc] init];
    for(int i=1;i<=17;i++){
        //获取图片的名称
        NSString *imageName=[NSString stringWithFormat:@"campFire%d.gif",i];
        //通过图片名称获取图片
        UIImage *image=[UIImage imageNamed:imageName];
        [theImageArray addObject:image];
    }
   // NSLog(@"theImageArray=%@",theImageArray);
    
    
    //图片的动画数组
    imageView.animationImages=theImageArray;
    imageView.animationDuration=0.2;
    imageView.animationRepeatCount=0;
    imageView.tag=IMAGEVIEW_TAG;
    [imageView startAnimating]; //开始动画
    
    //按钮控制动画的开始结束
    UIButton *control=[UIButton buttonWithType:UIControlStateNormal];
    control.frame=CGRectMake((375-100)/2, 550, 100, 36);
    control.backgroundColor=[UIColor redColor];
    [control setTitle:@"停止燃烧" forState:UIControlStateNormal];
    [control addTarget:self action:@selector(animationAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:control];
    
}
-(void) animationAction:(UIButton *)button{
    UIImageView *tempImageView=[self.view viewWithTag:IMAGEVIEW_TAG];
    if(tempImageView.isAnimating){
        [tempImageView stopAnimating];
        [button setTitle:@"开始燃烧" forState:UIControlStateNormal];
    }else{
        [tempImageView startAnimating];
        [button setTitle:@"停止燃烧" forState:UIControlStateNormal];
    }
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
