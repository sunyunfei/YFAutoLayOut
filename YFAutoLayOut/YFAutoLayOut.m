//
//  YFAutoLayOut.m
//  YFAutoLayOut
//
//  Created by 孙云 on 16/3/16.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import "YFAutoLayOut.h"

@implementation YFAutoLayOut
/**
 *  左侧的距离
 *
 *  @param bgView 父视图
 */
- (void)YFLeftSpaceToFatherView:(UIView *)bgView{

    NSLayoutConstraint *leftSpace = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeft relatedBy:NSLayoutRelationEqual toItem:bgView attribute:NSLayoutAttributeLeft multiplier:1.0 constant:1.0];
    [bgView addConstraint:leftSpace];
}
/**
 *  右侧的记录
 *
 *  @param bgView 父视图
 */
- (void)YFRightSpaceToFatherView:(UIView *)bgView{

    NSLayoutConstraint *rightSpace = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeRight relatedBy:NSLayoutRelationEqual toItem:bgView attribute:NSLayoutAttributeRight multiplier:1.0 constant:1.0];
    [bgView addConstraint:rightSpace];
}
/**
 *  上侧的距离
 *
 *  @param bgView 父视图
 */
- (void)YFTopSpaceToFatherView:(UIView *)bgView{

    NSLayoutConstraint *topSpace = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeTop relatedBy:NSLayoutRelationEqual toItem:bgView attribute:NSLayoutAttributeTop multiplier:1.0 constant:1.0];
    [bgView addConstraint:topSpace];
}
@end
