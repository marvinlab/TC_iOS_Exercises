//
//  TCButtonViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCButtonViewController.h"

@interface TCButtonViewController ()
@property (nonatomic, retain) IBOutlet UILabel *greetLabel;
@property (nonatomic, retain) IBOutlet UIButton *buttonBtn;


-(IBAction)buttonIsPressed:(id)sender;

@end

@implementation TCButtonViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.greetLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.greetLabel.text = @"You See that button down there? \nGo ahead and press it.";
    
    // Do any additional setup after loading the view from its nib.
    NSString *mainTitle = @"Button View";
    self.title = mainTitle;
}


- (IBAction)buttonIsPressed:(id)sender
{
    
    self.greetLabel.text = @"Congrats\n You have successfully completed your mission: to press a button.\n It was too complicated, your parents must be so proud of you. (applause)";
    
}

@end
