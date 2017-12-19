//
//  NSString+LNSafeAccess.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LNSafeAccess)

+ (NSString *)ln_safeString:(NSString *)unsafeString;

@end
