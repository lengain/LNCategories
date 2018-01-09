//
//  UIViewController+LNQuickLook.m
//  LNCategories-master
//
//  Created by 童玉龙 on 2018/1/9.
//  Copyright © 2018年 LN. All rights reserved.
//

#import "UIViewController+LNQuickLook.h"

@implementation UIViewController (LNQuickLook)

+ (UIViewController *)visibleViewController {
    UIWindow *keyWindow = [UIApplication sharedApplication].keyWindow;
    UIViewController *rootViewController = keyWindow.rootViewController;
    if ([rootViewController isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabViewController = (UITabBarController *)rootViewController;
        UIViewController *seletedViewController = tabViewController.selectedViewController;
        if ([seletedViewController isKindOfClass:[UINavigationController class]]) {
            return [(UINavigationController *)seletedViewController visibleViewController];
        }else if([seletedViewController isMemberOfClass:[UIViewController class]]) {
            return seletedViewController;
        }else {
            NSLog(@"未知visibleViewController:%@",seletedViewController);
        }
    }else if ([rootViewController isKindOfClass:[UINavigationController class]]) {
        return [(UINavigationController *)rootViewController visibleViewController];
    }else if([rootViewController isMemberOfClass:[UIViewController class]]) {
        return rootViewController;
    }else {
        NSLog(@"未知visibleViewController:%@",rootViewController);
    }
    return nil;
}

+ (void)pushViewController:(UIViewController *)viewController {
    UIViewController *visibleViewController = [UIViewController visibleViewController];
    if (visibleViewController && visibleViewController.navigationController) {
        [visibleViewController.navigationController pushViewController:viewController animated:YES];
    }else {
        NSLog(@"%@ error",NSStringFromSelector(_cmd));
    }
}

@end
