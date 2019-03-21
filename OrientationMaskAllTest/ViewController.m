//
//  ViewController.m
//  OrientationMaskAllTest
//
//  Created by hqc on 2019/3/21.
//  Copyright © 2019年 hqc. All rights reserved.
//

#import "ViewController.h"
#import "OneViewController.h"
#import "TwoViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *testBtn = [[UIButton alloc] initWithFrame:CGRectMake(20, 100, 150, 50)];
    [testBtn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [testBtn setTitle:@"测试一" forState:UIControlStateNormal];
    testBtn.backgroundColor = [UIColor yellowColor];
    [testBtn addTarget:self action:@selector(testBtnClick) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testBtn];
    
    
    UIButton *testBtn2 = [[UIButton alloc] initWithFrame:CGRectMake(20, 200, 150, 50)];
    [testBtn2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [testBtn2 setTitle:@"test" forState:UIControlStateNormal];
    testBtn2.backgroundColor = [UIColor yellowColor];
    [testBtn2 addTarget:self action:@selector(testBtn2Click) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:testBtn2];
    
}

//调用私有方法:setOrientation,可能上架会被拒
-(void)testBtnClick{
    OneViewController *oneVC= [[OneViewController alloc] init];
    [self.navigationController pushViewController:oneVC animated:YES];
}
//使用KVO间接调用私有方法,不会被拒
-(void)testBtn2Click{
    TwoViewController *oneVC= [[TwoViewController alloc] init];
    [self.navigationController pushViewController:oneVC animated:YES];
}
@end
