//
//  NSMutableDictionary+SafeCheck.h
//  BREXSafeObject
//
//  Created by Balaeniceps_rex on 2017/12/18.
//  Copyright © 2017年 Balaeniceps_rex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableDictionary (SafeCheck)

- (void)setSafeObject:(id)anObject forKey:(id<NSCopying>)aKey;

@end
