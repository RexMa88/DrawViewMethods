//
//  UIBezierPathDrawView.m
//  DrawViewPracitce
//
//  Created by RexMa on 15/8/27.
//  Copyright (c) 2015年 RexMa. All rights reserved.
//

#import "UIBezierPathDrawView.h"

@implementation UIBezierPathDrawView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    UIBezierPath *path = [UIBezierPath bezierPath];
    [[UIColor whiteColor] setStroke];
    [[UIColor blackColor] setFill];
    path.lineWidth = 3.0;
    
    path.lineCapStyle = kCGLineCapRound;//Line Corner 线条拐角
    path.lineJoinStyle = kCGLineCapRound;//End Processing 终点处理
    
    CGFloat maxY = CGRectGetMaxY(rect);
    CGFloat maxX = CGRectGetMaxX(rect);
    
    [path moveToPoint:CGPointMake(0, maxY*2/3)];
    [path addLineToPoint:CGPointMake(maxX/3, maxY*2/3)];
//    [path addLineToPoint:CGPointMake(maxX/2, maxY/3)];
    [path addArcWithCenter:CGPointMake(maxX/2, maxY*2/3) radius:maxX/6 startAngle:M_PI endAngle:M_PI*2 clockwise:YES];
//    [path addLineToPoint:CGPointMake(maxX*2/3, maxY*2/3)];
    [path addLineToPoint:CGPointMake(maxX, maxY*2/3)];
//    [path closePath];
    
    [path stroke];
    [path fill];
}


@end
