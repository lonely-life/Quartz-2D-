//
//  BezierPathView.m
//  01、Quartz(2D绘图)
//
//  Created by kinglinfu on 16/8/29.
//  Copyright © 2016年 Tens. All rights reserved.
//

#import "BezierPathView.h"

@implementation BezierPathView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.

/**
 绘图的方法，当视图显示时自动调用，不能手动调用
 所有的绘图在我们这支好之后都需要来这个函数中添加进来，不然是无法显示的
 也就是说这里是所有的绘图程序的起始位置
 **/
- (void)drawRect:(CGRect)rect {
    
    // [self drawLines];
    
    // [self drawGraphics];
    
    // [self drawArc];
    
    [self drawBezier];
}

/**
 简单的线条绘图，就是利用线条连勾图案，这个也是最简单的一种绘图方式
 */
- (void)drawLines {
    
    /*
     创建路径对象，需要注意的是，绘图所创建的路径对象，其实质不在是像之前所创建的那些对象样的可以用初始化方式创建，
     创建绘图对象只能通过对象单独创建，然后再去它的属性进行设置
     **/
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    // 将画笔移动到某个点(起点，设置绘制该图案的起点位置)
    [path moveToPoint:CGPointMake(20, 50)];
    
    /*
     绘制一条直线到某个点，这里面可以是只添加一个点，也可以添加多个点，就比如说我们可以添加一个点，然后两点之间连接起来就是一条直线了，
     也可以添加多个点，但是需要主要的是，如果添加多个点我们需要计算点的落脚位置，就比如说下下面这个样的，这个添加出来形成的就是一个等腰三角形。

     **/
    [path addLineToPoint:CGPointMake(300, 50)];
    [path addLineToPoint:CGPointMake(160, 200)];
    /*
     这个本来是用于等腰三角形的最后一条腰和起点位置相连接的，但是在Quartz中给我们了一个函数，这个函数就是用来闭合路劲的
     
     
     [path addLineToPoint:CGPointMake(20, 50)];

     closePath：这个函数就是闭合路径的函数，它是以画笔最后到达的落脚点为新起点，直接将线条连接到这个图案的原起点位置的
     **/
    // 4、闭合路径
    [path closePath];
    
    //这里是在原来的基础上再接新的图案
    [path moveToPoint:CGPointMake(160, 200)];
    [path addLineToPoint:CGPointMake(20, 350)];
    [path addLineToPoint:CGPointMake(300,350)];
    [path closePath];
    
    /*
     设置虚线，这里我们需要先去确定一个数组，这个数组的用于在意，你将要显示的需要的样式，
     就比如说2，10，2；这样设置显示出来的虚线样式就是 (短——长——短：——    ——）
     首先开始的应该是线条，然后是黑色的空间，然后再是线条
     注意：你在数组中输入多少个元素，线面的虚线的组成段数就应和元素个数相同
          phase: 设置虚线的起始位置，可以是从图案的起点开始，如果你设置为0就是从起点开始，
     如果你设置的值越大，那就是说从起点位置到你设置的那个值之间是一段黑色的空间
     
     
     CGFloat dashs[] = {2,10,2};
     
     设置虚线： dashs: 虚线的虚实线的长度，count: 虚线的组成段数， phase: 设置虚线的起始位置
     [path setLineDash:dashs count:3 phase:0];
     */
    
    //设置线条宽度，线条的宽度是说这个图案边框线条的宽度
    [path setLineWidth:10];
    
    /**
     设置线头的样式：
     kCGLineCapButt ： 默认样式
     kCGLineCapRound ：圆角样式，用这种样式可以将这图案的各个角弄的圆滑一点
     kCGLineCapSquare ：个人感觉这个样式和默认样式没有区别
     */
    [path setLineCapStyle:kCGLineCapRound];
    
    /**
     设置线条连接点的样式：
     kCGLineJoinMiter： 默认样式
     kCGLineJoinRound：圆角样式
     kCGLineJoinBevel：？？
     */
    [path setLineJoinStyle:kCGLineJoinRound];
    
    // 设置描边的颜色(描边就是图案的边框线)
    [[UIColor redColor] setStroke];
    
    //设置吞内部的填充颜色，这个填充是填充当前图案中的所有空间
    [[UIColor whiteColor] setFill];
    
    /**
     绘制(描边)，上边设置了那么多，如果没有这里的绘制，那么都等于0
     这里可以等价于原来那些控件上的add也就是添加
     */
    [path stroke];
    
    /**
     绘制(内部填充)，上面我们谁知的内部填充颜色，这里就是将我们设置的内部填充颜色填充添加到当前的图案上
     */
    [path fill];
}

