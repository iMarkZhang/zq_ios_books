//
//  KVCTableViewCell.m
//  KVC
//
//  Created by 章前 on 15/9/3.
//  Copyright (c) 2015年 MarkZhang. All rights reserved.
//

#import "KVCTableViewCell.h"

@implementation KVCTableViewCell

- (BOOL)isReady
{
    return self.object && self.property.length>0;
}
- (void)update
{
    NSString *text;
    if ([self isReady]) {
        id value = [self.object valueForKeyPath:self.property];
        text = [value description];
    }else
    {
        text = @"";
    }
    self.textLabel.text = text;
}

- (id)initWithReuseIdentifier:(NSString*)identifier
{
   return  [self initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
}
- (void)setObject:(id)object
{
    _object = object;
    [self update];
}

- (void)setProperty:(NSString *)property
{
    _property = property;
    [self update];
}

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
