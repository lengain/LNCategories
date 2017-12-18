//
//  NSURL+LNParameter.m
//  LNCategories-master
//
//  Created by 童玉龙 on 2017/12/18.
//  Copyright © 2017年 LN. All rights reserved.
//

#import "NSURL+LNParameter.h"

@implementation NSURL (LNParameter)

- (NSDictionary *)ln_parameters {
    NSMutableDictionary * parametersDictionary = [NSMutableDictionary dictionary];
    NSArray * queryComponents = [self.query componentsSeparatedByString:@"&"];
    for (NSString * queryComponent in queryComponents) {
        NSString * key = [queryComponent componentsSeparatedByString:@"="].firstObject;
        NSString * value = [queryComponent substringFromIndex:(key.length + 1)];
        [parametersDictionary setObject:value forKey:key];
    }
    return parametersDictionary;
}

- (NSString *)ln_valueForParameterKey:(NSString *)parameterKey {
    return [[self ln_parameters] objectForKey:parameterKey];
}

@end
