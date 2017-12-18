//
//  NSString+LNSize.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSString+LNSize.h"

@implementation NSString (LNSize)

- (CGFloat)ln_heightWithFont:(UIFont *)font constrainedToWidth:(CGFloat)width{
    return [self ln_heightWithFont:font lineSpacing:0 constrainedToWidth:width];
}

- (CGFloat)ln_heightWithFont:(UIFont *)font lineSpacing:(CGFloat)lineSpace constrainedToWidth:(CGFloat)width {
    UIFont *textFont = font ? font : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    [paragraph setLineSpacing:lineSpace];
    
    NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                 NSParagraphStyleAttributeName: paragraph};
    CGSize textSize = [self boundingRectWithSize:CGSizeMake(width, CGFLOAT_MAX)
                                  options:(NSStringDrawingUsesLineFragmentOrigin |
                                           NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading)
                               attributes:attributes
                                  context:nil].size;
    return ceil(textSize.height);
}

- (CGFloat)ln_widthWithFont:(UIFont *)font{
    UIFont *textFont = font ? font : [UIFont systemFontOfSize:[UIFont systemFontSize]];
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.lineBreakMode = NSLineBreakByWordWrapping;
    
    NSDictionary *attributes = @{NSFontAttributeName: textFont,
                                 NSParagraphStyleAttributeName: paragraph};
    CGSize textSize = [self boundingRectWithSize:CGSizeMake(CGFLOAT_MAX, 100)
                                  options:(NSStringDrawingUsesLineFragmentOrigin |
                                           NSStringDrawingTruncatesLastVisibleLine | NSStringDrawingUsesFontLeading)
                               attributes:attributes
                                  context:nil].size;
    return ceil(textSize.width);
}

@end
