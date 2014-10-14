//
//  TCAnimatorViewController.m
//  Animations_UIImageView
//
//  Created by Marvin Labrador on 10/14/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCAnimatorViewController.h"

@interface TCAnimatorViewController ()

@end

@implementation TCAnimatorViewController

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
    // Do any additional setup after loading the view from its nib.
    
    NSArray *imageNames = [[NSArray alloc]initWithObjects:@"b1.png",@"b2.png",@"b3.png",@"b4.png",@"b5.png",@"b6.png", @"b7.png",@"b8.png",@"b9.png",@"b10.png", nil];

    NSMutableArray *images = [[NSMutableArray alloc]init];
    
    for (int i = 0;i < imageNames.count; i++) {
        [images addObject:[UIImage imageNamed:[imageNames objectAtIndex:i]]];
    }

    UIImageView *animationImageView = [[UIImageView alloc]initWithFrame:CGRectMake(60, 95, 193, 193)];
    animationImageView.animationImages = images;
    animationImageView.animationDuration = 1;
    
    [self.view addSubview:animationImageView];
    [animationImageView startAnimating];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
