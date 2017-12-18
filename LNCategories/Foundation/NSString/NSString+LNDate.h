//
//  NSString+LNDate.h
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LNDate)


/**
 格式为yyyy-MM-dd HH:mm:ss 的时间字符串,离现在的时间
 @return timeInterval
 */
- (NSTimeInterval)ln_timeIntervalSinceNow;

/**
 根据时间戳得到具体时间
 即字符串格式的时间戳转换为时间字符串
 @return yyyy-MM-dd HH:mm:ss 的时间字符串
 */
- (NSString *)ln_convertToTime;

/**
 快速得到yyyy-MM-dd HH:mm 的字符串时间
 */
+ (NSString *)ln_nowTime;

/**
 得到当前的时间戳

 @return 字符串类型的时间戳
 */
+ (NSString *)ln_timestamp;

@end
