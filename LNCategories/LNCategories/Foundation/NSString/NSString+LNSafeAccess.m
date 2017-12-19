//
//  NSString+LNSafeAccess.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSString+LNSafeAccess.h"

@implementation NSString (LNSafeAccess)

+ (NSString *)ln_safeString:(NSString *)unsafeString {
    if (!unsafeString) {
        return @"";
    }else {
        return unsafeString;
    }
}

@end
