//
//  SecondViewController.m
//  HPDemo
//
//  Created by Bernd Rabe on 19.04.13.
//  Copyright (c) 2013 RABE_IT Services. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()
@property (strong, nonatomic) NSArray *dataSource;
@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [HPickerView class];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark -  HPickerViewDataSource

- (NSInteger)numberOfRowsInPickerView:(HPickerView *)pickerView
{
    return self.dataSource.count;
}

#pragma mark -  HPickerViewDelegate

- (NSString *)pickerView:(HPickerView *)pickerView titleForRow:(NSInteger)row
{
    return self.dataSource[row];
}

- (void)pickerView:(HPickerView *)pickerView didSelectRow:(NSInteger)row
{
    NSLog(@"Row %d", row);
}


#pragma mark - DataSourec

- (NSArray *)dataSource
{
    if (nil == _dataSource) {
        _dataSource = @[@"Zero", @"One", @"Two", @"Three", @"Four", @"Five", @"Six", @"Seven", @"Eight", @"Nine", @"Ten"];
    }
    return _dataSource;
}

@end