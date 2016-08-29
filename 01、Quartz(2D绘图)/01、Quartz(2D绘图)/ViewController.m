//
//  ViewController.m
//  01、Quartz(2D绘图)
//
//  Created by tens04 on 16/8/29.
//  Copyright © 2016年 tens. All rights reserved.
//

#import "ViewController.h"
#import "BezierPathView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建绘图模板（画板）,用于接收BezierPathView中的绘图数据
    BezierPathView *pathView = [[BezierPathView alloc] initWithFrame:self.view.bounds];
    pathView.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:pathView];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
