//
//  NSString+LNSize.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (LNSize)

/**
 *  @brief 计算文字的高度
 *
 *  @param font  字体(默认为系统字体)
 *  @param width 约束宽度
 */
- (CGFloat)ln_heightWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width;

/**
 *  @brief 计算文字的高度
 *
 *  @param font  字体(默认为系统字体)
 *  @param lineSpace  行间距
 *  @param width 约束宽度
 */
- (CGFloat)ln_heightWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpace constrainedToWidth:(CGFloat)width;


/**
 *  @brief 计算文字的宽度（只能计算一行的宽度）
 *
 *  @param font   字体(默认为系统字体)
 */
- (CGFloat)ln_widthWithFont:(UIFont *)font;

@end
