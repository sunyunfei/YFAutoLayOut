//
//  ViewController.m
//  YFAutoLayOut
//
//  Created by 孙云 on 16/3/16.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import "ViewController.h"
#import "UIView+YFAutoLayOut.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIView *view = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view.backgroundColor = [UIColor redColor];
    [self.view addSubview:view];
    
    [view setTranslatesAutoresizingMaskIntoConstraints:NO];
    [view YFLeftSpaceEqualToFatherView:self.view];
    [view YFRightSpaceEqualToFatherView:self.view];
    [view YFTopSpaceEqualToFatherView:self.view];
    [view YFBottomSpaceEqualToFatherView:self.view];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
