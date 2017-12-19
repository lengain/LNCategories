//
//  NSString+LNMD5.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSString+LNMD5.h"
#import <CommonCrypto/CommonDigest.h>
@implementation NSString (LNMD5)

- (NSString *)ln_MD5 {
    const char *cStr = [self UTF8String];
    if (cStr == NULL) {
        return nil;
    }
    unsigned char result[16];
    CC_MD5(cStr, (CC_LONG)strlen(cStr), result); // This is the md5 call
    return [NSString stringWithFormat:
            @"%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x",
            result[0], result[1], result[2], result[3],
            result[4], result[5], result[6], result[7],
            result[8], result[9], result[10], result[11],
            result[12], result[13], result[14], result[15]
            ];
}

@end
