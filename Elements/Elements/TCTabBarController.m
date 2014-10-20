//
//  TCTabBarController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCTabBarController.h"

#import "BNRHypnosisViewController.h"
#import "BNRQuizViewController.h"
#import "BNRReminderViewController.h"

@interface TCTabBarController ()

@end

@implementation TCTabBarController

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
    BNRHypnosisViewController *hvc = [[BNRHypnosisViewController alloc]init];
    BNRQuizViewController *qvc = [[BNRQuizViewController alloc]init];
    BNRReminderViewController *rvc = [[BNRReminderViewController alloc]init];
    
    self.viewControllers = @[hvc,qvc,rvc];
    NSString *mainTitle = @"Tab Bar View";
    self.title = mainTitle;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