/**
 绘制矩形，绘制矩形时，我们可以直接给定它的位置和长宽，当长宽相等时就是一个正方形
 **/
- (void)drawGraphics {
    
    //给定将要绘制的图案的位置坐标和长宽
    CGRect rect = CGRectMake(20, 260, 320, 200);
    
    // 画矩形
    // UIBezierPath *path = [UIBezierPath bezierPathWithRect:rect];
    
    /**
     圆角矩形
     cornerRadius:这个参数是用来确定你将要转圆角的度数是多大，当这个数值足够大时，可以将这矩形改为一个圆
     */
    // UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:rect cornerRadius:20];
    
    // 内切的椭圆、圆形
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:rect];
    
    [[UIColor redColor] setStroke];
    [[UIColor whiteColor] setFill];
    
    
    path.lineWidth = 5;
    
    [path stroke];
    [path fill];
}

/**
 绘制圆弧，绘制圆弧时，我们需要注意圆弧的中心点位置，需要手动添加，
 其次圆弧在绘制时不是也点位(x，y)这样的坐标来确定位置的，而是以弧度来确定位置的
 M_PI_2 ：这个就是弧度值，这个方法里面包含了很多幅度值，需要使用的可以自己去查
 **/
- (void)drawArc {
    
    //设置圆弧的圆心位置 self.center 当前对象的中心点
    CGPoint center = self.center;
    
    /**
     Center: 圆心
     radius: 半径
     startAngle: 起始弧度(一般默认为0，如果你设置了它就会从起点位置开始顺时针或者逆时针空设置度数的空间)
     endAngle: 终点弧度(一般是用来保存终点圆弧的位置或者坐标)
     clockwise:是否顺时针(顺时针时则按照0~360°算  逆时针时则就是按照360~0°算)
     **/
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:center radius:150 startAngle:0 endAngle: M_PI_2 clockwise:YES];
    
    path.lineWidth = 5;
    
    //添加圆弧的中心点位置
    [path addLineToPoint:center];
    [path closePath];
    
    [[UIColor redColor] setStroke];
    [[UIColor whiteColor] setFill];
    
    [path stroke];
    [path fill];
}

/**
 绘制曲线，绘制曲线就是在需要的点位上无限制的添加贝塞尔曲线  这个东西可以一直添加，也可以在同一个点位上添加无数
 **/
- (void)drawBezier {
    
    //绘制贝塞尔曲线
    UIBezierPath *path = [UIBezierPath bezierPath];
    [[UIColor redColor] setStroke];
    path.lineWidth = 5;
    
    //起点位置
    CGPoint beginPoint = CGPointMake(20, 300);
    
    //终点位置
    CGPoint endPoint = CGPointMake(70, 300);
    
    //控制点位置（中转，控制点可以是一个 或者多个）
    CGPoint controlPoint = CGPointMake(45, 200);
    
    //将需要添加的贝塞尔曲线添加到需要添加的位置
    [path moveToPoint:beginPoint];
    /**
     一个控制点的贝塞尔曲线
     当我们在贝塞尔曲线中设置控制点之后需要添加控制点
     */
    [path addQuadCurveToPoint:endPoint controlPoint:controlPoint];
    
    
    CGPoint beginPoint_1 = CGPointMake(70, 300);
    CGPoint endPoint_1 = CGPointMake(170, 300);
    CGPoint controlPoint_1 = CGPointMake(95, 400);
    CGPoint controlPoint_2 = CGPointMake(145, 100);
    
    [path moveToPoint:beginPoint_1];
    // 两个控制点的贝塞尔曲线，有几个控制点就需要添加几次
    [path addCurveToPoint:endPoint_1 controlPoint1:controlPoint_1 controlPoint2:controlPoint_2];
    
    // 拼接两条路径(就是连接两条贝塞尔曲线)
    UIBezierPath *subPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(170, 300, 200, 200)];
    [path appendPath:subPath];
    
    // 4、移除所有的路径
    // [path removeAllPoints];
    
    [path stroke];
}


@end
