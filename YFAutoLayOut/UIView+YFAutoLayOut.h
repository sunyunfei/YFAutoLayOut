//
//  UIView+YFAutoLayOut.h
//  YFAutoLayOut
//
//  Created by 孙云 on 16/3/16.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (YFAutoLayOut)
/****************与父视图做位置大小对应**************************/
//左侧的距离
- (void)YFLeftSpaceToFatherView:(UIView *)bgView Distance:(CGFloat)distance;
//右侧的距离
- (void)YFRightSpaceToFatherView:(UIView *)bgView Distance:(CGFloat)distance;
//上侧的距离
- (void)YFTopSpaceToFatherView:(UIView *)bgView Distance:(CGFloat)distance;
//底侧的距离
- (void)YFBottomSpaceToFatherView:(UIView *)bgView Distance:(CGFloat)distance;
//上下左右距离
- (void)YFSpaceToFatherView:(UIView *)bgView leftDistance:(CGFloat)distance1 rightDistance:(CGFloat)distance2 topDistance:(CGFloat)distance3 bottomDistance:(CGFloat)distance4;

//与父视图左边界一样的约束
- (void)YFLeftSpaceEqualToFatherView:(UIView *)bgView;
//与父视图右边界一样的约束
- (void)YFRightSpaceEqualToFatherView:(UIView *)bgView;
//与父视图上边界一样的约束
- (void)YFTopSpaceEqualToFatherView:(UIView *)bgView;
//与父视图下边界一样的约束
- (void)YFBottomSpaceEqualToFatherView:(UIView *)bgView;
//x轴居中
- (void)YFCenterPointXToFatherView:(UIView *)bgView;
//y轴居中
- (void)YFCenterPointYToFatherView:(UIView *)bgView;
//居中布局
- (void)YFCenterPointToFatherView:(UIView *)bgView;
//固定高度
- (void)YFHeightOfView:(CGFloat)height;
//固定宽度
- (void)YFWidthOfView:(CGFloat)width;
//比例高度
- (void)YFProportionHeightOfView:(CGFloat)heightPro toFatherView:(UIView *)bgView;
//比例宽度
- (void)YFProportionWidthOfView:(CGFloat)widthPro toFatherView:(UIView *)bgView;

/***********************与兄弟视图做位置大小对应*************************/

//本视图左侧与兄弟视图左侧的距离(以兄弟视图左侧视图为准点，向右布局)
- (void)YFLeftSpaceToBrotherViewLeft:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView;
//本视图左侧与兄弟视图右侧的距离(以兄弟视图右侧视图为准点，向右布局)
- (void)YFLeftSpaceToBrotherViewRight:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView;

//本视图右侧与兄弟视图右侧的距离(以兄弟视图右侧视图为准点，向左布局)
- (void)YFRightSpaceToBrotherViewRight:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView;
//本视图右侧与兄弟视图左侧的距离(以兄弟视图左侧视图为准点，向左布局)
- (void)YFRightSpaceToBrotherViewLeft:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView;

//本视图上侧与兄弟视图上侧的距离(以兄弟视图上侧卫准点，向下布局)
- (void)YFTopSpaceToBrotherViewTop:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView;
//本视图上侧与兄弟视图上侧的距离(以兄弟视图下侧卫准点，向下布局)
- (void)YFTopSpaceToBrotherViewBottom:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView;

//本视图与兄弟视图下侧的距离(以兄弟视图下侧为准点，向上布局)
- (void)YFBottomSpaceToBrotherViewBottom:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView;
//本视图与兄弟视图下侧的距离(以兄弟视图上侧为准点，向上布局)
- (void)YFBottomSpaceToBrotherViewTop:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView;
//两个视图左边约束一样
- (void)YFEqualLeftSpaceToBrotherView:(UIView *)brotherView inFatherView:(UIView *)bgView;

//比例高度
- (void)YFProportionHeightOfView:(CGFloat)heightPro toBrotherView:(UIView *)brotherView;
//比例宽度
- (void)YFProportionWidthOfView:(CGFloat)widthPro toBrotherView:(UIView *)brotherView;
@end
