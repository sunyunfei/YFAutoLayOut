//
//  YFAutoLayOut.h
//  YFAutoLayOut
//
//  Created by 孙云 on 16/3/16.
//  Copyright © 2016年 haidai. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface YFAutoLayOut : NSObject
/**
 *  左侧的距离
 */
- (void)YFLeftSpaceToFatherView:(UIView *)bgView;
/**
 *  右侧的距离
 *
 *  @param bgView <#bgView description#>
 */
- (void)YFRightSpaceToFatherView:(UIView *)bgView;
/**
 *  上侧的距离
 *
 *  @param bgView <#bgView description#>
 */
- (void)YFTopSpaceToFatherView:(UIView *)bgView;
@end
