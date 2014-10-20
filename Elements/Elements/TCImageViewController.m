//
//  TCImageViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCImageViewController.h"

@interface TCImageViewController ()
@property (nonatomic, retain) IBOutlet UIImageView *picture;
@property (nonatomic, retain) IBOutlet UIButton *buttonBtn;

-(IBAction)buttonPressed:(id)sender;

@end

@implementation TCImageViewController

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
    NSString *mainTitle = @"Image View";
    self.title = mainTitle;
}

-(void)buttonPressed:(id)sender
{
    
    UIImage *scare = [UIImage imageNamed:@"hello"];
    self.picture.image = scare;
    
}

@end
