//
//  ViewController.m
//  CXJNavigationController
//
//  Created by pro on 2018/5/30.
//  Copyright © 2018年 ChenXiaoJun. All rights reserved.
//

#import "ViewController.h"
#import "DemoSubViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"自定义统一返回按钮";
    
    
    UILabel *label = [[UILabel alloc] init];
    label.text = @"点击空白处Push";
    [label sizeToFit];
    label.center = self.view.center;
    label.textColor = [UIColor redColor];
    
    [self.view addSubview:label];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    DemoSubViewController *vc = [[DemoSubViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
    
}



@end
