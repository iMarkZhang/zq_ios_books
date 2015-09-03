//
//  ViewController.m
//  KVC-Collection
//
//  Created by 章前 on 15/9/3.
//  Copyright (c) 2015年 MarkZhang. All rights reserved.
//

#import "ViewController.h"
#import "TwoTimesArray.h"
#import "KVCTableViewController.h"
@interface ViewController ()
@property (nonatomic,strong) TwoTimesArray *array;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)viewWillAppear:(BOOL)animated {
    [self refresh];
    [super viewWillAppear:animated];
}
-(void)awakeFromNib
{
    self.array = [[TwoTimesArray alloc] init];
}
- (void)refresh
{
    NSArray *items = [self.array valueForKey:@"numbers"];
    NSUInteger count = [items count];
    self.curentLable.text = [NSString stringWithFormat:@"%lu", (unsigned long)count];
    self.entryLable.text = [[items lastObject] description];
}

- (IBAction)performAdd {
    [self.array incrementCount];
    [self refresh];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    [(KVCTableViewController*)segue.destinationViewController setArray:self.array];
}
@end
