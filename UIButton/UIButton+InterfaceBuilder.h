//
//  UIButton+InterfaceBuilder.h
//  IBInspectable
//
//  Created by Tomasz Rejdych on 08/01/16.
//  Copyright © 2016 Tomasz Rejdych. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (InterfaceBuilder)

#pragma mark - background
@property (nonatomic, strong, nullable) IBInspectable UIColor *normalStateBackgroundColor;
@property (nonatomic, strong, nullable) IBInspectable UIColor *highlightedStateBackgroundColor;
@property (nonatomic, strong, nullable) IBInspectable UIColor *disabledStateBackgroundColor;
@property (nonatomic, strong, nullable) IBInspectable UIColor *selectedStateBackgroundColor;
@property (nonatomic, strong, nullable) IBInspectable UIColor *focusedStateBackgroundColor;


- (void)setBackgroundColor:(UIColor * _Nullable)backgroundColor forState:(UIControlState)state;

@end
