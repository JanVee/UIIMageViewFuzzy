//
//  UIImageView+FuzzyEffect.h
//  UIIMageViewFuzzyDemo
//
//  Created by apple on 15/7/30.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

static float const kBlurredImageDefaultBlurRadius = 20.0f; // 模糊度
static float const kBlurredImageDefaultSaturationDeltaFactor = 1.8f;

@interface UIImageView (FuzzyEffect)
- (void)setImageToBlur:(UIImage *)image
            blurRadius:(CGFloat)blurRadius;
@end
