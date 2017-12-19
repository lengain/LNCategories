//
//  UILabel+LNQuickInit.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "UILabel+LNQuickInit.h"

@implementation UILabel (LNQuickInit)

+ (UILabel *)ln_labelWithFont:(UIFont *)font textColor:(UIColor *)color {
    UILabel *label = [[UILabel alloc]init];
    label.backgroundColor = [UIColor whiteColor];
    label.font = font;
    label.textColor = color;
    return label;
}

@end
