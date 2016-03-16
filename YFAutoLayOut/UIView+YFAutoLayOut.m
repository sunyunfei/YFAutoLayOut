//
//  UIView+YFAutoLayOut.m
//  YFAutoLayOut
//
//  Created by 孙云 on 16/3/16.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import "UIView+YFAutoLayOut.h"

@implementation UIView (YFAutoLayOut)
#pragma mark --与父视图比较
#pragma mark 左侧
/**
 *  左侧的距离
 *
 *  @param bgView 父视图
 */
- (void)YFLeftSpaceToFatherView:(UIView *)bgView Distance:(CGFloat)distance{
    
    NSLayoutConstraint *leftSpace = [NSLayoutConstraint
                                     constraintWithItem:self
                                     attribute:NSLayoutAttributeLeft
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:bgView
                                     attribute:NSLayoutAttributeLeft
                                     multiplier:1.0
                                     constant:distance];
    [bgView addConstraint:leftSpace];
}
#pragma mark 右侧
/**
 *  右侧的记录
 *
 *  @param bgView 父视图
 */
- (void)YFRightSpaceToFatherView:(UIView *)bgView Distance:(CGFloat)distance{
    
    NSLayoutConstraint *rightSpace = [NSLayoutConstraint
                                      constraintWithItem:self
                                      attribute:NSLayoutAttributeRight
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:bgView
                                      attribute:NSLayoutAttributeRight
                                      multiplier:1.0
                                      constant:-distance];
    [bgView addConstraint:rightSpace];
}
#pragma mark 上侧
/**
 *  上侧的距离
 *
 *  @param bgView 父视图
 */
- (void)YFTopSpaceToFatherView:(UIView *)bgView Distance:(CGFloat)distance{
    
    NSLayoutConstraint *topSpace = [NSLayoutConstraint
                                    constraintWithItem:self
                                    attribute:NSLayoutAttributeTop
                                    relatedBy:NSLayoutRelationEqual
                                    toItem:bgView
                                    attribute:NSLayoutAttributeTop
                                    multiplier:1.0
                                    constant:distance];
    [bgView addConstraint:topSpace];
}
#pragma mark 下侧
/**
 *  底侧的距离
 *
 *  @param bgView   <#bgView description#>
 *  @param distance <#distance description#>
 */
- (void)YFBottomSpaceToFatherView:(UIView *)bgView Distance:(CGFloat)distance{

    NSLayoutConstraint *bottomSpace = [NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:bgView
                                       attribute:NSLayoutAttributeBottom
                                       multiplier:1.0
                                       constant:-distance];
    [bgView addConstraint:bottomSpace];
}
#pragma mark 与父视图上下左右的距离
/**
 *  上下左右距离
 *
 *  @param bgView   <#bgView description#>
 *  @param distance <#distance description#>
 *  @param distance <#distance description#>
 *  @param distance <#distance description#>
 *  @param distance <#distance description#>
 */
- (void)YFSpaceToFatherView:(UIView *)bgView leftDistance:(CGFloat)distance1 rightDistance:(CGFloat)distance2 topDistance:(CGFloat)distance3 bottomDistance:(CGFloat)distance4{

    NSLayoutConstraint *leftSpace = [NSLayoutConstraint
                                     constraintWithItem:self
                                     attribute:NSLayoutAttributeLeft
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:bgView
                                     attribute:NSLayoutAttributeLeft
                                     multiplier:1.0
                                     constant:distance1];
    NSLayoutConstraint *rightSpace = [NSLayoutConstraint
                                      constraintWithItem:self
                                      attribute:NSLayoutAttributeRight
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:bgView
                                      attribute:NSLayoutAttributeRight
                                      multiplier:1.0
                                      constant:-distance2];
    NSLayoutConstraint *topSpace = [NSLayoutConstraint
                                    constraintWithItem:self
                                    attribute:NSLayoutAttributeTop
                                    relatedBy:NSLayoutRelationEqual
                                    toItem:bgView
                                    attribute:NSLayoutAttributeTop
                                    multiplier:1.0
                                    constant:distance3];
     NSLayoutConstraint *bottomSpace = [NSLayoutConstraint
                                        constraintWithItem:self
                                        attribute:NSLayoutAttributeBottom
                                        relatedBy:NSLayoutRelationEqual
                                        toItem:bgView
                                        attribute:NSLayoutAttributeBottom
                                        multiplier:1.0
                                        constant:-distance4];
    NSArray *conArray = @[leftSpace,
                          rightSpace,
                          topSpace,
                          bottomSpace];
    [bgView addConstraints:conArray];
}
#pragma mark 固定高度
/**
 *  固定高度
 *
 *  @param height 高度
 */
