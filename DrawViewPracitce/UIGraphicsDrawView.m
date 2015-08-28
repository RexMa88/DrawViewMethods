//
//  UIGraphicsDrawView.m
//  DrawViewPracitce
//
//  Created by RexMa on 15/8/27.
//  Copyright (c) 2015年 RexMa. All rights reserved.
//

#import "UIGraphicsDrawView.h"

@implementation UIGraphicsDrawView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];

    [[UIColor redColor] setStroke];
    [[UIColor whiteColor] setFill];
    CGFloat width = CGRectGetWidth(rect);
    CGFloat height = CGRectGetHeight(rect);
    //图形上下文
    CGContextRef context = UIGraphicsGetCurrentContext();
    //path
//    CGMutablePathRef path = CGPathCreateMutable();
    
    //设置起点
    CGContextMoveToPoint(context, 0, height*2/3);
    CGContextAddLineToPoint(context, width/3, height*2/3);
    CGContextAddArc(context, width/2, height*2/3, width/6, M_PI, M_PI*2, NO);
    CGContextAddLineToPoint(context, width, height*2/3);
    
    CGContextStrokePath(context);
}


@end
