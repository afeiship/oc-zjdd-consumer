//
//  ZCTabViewController.m
//  ZjddConsumer
//
//  Created by 郑飞 on 6/25/16.
//  Copyright © 2016 feizheng. All rights reserved.
//
#import "Colors.h"
#import "ZCTabViewController.h"
#import "HomeViewController.h"
#import "StoreViewController.h"

@interface ZCTabViewController ()<UITabBarControllerDelegate>

@end

@implementation ZCTabViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Tab bar init!");
    [self initTabItems];
    // Do any additional setup after loading the view.
}

-(void) initTabItems{
    HomeViewController *homeVC= [[HomeViewController alloc ] init];
    StoreViewController *storeVC= [[StoreViewController alloc ] init];
    
    [self setNavItemViewController:homeVC Title:@"首页" Icon:@"TabHomeDefault" SelectedIcon:@"TabHomeSelected"];
    [self setNavItemViewController:storeVC Title:@"超市" Icon:@"TabSupermarketDefault" SelectedIcon:@"TabSupermarketSelected"];
}



-(void) setNavItemViewController:(UIViewController *)viewController
                           Title:(NSString *)title
                           Icon:(NSString *) icon
                           SelectedIcon:(NSString *) selectedIcon{
    //1.set root controller
    UINavigationController *nav= [[UINavigationController alloc] initWithRootViewController:viewController];
    //    [nav setHidesBarsOnTap:YES];
    
    //2.set title:
    nav.title = title;
    
    //3.set icon[default/selected]:
    nav.tabBarItem.image = [UIImage imageNamed:icon];
    nav.tabBarItem.selectedImage=[UIImage imageNamed:selectedIcon];
    
    //4.设置navigationBar的标题
    viewController.navigationItem.title = title;
    
    //5.设置背景色（这些操作可以交给每个单独子控制器去做）
    //viewController.view.backgroundColor = [UIColor whiteColor];
    
    //6.attach to main view:
    self.tabBar.tintColor = ZjddGreenColor;
    [self addChildViewController:nav];
}



@end
