//
//  ViewController.m
//  QuartzHomeWork1、2
//
//  Created by tens04 on 16/8/29.
//  Copyright © 2016年 tens. All rights reserved.
//

#import "ViewController.h"
#import "HomeWork.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    HomeWork *pathView = [[HomeWork alloc] initWithFrame:self.view.bounds];
    pathView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:pathView];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
