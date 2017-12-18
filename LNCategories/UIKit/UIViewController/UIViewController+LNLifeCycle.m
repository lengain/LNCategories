//
//  UIViewController+LNLifeCycle.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "UIViewController+LNLifeCycle.h"
#import <objc/runtime.h>
@implementation UIViewController (LNLifeCycle)

#pragma mark - swizzle
+ (void)load {
    Method method1 = class_getInstanceMethod([self class], NSSelectorFromString(@"dealloc"));
    Method method2 = class_getInstanceMethod([self class], @selector(deallocSwizzle));
    method_exchangeImplementations(method1, method2);
}

- (void)deallocSwizzle {
#if DEBUG
    if ([[UIDevice currentDevice] systemVersion].floatValue >= 9.0) {//iOS8 使用UIImagePickerController  allowsEditing= YES时,编辑图片后会崩溃在这里
        NSLog(@"%@被销毁了", self);
    }
#endif
    [self deallocSwizzle];
}

static char MethodKey;
- (void)setMethod:(NSString *)method {
    objc_setAssociatedObject(self, &MethodKey, method, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)method {
    return objc_getAssociatedObject(self, &MethodKey);
}

@end
