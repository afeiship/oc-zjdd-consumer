//
//  AppDelegate.m
//  ZjddConsumer
//
//  Created by 郑飞 on 6/25/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "ZCAppDelegate.h"

@interface ZCAppDelegate ()

@end

@implementation ZCAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    NSLog(@"App init!");
    [self createMainWindow];
    return YES;
}

-(void) createMainWindow{
    NSLog(@"Main window init!");
    self.window =[[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    
    //todo:Virtural view controller for hook the bug:
    self.window.rootViewController=[UIViewController new];
    self.window.backgroundColor=[UIColor whiteColor];
    [self.window makeKeyAndVisible];
}
@end
