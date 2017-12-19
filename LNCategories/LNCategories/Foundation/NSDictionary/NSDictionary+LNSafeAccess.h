//
//  NSDictionary+LNSafeAccess.h
//  LNCategories
//
//  Created by 橙子 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSDictionary (LNSafeAccess)

- (BOOL)hasKey:(NSString *)key;

- (NSString*)ln_stringForKey:(id)key;

- (NSNumber*)ln_numberForKey:(id)key;

- (NSDecimalNumber *)ln_decimalNumberForKey:(id)key;

- (NSArray*)ln_arrayForKey:(id)key;

- (NSDictionary*)ln_dictionaryForKey:(id)key;

- (NSInteger)ln_integerForKey:(id)key;

- (NSUInteger)ln_unsignedIntegerForKey:(id)key;

- (BOOL)ln_boolForKey:(id)key;

- (int16_t)ln_int16ForKey:(id)key;

- (int32_t)ln_int32ForKey:(id)key;

- (int64_t)ln_int64ForKey:(id)key;

- (char)ln_charForKey:(id)key;

- (short)ln_shortForKey:(id)key;

- (float)ln_floatForKey:(id)key;

- (double)ln_doubleForKey:(id)key;

- (long long)ln_longLongForKey:(id)key;

- (unsigned long long)ln_unsignedLongLongForKey:(id)key;

- (NSDate *)dateForKey:(id)key dateFormat:(NSString *)dateFormat;

//CG
- (CGFloat)CGFloatForKey:(id)key;

- (CGPoint)pointForKey:(id)key;

- (CGSize)sizeForKey:(id)key;

- (CGRect)rectForKey:(id)key;
@end

#pragma --mark NSMutableDictionary setter

@interface NSMutableDictionary(LNSafeAccess)

- (void)ln_setObj:(id)i forKey:(NSString*)key;

- (void)ln_setString:(NSString*)i forKey:(NSString*)key;

- (void)ln_setBool:(BOOL)i forKey:(NSString*)key;

- (void)ln_setInt:(int)i forKey:(NSString*)key;

- (void)ln_setInteger:(NSInteger)i forKey:(NSString*)key;

- (void)ln_setUnsignedInteger:(NSUInteger)i forKey:(NSString*)key;

- (void)ln_setCGFloat:(CGFloat)f forKey:(NSString*)key;

- (void)ln_setChar:(char)c forKey:(NSString*)key;

- (void)ln_setFloat:(float)i forKey:(NSString*)key;

- (void)ln_setDouble:(double)i forKey:(NSString*)key;

- (void)ln_setLongLong:(long long)i forKey:(NSString*)key;

- (void)ln_setPoint:(CGPoint)o forKey:(NSString*)key;

- (void)ln_setSize:(CGSize)o forKey:(NSString*)key;

- (void)ln_setRect:(CGRect)o forKey:(NSString*)key;

@end

