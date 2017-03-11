//
//  AppDelegate.m
//  01IOS
//
//  Created by 关郑委 on 17/3/9.
//  Copyright © 2017年 涂志海. All rights reserved.
//

#import "AppDelegate.h"
#import "RootViewController.h"
#import "RectangleController.h"
#import "LaberController.h"
#import "ButtonController.h"
#import "ImageViewController.h"
#import "AnimationViewController.h"
#import "InputViewController.h"
@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    [NSThread sleepForTimeInterval:0.1];
    NSLog(@"第二步");
    
    
    
    
    
    //系统默认的根视图控制器，是ViewController
    //自定义视图控制器
//    RootViewController *root=[[RootViewController alloc]init];
//   self.window.rootViewController=root;
    
//    self.window.rootViewController=[[RectangleController alloc]init];
    
    //self.window.rootViewController=[[LaberController alloc]init];
    
    //self.window.rootViewController=[[ButtonController alloc]init];
    
    //self.window.rootViewController=[[ImageViewController alloc]init];
    
    //self.window.rootViewController=[[AnimationViewController alloc]init];
    
    self.window.rootViewController=[[InputViewController alloc]init];
    //一般一个应用程序，只有一个UIWindow(父类是UIView)
    
   
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
