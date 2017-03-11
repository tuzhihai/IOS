//
//  RectangleController.m
//  01IOS
//
//  Created by 关郑委 on 17/3/10.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "RectangleController.h"

@interface RectangleController ()

@end

@implementation RectangleController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 200, 200)];
    view.backgroundColor=[UIColor redColor];
    [self.view addSubview:view];
    
    
    //自己的
//    int a=0;
//    for(int i=0;i<=200;i+=20){
//        for(int j=0;j<=200;j+=20){
//            
//            UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(j, i, 20, 20)];
//            if(a == 0){
//                view2.backgroundColor=[UIColor blackColor];
//                a=1;
//            }else if(a==1){
//                view2.backgroundColor=[UIColor redColor];
//                a=0;
//            }
//            [view addSubview:view2];
//            
//            
//        }
//    }
    
    //老师的方法
    for(int i=0;i<10;i++){
        for(int j=0;j<10;j++){
            UIView *view2=[[UIView alloc]initWithFrame:CGRectMake(j*20, i*20, 20, 20)];
            if((i+j)%2 == 0 ){
                view2.backgroundColor=[UIColor blackColor];
            }else{
                view2.backgroundColor=[UIColor redColor];
            }
            [view addSubview:view2];
        }
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