- (void)YFHeightOfView:(CGFloat)height{

    NSLayoutConstraint *heightSpace = [NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeHeight
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:nil
                                       attribute:NSLayoutAttributeNotAnAttribute
                                       multiplier:1.0
                                       constant:height];
    [self addConstraint:heightSpace];
}
#pragma mark 固定宽度
/**
 *  固定宽度
 *
 *  @param width 宽度
 */
- (void)YFWidthOfView:(CGFloat)width{

    NSLayoutConstraint *widthSpace = [NSLayoutConstraint
                                      constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:nil
                                      attribute:NSLayoutAttributeNotAnAttribute
                                      multiplier:1.0
                                      constant:width];
    [self addConstraint:widthSpace];
}
#pragma mark 比例高度(与父视图比)
/**
 *  比例高度
 *
 *  @param heightPro <#heightPro description#>
 */
- (void)YFProportionHeightOfView:(CGFloat)heightPro toFatherView:(UIView *)bgView{

    NSLayoutConstraint *heightSpace = [NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeHeight
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:bgView
                                       attribute:NSLayoutAttributeHeight
                                       multiplier:heightPro
                                       constant:1.0];
    [bgView addConstraint:heightSpace];
    
}
#pragma mark 比例宽度(与父视图比)
/**
 *  比例宽度
 *
 *  @param widthPro <#widthPro description#>
 *  @param bgView   <#bgView description#>
 */
- (void)YFProportionWidthOfView:(CGFloat)widthPro toFatherView:(UIView *)bgView{

    NSLayoutConstraint *widthSpace = [NSLayoutConstraint
                                      constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:bgView
                                      attribute:NSLayoutAttributeWidth
                                      multiplier:widthPro
                                      constant:1.0];
    [bgView addConstraint:widthSpace];
    
}
#pragma mark --与兄弟视图的位置大小对应
#pragma mark 左侧
/**
 *  本视图左侧与兄弟视图左侧的距离(以兄弟视图左侧视图为准点，向右布局)
 *
 *  @param bgView   <#bgView description#>
 *  @param distance <#distance description#>
 */
- (void)YFLeftSpaceToBrotherViewLeft:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView{

    NSLayoutConstraint *leftSpace = [NSLayoutConstraint
                                     constraintWithItem:self
                                     attribute:NSLayoutAttributeLeft
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:brotherView
                                     attribute:NSLayoutAttributeLeft
                                     multiplier:1.0
                                     constant:distance];
    [bgView addConstraint:leftSpace];
}
/**
 *  本视图左侧与兄弟视图右侧的距离(以兄弟视图右侧视图为准点，向右布局)
 *
 *  @param brotherView <#brotherView description#>
 *  @param distance    <#distance description#>
 *  @param bgView      <#bgView description#>
 */
- (void)YFLeftSpaceToBrotherViewRight:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView{

    NSLayoutConstraint *leftSpace = [NSLayoutConstraint
                                     constraintWithItem:self
                                     attribute:NSLayoutAttributeLeft
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:brotherView
                                     attribute:NSLayoutAttributeRight
                                     multiplier:1.0
                                     constant:distance];
    [bgView addConstraint:leftSpace];
}
#pragma mark 右侧
/**
 *  本视图右侧与兄弟视图右侧的距离(以兄弟视图右侧视图为准点，向左布局)
 *
 *  @param brotherView <#brotherView description#>
 *  @param distance    <#distance description#>
 *  @param bgView      <#bgView description#>
 */
- (void)YFRightSpaceToBrotherViewRight:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView{

    NSLayoutConstraint *rightSpace = [NSLayoutConstraint
                                      constraintWithItem:self
                                      attribute:NSLayoutAttributeRight
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:brotherView
                                      attribute:NSLayoutAttributeRight
                                      multiplier:1.0
                                      constant:-distance];
    [bgView addConstraint:rightSpace];
}
/**
 *  本视图右侧与兄弟视图左侧的距离(以兄弟视图左侧视图为准点，向左布局)
 *
 *  @param brotherView <#brotherView description#>
 *  @param distance    <#distance description#>
 *  @param bgView      <#bgView description#>
 */
- (void)YFRightSpaceToBrotherViewLeft:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView{

    NSLayoutConstraint *leftSpace = [NSLayoutConstraint
                                     constraintWithItem:self
                                     attribute:NSLayoutAttributeLeft
                                     relatedBy:NSLayoutRelationEqual
                                     toItem:brotherView
                                     attribute:NSLayoutAttributeRight
                                     multiplier:1.0
                                     constant:-distance];
    [bgView addConstraint:leftSpace];
}

