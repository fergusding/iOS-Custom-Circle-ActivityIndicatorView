//
//  FDActivityIndicatorView.m
//  FDActivityIndicatorViewDemo
//
//  Created by fergusding on 15/5/27.
//  Copyright (c) 2015年 fergusding. All rights reserved.
//

#import "FDActivityIndicatorView.h"

@implementation FDActivityIndicatorView

- (id)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = self.frame.size.width / 2;
        
        [self addAnimation];
    }
    return self;
}

- (void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    for (int i = 0; i < 360; i++) {
        CGFloat beginAngle = M_PI * 2 / 360 * i;
        CGFloat toAngle  = beginAngle + M_PI * 2 / 360;
        CGFloat alpha = 1.0 / 360 * (i + 1);
        [self drawCircleWithContext:context beginAngle:beginAngle toAngle:toAngle color:_color alpha:alpha];
    }
}

// Draw the circle indicator view
- (void)drawCircleWithContext:(CGContextRef)context beginAngle:(CGFloat)beginAngle toAngle:(CGFloat) toAngle color:(UIColor *)color alpha:(CGFloat)alpha {
    CGContextSaveGState(context);
    CGContextBeginPath(context);
    CGFloat r, g, b;
    [color getRed:&r green:&g blue:&b alpha:nil];
    CGContextSetRGBStrokeColor(context, r, g, b, alpha);
    CGContextSetLineWidth(context, 5.0);
    CGContextAddArc(context, self.frame.size.width / 2, self.frame.size.height / 2, self.frame.size.width / 2, beginAngle, toAngle, 0);
    CGContextDrawPath(context, kCGPathStroke);
}

- (void)addAnimation {
    CABasicAnimation *animation = [CABasicAnimation animationWithKeyPath:@"transform.rotation.z"];
    animation.removedOnCompletion = NO;
    animation.fillMode = kCAFillModeForwards;
    animation.fromValue = @(0);
    animation.toValue = @(M_PI * 2);
    animation.duration = 1.f;
    animation.repeatCount = INT_MAX;
    
    [self.layer addAnimation:animation forKey:@"rotate"];
}

@end
