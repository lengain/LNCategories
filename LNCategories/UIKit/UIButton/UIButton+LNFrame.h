//
//  UIButton+LNFrame.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (LNFrame)

//设置图片离左边的距离
- (float)ln_imageLeft;
- (void)ln_setImageLeft:(float)imageLeft;

//设置文字离左边的距离
- (float)ln_titleLeft;
- (void)ln_setTitleLeft:(float)titleLeft;

//设置文字居中
- (float)ln_titleCenter;
- (void)ln_setTitleCenter;

//设置图片在文字右边
- (void)ln_setImageToTitleRight;
- (void)ln_setImageToTitleRightWithPadding:(CGFloat)padding;
- (void)ln_setImageToTitleRightWithPadding:(CGFloat)padding isDelay:(BOOL)isDelay;

//图片在文字的左边
- (void)ln_setImageAndTitleWithPadding:(CGFloat)padding;
- (void)ln_setImageAndTitleWithPadding:(CGFloat)padding isDelay:(BOOL)isDelay;


//设置图片和文字都居中，图片在上,padding为图片跟文字的间距
- (void)ln_setImageAndTitleCenterImageTopWithpadding:(float)padding;

//设置图片和文字都居中，文字在上,padding为图片跟文字的间距 //TODO: 待测试，好像有问题
- (void)ln_setImageAndTitleCenterTitleTopWithpadding:(float)padding;



@end
