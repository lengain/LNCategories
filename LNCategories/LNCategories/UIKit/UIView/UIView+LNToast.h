//
//  UIView+LNToast.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LNToast)

// each makeToast method creates a view and displays it as toast
- (void)makeToast:(NSString *)message;
- (void)makeToast:(NSString *)message duration:(NSTimeInterval)interval position:(id)position;
- (void)makeToast:(NSString *)message duration:(NSTimeInterval)interval position:(id)position image:(UIImage *)image;
- (void)makeToast:(NSString *)message duration:(NSTimeInterval)interval position:(id)position title:(NSString *)title;
- (void)makeToast:(NSString *)message duration:(NSTimeInterval)interval position:(id)position title:(NSString *)title image:(UIImage *)image;
- (void)hideToast:(UIView *)toast;


// displays toast with an activity spinner
- (void)makeToastActivity;
- (void)makeToastActivity:(id)position;
- (void)hideToastActivity;

/**
 *  显示自定义动画的加载
 */
- (void)makeToastAnimationImage;
- (void)hideToastAnimationImage;

/**
 *  显示自定义动画的加载
 *
 *  @param size      动画图片大小
 *  @param isdismiss 如果不调用隐藏，时间到后是否自动消失
 */
- (void)makeToastAnimationImageWithSize:(CGSize)size isdismiss:(BOOL)isdismiss;

/**
 *  显示自定义动画的加载
 *
 *  @param size       动画图片大小
 *  @param imageArray 自定义动画的图片数组,可以是图片名数组，也可以UIImage数组
 *  @param isdismiss  如果不调用隐藏，时间到后是否自动消失
 */
- (void)makeToastAnimationImageWithSize:(CGSize)size withImageArray:(NSArray *)imageArray isdismiss:(BOOL)isdismiss;


// the showToast methods display any view as toast
- (void)showToast:(UIView *)toast;
- (void)showToast:(UIView *)toast duration:(NSTimeInterval)interval position:(id)point;

@end
