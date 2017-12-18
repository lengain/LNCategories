//
//  NSString+LNAttribute.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (LNAttribute)

/**
 *  得到AttributedString
 *
 *  @param font      字体(默认为系统字体)
 *
 *  @return AttributedString
 */
- (NSAttributedString *)ln_attributedStringWithFont:(UIFont *)font;

/**
 *  得到AttributedString
 *
 *  @param font      字体(默认为系统字体)
 *  @param lineSpace 行间距
 *
 *  @return AttributedString
 */
- (NSAttributedString *)ln_attributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpace;

@end
