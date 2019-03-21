//
//  AppDelegate.m
//  OrientationMaskAllTest
//
//  Created by hqc on 2019/3/21.
//  Copyright © 2019年 hqc. All rights reserved.
//

#import "AppDelegate.h"
#import "TestNavigationController.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    ViewController *vc = [[ViewController alloc]init];
    TestNavigationController *rootNav = [[TestNavigationController alloc]initWithRootViewController:vc];
    self.window =[[UIWindow alloc]initWithFrame:[[UIScreen mainScreen]bounds]];
    [self.window makeKeyAndVisible];
    [self.window setRootViewController:rootNav];
    
    return YES;
}


#pragma mark =====横竖屏======
- (NSUInteger)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window
{
    if (_allowRotation == 1) {
        return UIInterfaceOrientationMaskAllButUpsideDown;
    }else{
        return UIInterfaceOrientationMaskPortrait;
    }
    
}

@end