#pragma mark 上侧
/**
 *  //本视图上侧与兄弟视图上侧的距离(以兄弟视图上侧卫准点，向下布局)
 *
 *  @param brotherView <#brotherView description#>
 *  @param distance    <#distance description#>
 *  @param bgView      <#bgView description#>
 */
- (void)YFTopSpaceToBrotherViewTop:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView{

    NSLayoutConstraint *topSpace = [NSLayoutConstraint
                                    constraintWithItem:self
                                    attribute:NSLayoutAttributeTop
                                    relatedBy:NSLayoutRelationEqual
                                    toItem:brotherView
                                    attribute:NSLayoutAttributeTop
                                    multiplier:1.0
                                    constant:distance];
    [bgView addConstraint:topSpace];
}
/**
 *  本视图上侧与兄弟视图上侧的距离(以兄弟视图下侧卫准点，向下布局)
 *
 *  @param brotherView <#brotherView description#>
 *  @param distance    <#distance description#>
 *  @param bgView      <#bgView description#>
 */
- (void)YFTopSpaceToBrotherViewBottom:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView{

    NSLayoutConstraint *topSpace = [NSLayoutConstraint
                                    constraintWithItem:self
                                    attribute:NSLayoutAttributeTop
                                    relatedBy:NSLayoutRelationEqual
                                    toItem:brotherView
                                    attribute:NSLayoutAttributeBottom
                                    multiplier:1.0
                                    constant:distance];
    [bgView addConstraint:topSpace];
}
#pragma mark 下侧
/**
 *  本视图与兄弟视图下侧的距离(以兄弟视图下侧为准点，向上布局)
 *
 *  @param brotherView <#brotherView description#>
 *  @param distance    <#distance description#>
 *  @param bgView      <#bgView description#>
 */
- (void)YFBottomSpaceToBrotherViewBottom:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView{

    NSLayoutConstraint *bottomSpace = [NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:brotherView
                                       attribute:NSLayoutAttributeBottom
                                       multiplier:1.0
                                       constant:-distance];
    [bgView addConstraint:bottomSpace];

}
/**
 *  本视图与兄弟视图下侧的距离(以兄弟视图上侧为准点，向上布局)
 *
 *  @param brotherView <#brotherView description#>
 *  @param distance    <#distance description#>
 *  @param bgView      <#bgView description#>
 */
- (void)YFBottomSpaceToBrotherViewTop:(UIView *)brotherView Distance:(CGFloat)distance inFatherView:(UIView *)bgView{

    NSLayoutConstraint *bottomSpace = [NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeBottom
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:brotherView
                                       attribute:NSLayoutAttributeTop
                                       multiplier:1.0
                                       constant:-distance];
    [bgView addConstraint:bottomSpace];
}
#pragma mark 左侧约束相等
/**
 *  左侧约束一样
 */
- (void)YFEqualLeftSpaceToBrotherView:(UIView *)brotherView inFatherView:(UIView *)bgView{

    NSLayoutConstraint *leftSpace = [NSLayoutConstraint constraintWithItem:self attribute:NSLayoutAttributeLeftMargin relatedBy:NSLayoutRelationEqual toItem:brotherView attribute:NSLayoutAttributeLeftMargin multiplier:1.0 constant:1.0];
    [bgView addConstraint:leftSpace];
}
#pragma mark 比例高度(与兄弟视图比)
/**
 *  比例高度
 *
 *  @param heightPro   <#heightPro description#>
 *  @param brotherView <#brotherView description#>
 */
- (void)YFProportionHeightOfView:(CGFloat)heightPro toBrotherView:(UIView *)brotherView{

    NSLayoutConstraint *heightSpace = [NSLayoutConstraint
                                       constraintWithItem:self
                                       attribute:NSLayoutAttributeHeight
                                       relatedBy:NSLayoutRelationEqual
                                       toItem:brotherView
                                       attribute:NSLayoutAttributeHeight
                                       multiplier:heightPro
                                       constant:1.0];
    [self addConstraint:heightSpace];

}
#pragma mark 比例宽度(与兄弟视图比)
/**
 *  比例宽度
 *
 *  @param heightPro   <#heightPro description#>
 *  @param brotherView <#brotherView description#>
 */
- (void)YFProportionWidthOfView:(CGFloat)widthPro toBrotherView:(UIView *)brotherView{

    NSLayoutConstraint *widthSpace = [NSLayoutConstraint
                                      constraintWithItem:self
                                      attribute:NSLayoutAttributeWidth
                                      relatedBy:NSLayoutRelationEqual
                                      toItem:brotherView
                                      attribute:NSLayoutAttributeWidth
                                      multiplier:widthPro
                                      constant:1.0];
    [self addConstraint:widthSpace];
}

@end
