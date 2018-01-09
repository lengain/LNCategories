//
//  UIViewController+LNQuickLook.h
//  LNCategories-master
//
//  Created by 童玉龙 on 2018/1/9.
//  Copyright © 2018年 LN. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIViewController (LNQuickLook)

+ (UIViewController *)visibleViewController;
+ (void)pushViewController:(UIViewController *)viewController;

@end
