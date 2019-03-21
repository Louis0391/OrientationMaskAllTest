//
//  TwoViewController.m
//  OrientationMaskAllTest
//
//  Created by hqc on 2019/3/21.
//  Copyright © 2019年 hqc. All rights reserved.
//

#import "TwoViewController.h"
#import "AppDelegate.h"

@interface TwoViewController ()

@end

@implementation TwoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"测试二";
    self.view.backgroundColor = [UIColor yellowColor];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.allowRotation = 1;
    
    //强制显示横屏：
     [self setOrientationWithOrientation:UIInterfaceOrientationMaskAll];
    
}
-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    appDelegate.allowRotation = 0;
    
    //强制改为竖屏：
    [self setOrientationWithOrientation:UIInterfaceOrientationPortrait];
}

-(void)setOrientationWithOrientation:(int)orientation{
    NSNumber *orientationUnknown = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
    [[UIDevice currentDevice] setValue:orientationUnknown forKey:@"orientation"];
    NSNumber *orientationTarget = [NSNumber numberWithInt:orientation];
    [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
}
@end
