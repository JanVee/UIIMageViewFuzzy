//
//  UIImageView+FuzzyEffect.m
//  UIIMageViewFuzzyDemo
//
//  Created by apple on 15/7/30.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "UIImageView+FuzzyEffect.h"
#import "UIImage+FuzzyEffect.h"

@implementation UIImageView (FuzzyEffect)

- (void)setImageToBlur:(UIImage *)image blurRadius:(CGFloat)blurRadius
{
    NSParameterAssert(image);
    blurRadius = (blurRadius <= 0)?:kBlurredImageDefaultBlurRadius;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        // 图像处理
        UIImage *blurredImage = [image applyBlurWithRadius:blurRadius
                                                 tintColor:nil
                                     saturationDeltaFactor:kBlurredImageDefaultSaturationDeltaFactor
                                                 maskImage:nil];
        // 回到主线程
        dispatch_async(dispatch_get_main_queue(), ^{
            self.image = blurredImage;
        });
    });
}


@end
