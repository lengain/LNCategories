//
//  UIButton+LNBackgroundColor.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "UIButton+LNBackgroundColor.h"
#import "UIImage+LNColor.h"
@implementation UIButton (LNBackgroundColor)

- (void)ln_setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    [self setBackgroundImage:[UIImage ln_imageWithColor:backgroundColor] forState:state];
}

@end
