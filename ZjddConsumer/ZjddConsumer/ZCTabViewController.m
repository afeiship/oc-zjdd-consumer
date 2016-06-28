//
//  ZCTabViewController.m
//  ZjddConsumer
//
//  Created by 郑飞 on 6/25/16.
//  Copyright © 2016 feizheng. All rights reserved.
//

#import "ZCTabViewController.h"
#import "HomeViewController.h"

@interface ZCTabViewController ()<UITabBarControllerDelegate>

@end

@implementation ZCTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Tab bar init!");
    [self setUpTabController];
    self.tabBarController.viewControllers=[self getTabViewControllers];
    // Do any additional setup after loading the view.
}


-(void) setUpTabController{
    self.tabBarController = [[UITabBarController alloc] init];
}

-(NSArray *) getTabViewControllers{
    UINavigationController *homeNav= [self getTabBarItemWithViewController:[[UIViewController alloc] init] :@"首页" ];
    UINavigationController *storeNav= [self getTabBarItemWithViewController:[[UIViewController alloc] init] :@"超市" ];
    NSArray* controllers = [NSArray arrayWithObjects:homeNav ,storeNav,nil];
    return controllers;
}

-(UINavigationController *) getTabBarItemWithViewController:(UIViewController *) viewController
                                                           :(NSString *) title{
    viewController.title = title;
    return [[UINavigationController alloc] initWithRootViewController:viewController];
}




@end
