//
//  TCCoreAnimatorViewController.m
//  Animations_CoreAnimation
//
//  Created by Marvin Labrador on 10/14/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCCoreAnimatorViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface TCCoreAnimatorViewController ()

@end

@implementation TCCoreAnimatorViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its ni

    
    UIImage *ballImage = [UIImage imageNamed:@"pokeball"];
    UIImageView *ball = [[UIImageView alloc]initWithFrame:CGRectMake(20, 30, 120, 120)];
    ball.image = ballImage;
    
    [self.view addSubview:ball];
    
    [self addFallAnimationForLayer:ball.layer];

}

- (void)addFallAnimationForLayer:(CALayer *)layer
{
    NSString *keyPath = @"transform.translation.y";
    
    CAKeyframeAnimation *translation = [CAKeyframeAnimation animationWithKeyPath:keyPath];
    
    translation.duration = 1.5f;
    translation.repeatCount = HUGE_VAL;
    translation.autoreverses = YES;
    
    NSMutableArray *values = [[NSMutableArray alloc]init];
    
    //start value
    [values addObject:[NSNumber numberWithFloat:0.0f]];
    
    //end value
    CGFloat height = [[UIScreen mainScreen]applicationFrame].size.height - layer.frame.size.height;
    [values addObject:[NSNumber numberWithFloat:height]];
    translation.values = values;
    
    [layer addAnimation:translation forKey:keyPath];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
