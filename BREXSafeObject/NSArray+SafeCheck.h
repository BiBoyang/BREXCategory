//
//  NSArray+SafeCheck.h
//  BREXSafeObject
//
//  Created by Balaeniceps_rex on 2017/12/18.
//  Copyright © 2017年 Balaeniceps_rex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (SafeCheck)

- (id)objectAtSafeIndex:(NSUInteger)index;

/**
 * 将NSDictionary通过json转化为NSString
 */
- (NSString *)jsonString;

@end
