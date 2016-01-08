//
//  UIView+InterfaceBuilder.m
//  IBInspectable
//
//  Created by Tomasz Rejdych on 08/01/16.
//  Copyright © 2016 Tomasz Rejdych. All rights reserved.
//

#import "UIView+InterfaceBuilder.h"


@implementation UIView (InterfaceBuilder)
@dynamic cornerRadius;
@dynamic borderColor, borderWidth;
@dynamic shadowColor, shadowOpacity, shadowOffset, shadowRadius;

#pragma mark - radius

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
}

#pragma mark - border
- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = borderColor.CGColor;
}
- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

#pragma mark - shadow

- (void)setShadowColor:(UIColor *)shadowColor{
    self.layer.shadowColor = shadowColor.CGColor;
}
- (void)setShadowOpacity:(CGFloat)shadowOpacity {
    self.layer.shadowOpacity = shadowOpacity;
}
- (void)setShadowOffset:(CGSize)shadowOffset {
    self.layer.shadowOffset = shadowOffset;
}
- (void)setShadowRadius:(CGFloat)shadowRadius {
    self.layer.shadowRadius = shadowRadius;
}


@end
