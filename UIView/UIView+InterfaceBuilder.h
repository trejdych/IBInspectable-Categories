//
//  UIView+InterfaceBuilder.h
//  IBInspectable
//
//  Created by Tomasz Rejdych on 08/01/16.
//  Copyright © 2016 Tomasz Rejdych. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (InterfaceBuilder)

@property (nonatomic, assign) IBInspectable CGFloat cornerRadius;

@property (nonatomic, assign) IBInspectable CGFloat borderWidth;
@property (nonatomic, strong, nullable) IBInspectable UIColor *borderColor;

@property (nonatomic, strong, nullable) IBInspectable UIColor *shadowColor;
@property (nonatomic, assign) IBInspectable CGFloat shadowOpacity;
@property (nonatomic, assign) IBInspectable CGSize shadowOffset;
@property (nonatomic, assign) IBInspectable CGFloat shadowRadius;

@end
