//
//  TwoTimesArray.m
//  KVC-Collection
//
//  Created by 章前 on 15/9/3.
//  Copyright (c) 2015年 MarkZhang. All rights reserved.
//

#import "TwoTimesArray.h"
@interface TwoTimesArray()
@property (nonatomic,assign) NSUInteger count;
@end
@implementation TwoTimesArray
- (void)incrementCount
{
    self.count++;
}
- (NSUInteger)countOfNumbers
{
    return self.count;
}
- (id)objectInNumbersAtIndex:(NSUInteger)index
{
    return @(index*2);
}

@end
