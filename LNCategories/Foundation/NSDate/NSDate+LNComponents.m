//
//  NSDate+LNComponents.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSDate+LNComponents.h"

@implementation NSDate (LNComponents)

+ (NSArray *)ln_yearArray{
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *dateComponent = [calendar components:unitFlags fromDate:[NSDate date]];
    
    int year = (int)[dateComponent year];
    
    NSMutableArray *_mutableArray = [[NSMutableArray alloc] init];
    for (int i=1915; i <= year; i++) {
        [_mutableArray addObject:[NSString stringWithFormat:@"%d年",i]];
    }
    
    return _mutableArray;
}

+ (NSArray *)ln_monthArray{
    
    
    NSMutableArray *_mutableArray = [[NSMutableArray alloc] init];
    for (int i=1; i <= 12; i++) {
        [_mutableArray addObject:[NSString stringWithFormat:@"%d月",i]];
    }
    
    return _mutableArray;
}

+ (NSArray *)ln_dayArray{
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSRange range = [calendar rangeOfUnit:NSCalendarUnitDay inUnit:NSCalendarUnitMonth forDate:[NSDate date]];
    
    NSUInteger numberOfDaysInMonth = range.length;
    
    NSMutableArray *_mutableArray = [[NSMutableArray alloc] init];
    
    for (int i=1; i<= numberOfDaysInMonth; i++) {
        [_mutableArray addObject:[NSString stringWithFormat:@"%d日",i]];
    }
    
    return _mutableArray;
}


@end
