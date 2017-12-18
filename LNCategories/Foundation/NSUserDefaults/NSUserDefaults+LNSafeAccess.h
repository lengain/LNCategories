//
//  NSUserDefaults+LNSafeAccess.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSUserDefaults (LNSafeAccess)

+ (NSString *)ln_stringForKey:(NSString *)defaultName;

+ (NSArray *)ln_arrayForKey:(NSString *)defaultName;

+ (NSDictionary *)ln_dictionaryForKey:(NSString *)defaultName;

+ (NSData *)ln_dataForKey:(NSString *)defaultName;

+ (NSArray *)ln_stringArrayForKey:(NSString *)defaultName;

+ (NSInteger)ln_integerForKey:(NSString *)defaultName;

+ (float)ln_floatForKey:(NSString *)defaultName;

+ (double)ln_doubleForKey:(NSString *)defaultName;

+ (BOOL)ln_boolForKey:(NSString *)defaultName;

+ (NSURL *)ln_URLForKey:(NSString *)defaultName;

#pragma mark - WRITE FOR STANDARD

+ (void)ln_setObject:(id)value forKey:(NSString *)defaultName;

#pragma mark - READ ARCHIVE FOR STANDARD

+ (id)ln_arcObjectForKey:(NSString *)defaultName;

#pragma mark - WRITE ARCHIVE FOR STANDARD

+ (void)ln_setArcObject:(id)value forKey:(NSString *)defaultName;

@end
