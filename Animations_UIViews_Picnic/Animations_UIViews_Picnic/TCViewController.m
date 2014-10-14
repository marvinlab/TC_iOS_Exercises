//
//  TCViewController.m
//  Animations_UIViews_Picnic
//
//  Created by Marvin Labrador on 10/14/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCViewController.h"

@interface TCViewController ()

@property (nonatomic, weak) IBOutlet UIImageView *basketTop;
@property (nonatomic, weak) IBOutlet UIImageView *basketBottom;


@end

@implementation TCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)viewDidAppear:(BOOL)animated
{
    CGRect basketTopFrame = self.basketTop.frame;
    basketTopFrame.origin.y = -basketTopFrame.size.height;
    
    CGRect basketBottomFrame = self.basketBottom.frame;
    basketBottomFrame.origin.y = self.view.bounds.size.height;
    
//    [UIView beginAnimations:nil context:nil];
//    [UIView setAnimationDuration:0.5];
//    [UIView setAnimationDelay:1.0];
//    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
//    
//    self.basketTop.frame = basketTopFrame;
//    self.basketBottom.frame = basketBottomFrame;
    

    [UIView animateWithDuration:0.5
                          delay:1.0
                        options:UIViewAnimationCurveEaseOut
                     animations:^{
                         self.basketTop.frame = basketTopFrame;
                         self.basketBottom.frame = basketBottomFrame;
                     }
                     completion:^(BOOL finished){
                         NSLog(@"Done!");
                     }];
    
}
@end
