//
//  NSMutableArray+SafeCheck.m
//  BREXSafeObject
//
//  Created by Balaeniceps_rex on 2017/12/18.
//  Copyright © 2017年 Balaeniceps_rex. All rights reserved.
//

#import "NSMutableArray+SafeCheck.h"

@implementation NSMutableArray (SafeCheck)

- (void)addSafeObject:(id)anObject
{
    if (anObject) {
        [self addObject:anObject];
    }
}

- (void)insertSafeObject:(id)anObject atIndex:(NSUInteger)index
{
    if (anObject) {
        [self insertObject:anObject atIndex:index];
    }
}

- (void)addObjectsFromSafeArray:(NSArray *)otherArray
{
    if (otherArray && otherArray.count > 0) {
        [self addObjectsFromArray:otherArray];
    }
}


@end
