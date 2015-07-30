//
//  ViewController.m
//  UIIMageViewFuzzyDemo
//
//  Created by apple on 15/7/30.
//  Copyright (c) 2015年 apple. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+FuzzyEffect.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageDemo;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 设置模糊化图片
    [self.imageView setImageToBlur:[UIImage imageNamed:@"demo"]
                        blurRadius:kBlurredImageDefaultBlurRadius];
    
    // 设置正常图片
    [self.imageDemo setImage:[UIImage imageNamed:@"demo"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
