//
//  GXFView.m
//  GXFHttpTool
//
//  Created by 顾雪飞 on 17/4/11.
//  Copyright © 2017年 顾雪飞. All rights reserved.
//

#import "GXFView.h"

@implementation GXFView

- (void)drawRect:(CGRect)rect {
    
    CGFloat width = rect.size.width;
    
    UIBezierPath *bezierPath1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width * 0.5, width * 0.5) radius:width * 0.5 startAngle:M_PI_2 - M_PI * self.progress endAngle:M_PI_2 + M_PI * self.progress clockwise:YES];
    
    [[UIColor redColor] setFill];
    
    [bezierPath1 fill];
    
//    UIBezierPath *bezierPath2 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(width * 0.5, width * 0.5) radius:width * 0.5 startAngle:M_PI_2 endAngle:M_PI_2 - M_PI * self.progress clockwise:NO];
//    
//    [bezierPath2 fill];
    
}

- (void)setProgress:(CGFloat)progress {
    
    _progress = progress;
    
    [self setNeedsDisplay];
}

@end
