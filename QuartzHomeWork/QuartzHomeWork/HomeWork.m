//
//  HomeWork.m
//  QuartzHomeWork
//
//  Created by tens04 on 16/8/29.
//  Copyright © 2016年 tens. All rights reserved.
//

#import "HomeWork.h"

@interface HomeWork ()

@end

@implementation HomeWork

- (void)drawRect:(CGRect)rect {
    
    [self drawArc];
    [self draw_2Arc];
    [self draw_Arc];
    [self draw_1Arc];
    [self draw_3Arc];
}




- (void)drawArc {
    
    //设置圆弧的圆心位置 self.center 当前对象的中心点
    CGPoint center = self.center;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:150 startAngle:0 endAngle: M_PI_4 clockwise:YES];
    
    path.lineWidth = 5;
    
    //添加圆弧的中心点位置
    [path addLineToPoint:center];
    [path closePath];
    
    [[UIColor redColor] setStroke];
    [[UIColor redColor] setFill];
    
    [path stroke];
    [path fill];
    
}

- (void)draw_Arc {
    
    //设置圆弧的圆心位置 self.center 当前对象的中心点
    CGPoint center = self.center;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:150 startAngle:M_PI_4 endAngle: M_PI_2 clockwise:YES];
    
    path.lineWidth = 5;
    
    //添加圆弧的中心点位置
    [path addLineToPoint:center];
    [path closePath];
    
    [[UIColor blueColor] setStroke];
    [[UIColor orangeColor] setFill];
    
    [path stroke];
    [path fill];
    
}

- (void)draw_1Arc {
    
    //设置圆弧的圆心位置 self.center 当前对象的中心点
    CGPoint center = self.center;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:150 startAngle:M_PI_2 endAngle: M_PI clockwise:YES];
    
    path.lineWidth = 5;
    
    //添加圆弧的中心点位置
    [path addLineToPoint:center];
    [path closePath];
    
    [[UIColor blackColor] setStroke];
    [[UIColor yellowColor] setFill];
    
    [path stroke];
    [path fill];
    
}
- (void)draw_2Arc {
    
    //设置圆弧的圆心位置 self.center 当前对象的中心点
    CGPoint center = self.center;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:150 startAngle:0 endAngle: M_PI_4 clockwise:NO];
    
    path.lineWidth = 5;
    
    //添加圆弧的中心点位置
    [path addLineToPoint:center];
    [path closePath];
    
    [[UIColor brownColor] setStroke];
    [[UIColor whiteColor] setFill];
    
    [path stroke];
    [path fill];
    
}

- (void)draw_3Arc {
    
    //设置圆弧的圆心位置 self.center 当前对象的中心点
    CGPoint center = self.center;
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:150 startAngle:0 endAngle:300  clockwise:NO];
    
    path.lineWidth = 5;
    
    //添加圆弧的中心点位置
    [path addLineToPoint:center];
    [path closePath];
    
    [[UIColor redColor] setStroke];
    [[UIColor blackColor] setFill];
    
    [path stroke];
    [path fill];
    
}







@end
