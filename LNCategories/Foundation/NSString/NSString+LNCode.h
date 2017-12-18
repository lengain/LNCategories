//
//  NSString+LNCode.h
//  LNCategories-master
//
//  Created by 童玉龙 on 2017/12/18.
//  Copyright © 2017年 LN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (LNCode)

- (NSString *)ln_encodeString; //URLEncode

- (NSString *)ln_decodeString; //URLDecode

@end
