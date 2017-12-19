//
//  NSString+LNJSON.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/19.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSString+LNJSON.h"

@implementation NSString (LNJSON)

- (NSArray *)ln_JSONStringToArray {
    NSArray *array = [self ln_JSONStringToObject];
    if (![array isKindOfClass:[NSArray class]]) {
        NSLog(@"NSString (LNJSON)--JSONString is not a NSArray");
        return nil;
    }
    return array;
}

- (NSDictionary *)ln_JSONStringToDictionary {
    NSDictionary *dictionary = [self ln_JSONStringToObject];
    if (![dictionary isKindOfClass:[NSDictionary class]]) {
        NSLog(@"NSString (LNJSON)--JSONString is not a NSDictionary");
        return nil;
    }
    return dictionary;
}

- (id)ln_JSONStringToObject {
    if (self == nil) {
        return nil;
    }
    NSData *jsonData = [self dataUsingEncoding:NSUTF8StringEncoding];
    NSError *err;
    id object = [NSJSONSerialization JSONObjectWithData:jsonData
                                                     options:NSJSONReadingMutableContainers
                                                       error:&err];
    if(err) {
        NSLog(@"NSString (LNJSON)--json解析失败：%@",err);
        return nil;
    }
    return object;
}


+ (NSString *)ln_JSONStringWithObject:(id)object {
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:object options:NSJSONWritingPrettyPrinted error:&parseError];
    if (parseError) {
        NSLog(@"NSString (LNJSON)--%@",parseError);
    }
    return [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
}

+ (NSString *)ln_JSONStringWithDictionary:(NSDictionary *)dic {
    NSError *parseError = nil;
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:dic options:NSJSONWritingPrettyPrinted error:&parseError];
    if (parseError) {
        NSLog(@"NSString (LNJSON)--%@",parseError);
    }
    NSString *jsonString = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    NSMutableString *responseString = [NSMutableString stringWithString:jsonString];
    NSString *character = nil;
    for (int i = 0; i < responseString.length; i ++) {
        character = [responseString substringWithRange:NSMakeRange(i, 1)];
        if ([character isEqualToString:@"\\"]){
            [responseString deleteCharactersInRange:NSMakeRange(i, 1)];
        }
    }
    return responseString;
}

@end
