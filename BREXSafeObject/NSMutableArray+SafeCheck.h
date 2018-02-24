//
//  NSMutableArray+SafeCheck.h
//  BREXSafeObject
//
//  Created by Balaeniceps_rex on 2017/12/18.
//  Copyright © 2017年 Balaeniceps_rex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableArray (SafeCheck)

- (void)addSafeObject:(id)object;

- (void)insertSafeObject:(id)anObject atIndex:(NSUInteger)index;

- (void)addObjectsFromSafeArray:(NSArray *)otherArray;

@end
