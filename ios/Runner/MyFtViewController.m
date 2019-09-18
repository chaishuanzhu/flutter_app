//
//  MyFtViewController.m
//  Runner
//
//  Created by 飞鱼 on 2019/9/18.
//  Copyright © 2019 The Chromium Authors. All rights reserved.
//

#import "MyFtViewController.h"

@interface MyFtViewController ()

@end

@implementation MyFtViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [super touchesBegan:touches withEvent:event];
    NSLog(@"%@",touches);
}

@end
