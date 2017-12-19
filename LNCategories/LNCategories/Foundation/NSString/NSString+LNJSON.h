//
//  NSString+LNJSON.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LNJSON)

- (NSArray *)ln_JSONStringToArray;
- (NSDictionary *)ln_JSONStringToDictionary;

+ (NSString *)ln_JSONStringWithObject:(id)object;
+ (NSString *)ln_JSONStringWithDictionary:(NSDictionary *)dic;

@end
