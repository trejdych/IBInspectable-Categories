//
//  UIButton+InterfaceBuilder.m
//  IBInspectable
//
//  Created by Tomasz Rejdych on 08/01/16.
//  Copyright © 2016 Tomasz Rejdych. All rights reserved.
//

#import "UIButton+InterfaceBuilder.h"

@implementation UIButton (InterfaceBuilder)
@dynamic normalStateBackgroundColor;
@dynamic highlightedStateBackgroundColor;
@dynamic disabledStateBackgroundColor;
@dynamic selectedStateBackgroundColor;
@dynamic focusedStateBackgroundColor;


- (void)setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    [self setBackgroundImage:[self imageFromColor:backgroundColor] forState:state];
}

- (void)setNormalStateBackgroundColor:(UIColor *)color {
    [self setBackgroundColor:color forState:UIControlStateNormal];
}

-(void)setHighlightedStateBackgroundColor:(UIColor *)color {
    [self setBackgroundColor:color forState:UIControlStateHighlighted];
}
- (void)setDisabledStateBackgroundColor:(UIColor *)color {
    [self setBackgroundColor:color forState:UIControlStateDisabled];
}

-(void)setSelectedStateBackgroundColor:(UIColor *)color {
    [self setBackgroundColor:color forState:UIControlStateSelected];
}
- (void)setFocusedStateBackgroundColor:(UIColor *)color {
    [self setBackgroundColor:color forState:UIControlStateFocused];
}


#pragma mark - image helper
- (UIImage *)imageFromColor:(UIColor *)color {
    CGRect rect = CGRectMake(0, 0, 1, 1);
    
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}


@end
