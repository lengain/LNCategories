//
//  NSURL+LNParameter.h
//  LNCategories-master
//
//  Created by 童玉龙 on 2017/12/18.
//  Copyright © 2017年 LN. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSURL (LNParameter)

- (NSDictionary *)ln_parameters;
- (NSString *)ln_valueForParameterKey:(NSString *)parameterKey;

@end
