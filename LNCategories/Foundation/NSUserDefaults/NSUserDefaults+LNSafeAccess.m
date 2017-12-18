//
//  NSUserDefaults+LNSafeAccess.m
//  LNCategories
//
//  Created by 童玉龙 on 2017/7/18.
//  Copyright © 2017年 Lengain. All rights reserved.
//

#import "NSUserDefaults+LNSafeAccess.h"

@implementation NSUserDefaults (LNSafeAccess)

+ (NSString *)ln_stringForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] stringForKey:defaultName];
}

+ (NSArray *)ln_arrayForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] arrayForKey:defaultName];
}

+ (NSDictionary *)ln_dictionaryForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] dictionaryForKey:defaultName];
}

+ (NSData *)ln_dataForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] dataForKey:defaultName];
}

+ (NSArray *)ln_stringArrayForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] stringArrayForKey:defaultName];
}

+ (NSInteger)ln_integerForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] integerForKey:defaultName];
}

+ (float)ln_floatForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] floatForKey:defaultName];
}

+ (double)ln_doubleForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] doubleForKey:defaultName];
}

+ (BOOL)ln_boolForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] boolForKey:defaultName];
}

+ (NSURL *)ln_URLForKey:(NSString *)defaultName {
    return [[NSUserDefaults standardUserDefaults] URLForKey:defaultName];
}

#pragma mark - WRITE FOR STANDARD

+ (void)ln_setObject:(id)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setObject:value forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}

#pragma mark - READ ARCHIVE FOR STANDARD

+ (id)ln_arcObjectForKey:(NSString *)defaultName {
    
    if ([[[NSUserDefaults standardUserDefaults] objectForKey:defaultName] isKindOfClass:[NSData class]]) {
        return [NSKeyedUnarchiver unarchiveObjectWithData:[[NSUserDefaults standardUserDefaults] objectForKey:defaultName]];
    }else{
        [[NSUserDefaults standardUserDefaults] removeObjectForKey:defaultName];
        [[NSUserDefaults standardUserDefaults] synchronize];
        return nil;
    }
}

#pragma mark - WRITE ARCHIVE FOR STANDARD

+ (void)ln_setArcObject:(id)value forKey:(NSString *)defaultName {
    [[NSUserDefaults standardUserDefaults] setObject:[NSKeyedArchiver archivedDataWithRootObject:value] forKey:defaultName];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


@end
