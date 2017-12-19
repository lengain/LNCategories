//
//  UIColor+LNHexString.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIColor (LNHexString)

+ (UIColor *)ln_colorWithHexString:(NSString *)color;
+ (UIColor *)ln_colorWithHexString:(NSString *)color alpha:(CGFloat)alpha;

@end
