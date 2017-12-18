//
//  NSString+LNCode.m
//  LNCategories-master
//
//  Created by 童玉龙 on 2017/12/18.
//  Copyright © 2017年 LN. All rights reserved.
//

#import "NSString+LNCode.h"

@implementation NSString (LNCode)

//URLEncode
- (NSString*)ln_encodeString{
    NSCharacterSet *characterSet = [[NSCharacterSet characterSetWithCharactersInString:@"!*'();:@&=+$,/?%#[]"] invertedSet];
    NSString *encodedString = [self stringByAddingPercentEncodingWithAllowedCharacters:characterSet];
    return encodedString;
}

//URLDecode
- (NSString *)ln_decodeString{
    return self.stringByRemovingPercentEncoding;
}

@end
