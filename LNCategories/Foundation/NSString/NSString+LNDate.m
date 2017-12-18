//
//  NSString+LNDate.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSString+LNDate.h"

@implementation NSString (LNDate)

- (NSTimeInterval)ln_timeIntervalSinceNow {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat: @"yyyy-MM-dd HH:mm:ss"];
    NSDate *date = [dateFormatter dateFromString:self];
    return [date timeIntervalSinceNow];
}

- (NSString *)ln_convertToTime {
    NSDateFormatter* formatter = [[NSDateFormatter alloc] init];
    [formatter setDateStyle:NSDateFormatterMediumStyle];
    [formatter setTimeStyle:NSDateFormatterShortStyle];
    [formatter setDateFormat:@"yyyy-MM-dd HH:MM:ss"];
    NSDate *confromTimesp = [NSDate dateWithTimeIntervalSince1970:[self doubleValue]];
    NSString *timeString = [formatter stringFromDate:confromTimesp];
    return timeString;
}

+ (NSString *)ln_nowTime {
    NSDate *now = [NSDate date];
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSUInteger unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond;
    NSDateComponents *dateComponent = [calendar components:unitFlags fromDate:now];
    NSString  *datetime=[NSString stringWithFormat:@"%ld-%ld-%ld %ld:%ld",(long)[dateComponent year],(long)[dateComponent month],(long)[dateComponent day],(long)[dateComponent hour],(long)[dateComponent minute]];
    return datetime;
}

+ (NSString *)ln_timestamp {
    NSDate* dat = [NSDate dateWithTimeIntervalSinceNow:0];
    NSTimeInterval a=[dat timeIntervalSince1970];
    return [NSString stringWithFormat:@"%.0f", a];
}

@end
