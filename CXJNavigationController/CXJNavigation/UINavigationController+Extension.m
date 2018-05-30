//
//  UINavigationController+Extension.m
//  CXJNavigationController
//
//  Created by pro on 2018/5/30.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "UINavigationController+Extension.h"
#import <objc/runtime.h>

@implementation UINavigationController (Extension)

-(void)setBackBarButtonItem:(UIBarButtonItem *)backBarButtonItem
{
    if (![backBarButtonItem isKindOfClass:[UIBarButtonItem class]]) return;
    objc_setAssociatedObject(self, @selector(backBarButtonItem), backBarButtonItem, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

-(UIBarButtonItem *)backBarButtonItem
{
    return objc_getAssociatedObject(self, _cmd);
}

@end
