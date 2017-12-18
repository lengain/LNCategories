//
//  NSString+LNAttribute.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSString+LNAttribute.h"

@implementation NSString (LNAttribute)

- (NSAttributedString *)ln_attributedStringWithFont:(UIFont *)font{
    
    return [self ln_attributedStringWithFont:font lineSpacing:0];
}

-(NSAttributedString *)ln_attributedStringWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpace{
    
    UIFont *textFont = font ? font : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    
    NSMutableAttributedString * attributedString = [[NSMutableAttributedString alloc] initWithString:self];
    NSMutableParagraphStyle * paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    [paragraphStyle setLineSpacing:lineSpace];
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:NSMakeRange(0, [self length])];
    [attributedString addAttribute:NSFontAttributeName value:textFont range:NSMakeRange(0, [self length])];
    return attributedString;
}

@end
