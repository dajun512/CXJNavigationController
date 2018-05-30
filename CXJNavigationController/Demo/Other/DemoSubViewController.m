//
//  DemoSubViewController.m
//  CXJNavigationController
//
//  Created by pro on 2018/5/30.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "DemoSubViewController.h"

@interface DemoSubViewController ()

@end

@implementation DemoSubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    self.title = @"滑动返回";
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"全屏滑动返回";
    [label sizeToFit];
    label.center = self.view.center;
    label.textColor = [UIColor blackColor];
    
    [self.view addSubview:label];
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
