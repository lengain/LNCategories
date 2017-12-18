//
//  NSArray+LNSafeAccess.m
//  LNCategories
//
//  Created by 橙子 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSArray+LNSafeAccess.h"

@implementation NSArray (LNSafeAccess)

- (id)ln_objectWithIndex:(NSUInteger)index{
    if (index <self.count) {
        return self[index];
    }else{
        return nil;
    }
}

- (NSString*)ln_stringWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
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
    
    return nil;
}


- (NSNumber*)ln_numberWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
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

- (NSDecimalNumber *)ln_decimalNumberWithIndex:(NSUInteger)index{
    id value = [self ln_objectWithIndex:index];
    
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

- (NSArray*)ln_arrayWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return nil;
    }
    if ([value isKindOfClass:[NSArray class]])
    {
        return value;
    }
    return nil;
}


- (NSDictionary*)ln_dictionaryWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    if (value == nil || value == [NSNull null])
    {
        return nil;
    }
    if ([value isKindOfClass:[NSDictionary class]])
    {
        return value;
    }
    return nil;
}

- (NSInteger)ln_integerWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
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

- (NSUInteger)ln_unsignedIntegerWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
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

- (BOOL)ln_boolWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
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

- (int16_t)ln_int16WithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
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

- (int32_t)ln_int32WithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
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

- (int64_t)ln_int64WithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
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

- (char)ln_charWithIndex:(NSUInteger)index{
    
    id value = [self ln_objectWithIndex:index];
    
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

- (short)ln_shortWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
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
- (float)ln_floatWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
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
- (double)ln_doubleWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
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

- (NSDate *)ln_dateWithIndex:(NSUInteger)index dateFormat:(NSString *)dateFormat {
    NSDateFormatter *formater = [[NSDateFormatter alloc]init];
    formater.dateFormat = dateFormat;
    id value = [self ln_objectWithIndex:index];
    
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
- (CGFloat)ln_CGFloatWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
    CGFloat f = [value doubleValue];
    
    return f;
}

- (CGPoint)ln_pointWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
    CGPoint point = CGPointFromString(value);
    
    return point;
}

- (CGSize)ln_sizeWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
    CGSize size = CGSizeFromString(value);
    
    return size;
}

- (CGRect)ln_rectWithIndex:(NSUInteger)index {
    id value = [self ln_objectWithIndex:index];
    
    CGRect rect = CGRectFromString(value);
    
    return rect;
}
@end


#pragma --mark NSMutableArray setter
@implementation NSMutableArray (SafeAccess)

- (void)ln_addObj:(id)i{
    if (i!=nil) {
        [self addObject:i];
    }
}
- (void)ln_addString:(NSString*)i {
    if (i!=nil) {
        [self addObject:i];
    }
}

- (void)ln_addBool:(BOOL)i {
    [self addObject:@(i)];
}

- (void)ln_addInt:(int)i {
    [self addObject:@(i)];
}

- (void)ln_addInteger:(NSInteger)i {
    [self addObject:@(i)];
}

- (void)ln_addUnsignedInteger:(NSUInteger)i {
    [self addObject:@(i)];
}

- (void)ln_addCGFloat:(CGFloat)f {
    [self addObject:@(f)];
}

- (void)ln_addChar:(char)c {
    [self addObject:@(c)];
}

- (void)ln_addFloat:(float)i {
    [self addObject:@(i)];
}

- (void)ln_addPoint:(CGPoint)o {
    [self addObject:NSStringFromCGPoint(o)];
}

- (void)ln_addSize:(CGSize)o {
    [self addObject:NSStringFromCGSize(o)];
}

- (void)ln_addRect:(CGRect)o {
    [self addObject:NSStringFromCGRect(o)];
}


@end
