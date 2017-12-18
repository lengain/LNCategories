//
//  NSDictionary+LNSafeAccess.m
//  LNCategories
//
//  Created by 橙子 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSDictionary+LNSafeAccess.h"

@implementation NSDictionary (LNSafeAccess)

- (BOOL)hasKey:(NSString *)key {
    return [self objectForKey:key] != nil;
}

- (NSString*)ln_stringForKey:(id)key {
    id value = [self objectForKey:key];
    if (value == nil || value == [NSNull null])
    {
        return @"";
    }
    if ([value isKindOfClass:[NSString class]]) {
        return (NSString*)value;
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value stringValue];
    }
    
    return @"";
}

- (NSNumber*)ln_numberForKey:(id)key {
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSNumber class]]) {
        return (NSNumber*)value;
    }
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter * f = [[NSNumberFormatter alloc] init];
        [f setNumberStyle:NSNumberFormatterDecimalStyle];
        return [f numberFromString:(NSString*)value];
    }
    return nil;
}

- (NSDecimalNumber *)ln_decimalNumberForKey:(id)key {
    id value = [self objectForKey:key];
    
    if ([value isKindOfClass:[NSDecimalNumber class]]) {
        return value;
    } else if ([value isKindOfClass:[NSNumber class]]) {
        NSNumber * number = (NSNumber*)value;
        return [NSDecimalNumber decimalNumberWithDecimal:[number decimalValue]];
    } else if ([value isKindOfClass:[NSString class]]) {
        NSString * str = (NSString*)value;
        return [str isEqualToString:@""] ? nil : [NSDecimalNumber decimalNumberWithString:str];
    }
    return nil;
}


- (NSArray*)ln_arrayForKey:(id)key {
    id value = [self objectForKey:key];
    if (value == nil || value == [NSNull null])
    {
        return @[];
    }
    if ([value isKindOfClass:[NSArray class]])
    {
        return value;
    }
    return @[];
}


- (NSDictionary*)ln_dictionaryForKey:(id)key {
    id value = [self objectForKey:key];
    if (value == nil || value == [NSNull null])
    {
        return @{};
    }
    if ([value isKindOfClass:[NSDictionary class]])
    {
        return value;
    }
    return @{};
}

- (NSInteger)ln_integerForKey:(id)key {
    id value = [self objectForKey:key];
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]])
    {
        return [value integerValue];
    }
    return 0;
}

- (NSUInteger)ln_unsignedIntegerForKey:(id)key{
    id value = [self objectForKey:key];
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]])
    {
        return [value unsignedIntegerValue];
    }
    return 0;
}

- (BOOL)ln_boolForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return NO;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value boolValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value boolValue];
    }
    return NO;
}

-  (int16_t)ln_int16ForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value shortValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}

- (int32_t)ln_int32ForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}

- (int64_t)ln_int64ForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value longLongValue];
    }
    return 0;
}

- (char)ln_charForKey:(id)key{
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value charValue];
    }
    return 0;
}

- (short)ln_shortForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]])
    {
        return [value shortValue];
    }
    if ([value isKindOfClass:[NSString class]])
    {
        return [value intValue];
    }
    return 0;
}

- (float)ln_floatForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value floatValue];
    }
    return 0;
}

- (double)ln_doubleForKey:(id)key {
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return 0;
    }
    if ([value isKindOfClass:[NSNumber class]] || [value isKindOfClass:[NSString class]])
    {
        return [value doubleValue];
    }
    return 0;
}

- (long long)ln_longLongForKey:(id)key {
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSString class]] || [value isKindOfClass:[NSNumber class]]) {
        return [value longLongValue];
    }
    return 0;
}

- (unsigned long long)ln_unsignedLongLongForKey:(id)key {
    id value = [self objectForKey:key];
    if ([value isKindOfClass:[NSString class]]) {
        NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
        value = [nf numberFromString:value];
    }
    if ([value isKindOfClass:[NSNumber class]]) {
        return [value unsignedLongLongValue];
    }
    return 0;
}

- (NSDate *)dateForKey:(id)key dateFormat:(NSString *)dateFormat{
    NSDateFormatter *formater = [[NSDateFormatter alloc]init];
    formater.dateFormat = dateFormat;
    id value = [self objectForKey:key];
    
    if (value == nil || value == [NSNull null])
    {
        return nil;
    }
    
    if ([value isKindOfClass:[NSString class]] && ![value isEqualToString:@""] && !dateFormat) {
        return [formater dateFromString:value];
    }
    return nil;
}


//CG
- (CGFloat)CGFloatForKey:(id)key {
    CGFloat f = [self[key] doubleValue];
    return f;
}

- (CGPoint)pointForKey:(id)key {
    CGPoint point = CGPointFromString(self[key]);
    return point;
}

- (CGSize)sizeForKey:(id)key {
    CGSize size = CGSizeFromString(self[key]);
    return size;
}

- (CGRect)rectForKey:(id)key {
    CGRect rect = CGRectFromString(self[key]);
    return rect;
}
@end

#pragma --mark NSMutableDictionary setter
@implementation NSMutableDictionary (LNSafeAccess)

- (void)ln_setObj:(id)i forKey:(NSString*)key{
    if (i!=nil) {
        self[key] = i;
    }
}

- (void)ln_setString:(NSString*)i forKey:(NSString*)key; {
    [self setValue:i forKey:key];
}

- (void)ln_setBool:(BOOL)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)ln_setInt:(int)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)ln_setInteger:(NSInteger)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)ln_setUnsignedInteger:(NSUInteger)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)ln_setCGFloat:(CGFloat)f forKey:(NSString *)key {
    self[key] = @(f);
}

- (void)ln_setChar:(char)c forKey:(NSString *)key {
    self[key] = @(c);
}

- (void)ln_setFloat:(float)i forKey:(NSString *)key {
    self[key] = @(i);
}

- (void)ln_setDouble:(double)i forKey:(NSString*)key{
    self[key] = @(i);
}

- (void)ln_setLongLong:(long long)i forKey:(NSString*)key{
    self[key] = @(i);
}

- (void)ln_setPoint:(CGPoint)o forKey:(NSString *)key {
    self[key] = NSStringFromCGPoint(o);
}

- (void)ln_setSize:(CGSize)o forKey:(NSString *)key {
    self[key] = NSStringFromCGSize(o);
}

- (void)ln_setRect:(CGRect)o forKey:(NSString *)key {
    self[key] = NSStringFromCGRect(o);
}


@end

