//
//  AppDelegate.h
//  OrientationMaskAllTest
//
//  Created by hqc on 2019/3/21.
//  Copyright © 2019年 hqc. All rights reserved.
//

#import <UIKit/UIKit.h>
@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

// 是否允许屏幕旋转  0是不支持旋转，1是支持旋转 
@property (assign, nonatomic) NSInteger allowRotation;

@end

