//
//  NSArray+SafeCheck.m
//  BREXSafeObject
//
//  Created by Balaeniceps_rex on 2017/12/18.
//  Copyright © 2017年 Balaeniceps_rex. All rights reserved.
//

#import "NSArray+SafeCheck.h"

@implementation NSArray (SafeCheck)
//防止数组越界
- (id)objectAtSafeIndex:(NSUInteger)index {
    if (index >= self.count)
    {
        return nil;
    }
    return [self objectAtIndex:index];
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

@end
