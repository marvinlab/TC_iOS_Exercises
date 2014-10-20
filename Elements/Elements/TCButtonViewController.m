//
//  TCButtonViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCButtonViewController.h"

@interface TCButtonViewController ()
@property (weak, nonatomic) IBOutlet UILabel *greetLabel;
@property (weak, nonatomic) IBOutlet UIButton *buttonBtn;


-(IBAction)buttonIsPressed:(id)sender;
@end

@implementation TCButtonViewController

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
    self.greetLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.greetLabel.text = @"You See that button down there? \nGo ahead and press it.";
    
    // Do any additional setup after loading the view from its nib.
    NSString *mainTitle = @"Button View";
    self.title = mainTitle;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)buttonIsPressed:(id)sender
{
    
    self.greetLabel.text = @"Congrats\n You have successfully completed your mission: to press a button.\n It was too complicated, your parents must be so proud of you. (applause)";
    
}

@end
