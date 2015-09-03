//
//  KVCTableViewCell.h
//  KVC
//
//  Created by 章前 on 15/9/3.
//  Copyright (c) 2015年 MarkZhang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface KVCTableViewCell : UITableViewCell
- (id)initWithReuseIdentifier:(NSString*)identifier;
//要显示的对象
@property (nonatomic,readwrite,strong) id object;
//要显示的对象的属性名
@property (nonatomic,readwrite,copy) NSString *property;
@end
