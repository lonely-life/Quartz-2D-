//
//  HomeWork.m
//  QuartzHomeWork1、2
//
//  Created by tens04 on 16/8/29.
//  Copyright © 2016年 tens. All rights reserved.
//

#import "HomeWork.h"

@implementation HomeWork

- (void)drawRect:(CGRect)rect {
    
    [self drawBezierPaths];
    [self drawLines];
    
    [self draw_Lines];
    [self drawBezier];
}

- (void)drawLines {
    CGFloat dashs[] = {2,10,2};
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 475)];
    [path addLineToPoint:CGPointMake(500, 475)];
    [path setLineWidth:2];
    [path setLineDash:dashs count:3 phase:0];

    
    [[UIColor whiteColor] setStroke];
    [[UIColor orangeColor] setFill];
    
    [path stroke];
    [path fill];
}

- (void)drawBezierPaths {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [[UIColor redColor] setStroke];
    path.lineWidth =3;
    
    CGFloat screenWidth = CGRectGetWidth(self.bounds) + 50;
    CGFloat screenHeight = CGRectGetHeight(self.bounds) + 200;
    CGFloat width = screenWidth / rand() + 10;
    
    for (int i = 0; i < 1000; i++) {
        CGFloat controlPoint_Y = 0;
        if (i % 2 == 0) {
            
            controlPoint_Y = screenHeight / 2 - rand() % 50 + 10;
        } else {
            
            controlPoint_Y = screenHeight / 2 + rand() % 50 + 10;
        }
        
        CGPoint beginPoint = CGPointMake(i * width, screenHeight / 2);
        CGPoint endPoint = CGPointMake(beginPoint.x + width, screenHeight / 2);
        CGPoint controlPoint = CGPointMake((width / 5)+ (i * width), controlPoint_Y);
        
        [path moveToPoint:beginPoint];
        [path addQuadCurveToPoint:endPoint controlPoint:controlPoint];
    }
    
    [path stroke];
}

- (void)draw_Lines {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(0, 250)];
    [path addLineToPoint:CGPointMake(500, 250)];
    [path setLineWidth:2];
    
    UIBezierPath *path1 = [UIBezierPath bezierPath];
    [path1 moveToPoint:CGPointMake(20, 0)];
    [path1 addLineToPoint:CGPointMake(20, 450)];
    [path1 setLineWidth:2];
    
    
    [[UIColor whiteColor] setStroke];
    [[UIColor orangeColor] setFill];
    
    [path stroke];
    [path fill];
    [path1 stroke];
    [path1 fill];

}


- (void)drawBezier {
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [[UIColor redColor] setStroke];
    path.lineWidth = 5;
    
    CGPoint beginPoint_1 = CGPointMake(20, 250);
    CGPoint controlPoint_1 = CGPointMake(70, 150);
    CGPoint controlPoint_2 = CGPointMake(120, 350);
    CGPoint endPoint_1 = CGPointMake(170, 250);

    [path moveToPoint:beginPoint_1];
    [path addCurveToPoint:endPoint_1 controlPoint1:controlPoint_1 controlPoint2:controlPoint_2];
    
    [path stroke];
}




@end
