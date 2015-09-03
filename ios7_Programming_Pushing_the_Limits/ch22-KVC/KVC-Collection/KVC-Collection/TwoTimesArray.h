//
//  TwoTimesArray.h
//  KVC-Collection
//
//  Created by 章前 on 15/9/3.
//  Copyright (c) 2015年 MarkZhang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TwoTimesArray : NSObject
- (void)incrementCount;
- (NSUInteger)countOfNumbers;
- (id)objectInNumbersAtIndex:(NSUInteger)index;
@end
