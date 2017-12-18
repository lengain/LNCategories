//
//  UIImage+LNColor.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LNColor)

/**
 根据UIColor得到一像素点的图片

 @param color 颜色
 @return 一像素点的图片
 */
+ (UIImage *)ln_imageWithColor:(UIColor *)color;

@end
