//
//  CXJNavigationController.m
//  CXJNavigationController
//
//  Created by pro on 2018/5/30.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "CXJNavigationController.h"

@interface CXJNavigationController ()<UIGestureRecognizerDelegate>

@end

@implementation CXJNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //*********设置全屏滑动
    ({
        UIPanGestureRecognizer *panGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self.interactivePopGestureRecognizer.delegate action:@selector(handleNavigationTransition:)];
        
        [self.view addGestureRecognizer:panGesture];
        panGesture.delegate = self;
        
        self.interactivePopGestureRecognizer.enabled = NO;
    });
    
}



/**
 push 控制器时调用
 */
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.viewControllers.count > 0) {
        //统一设置push隐藏tabbar
        viewController.hidesBottomBarWhenPushed = YES;
        
        //统一设置返回按钮
        if (self.backBarButtonItem) {
            viewController.navigationItem.leftBarButtonItem = self.backBarButtonItem;
        }
        
    }

    [super pushViewController:viewController animated:animated];
}


#pragma mark - UIGestureRecognizerDelegate
-(BOOL)gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldReceiveTouch:(UITouch *)touch
{
 
    return (self.viewControllers.count > 1);
}

@end
