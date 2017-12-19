//
//  NSArray+LNSafeAccess.h
//  LNCategories
//
//  Created by 橙子 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSArray (LNSafeAccess)

- (id)ln_objectWithIndex:(NSUInteger)index;

- (NSString*)ln_stringWithIndex:(NSUInteger)index;

- (NSNumber*)ln_numberWithIndex:(NSUInteger)index;

- (NSDecimalNumber *)ln_decimalNumberWithIndex:(NSUInteger)index;

- (NSArray*)ln_arrayWithIndex:(NSUInteger)index;

- (NSDictionary*)ln_dictionaryWithIndex:(NSUInteger)index;

- (NSInteger)ln_integerWithIndex:(NSUInteger)index;

- (NSUInteger)ln_unsignedIntegerWithIndex:(NSUInteger)index;

- (BOOL)ln_boolWithIndex:(NSUInteger)index;

- (int16_t)ln_int16WithIndex:(NSUInteger)index;

- (int32_t)ln_int32WithIndex:(NSUInteger)index;

- (int64_t)ln_int64WithIndex:(NSUInteger)index;

- (char)ln_charWithIndex:(NSUInteger)index;

- (short)ln_shortWithIndex:(NSUInteger)index;

- (float)ln_floatWithIndex:(NSUInteger)index;

- (double)ln_doubleWithIndex:(NSUInteger)index;

- (NSDate *)ln_dateWithIndex:(NSUInteger)index dateFormat:(NSString *)dateFormat;
//CG
- (CGFloat)ln_CGFloatWithIndex:(NSUInteger)index;

- (CGPoint)ln_pointWithIndex:(NSUInteger)index;

- (CGSize)ln_sizeWithIndex:(NSUInteger)index;

- (CGRect)ln_rectWithIndex:(NSUInteger)index;
@end


#pragma --mark NSMutableArray setter

@interface NSMutableArray(SafeAccess)

- (void)ln_addObj:(id)i;

- (void)ln_addString:(NSString*)i;

- (void)ln_addBool:(BOOL)i;

- (void)ln_addInt:(int)i;

- (void)ln_addInteger:(NSInteger)i;

- (void)ln_addUnsignedInteger:(NSUInteger)i;

- (void)ln_addCGFloat:(CGFloat)f;

- (void)ln_addChar:(char)c;

- (void)ln_addFloat:(float)i;

- (void)ln_addPoint:(CGPoint)o;

- (void)ln_addSize:(CGSize)o;

- (void)ln_addRect:(CGRect)o;

@end
