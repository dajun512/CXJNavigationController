//
//  DemoNavController.m
//  CXJNavigationController
//
//  Created by pro on 2018/5/30.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//  使用:继承CXJNavigationController
//  1.设置self.backBarButtonItem 返回按钮

#import "DemoNavController.h"

@interface DemoNavController ()

@end

@implementation DemoNavController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //*********1.自定义返回按钮
    UIButton *backButton = ({
        UIButton *backButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [backButton setTitle:@"自定义" forState:UIControlStateNormal];
        [backButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        [backButton setImage:[UIImage imageNamed:@"navigationButtonReturn"] forState:UIControlStateNormal];
        [backButton addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchDown];
        [backButton setHighlighted:NO];
        backButton;
    });
    self.backBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:backButton];
}


-(void)back:(UIButton *)button
{
    [self popViewControllerAnimated:YES];
}


@end
