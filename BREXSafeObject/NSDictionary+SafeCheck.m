//
//  NSDictionary+SafeCheck.m
//  BREXSafeObject
//
//  Created by Balaeniceps_rex on 2017/12/18.
//  Copyright © 2017年 Balaeniceps_rex. All rights reserved.
//

#import "NSDictionary+SafeCheck.h"

@implementation NSDictionary (SafeCheck)

- (id)safeObjectForKey:(NSString *)aKey
{
    if (![self containKey:aKey]) {
        return nil;
    }
    return [self objectForKey:aKey];
}

- (NSString *)jsonString
{
    if ([NSJSONSerialization isValidJSONObject:self]) {
        NSError *error;
        NSData *jsonData = [NSJSONSerialization dataWithJSONObject:self options:0 error:&error];
        NSString *json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
        return json;
    }
    return nil;
}

- (BOOL)containKey:(NSString *)key
{
    return [[self allKeys] containsObject:key];
}

@end
