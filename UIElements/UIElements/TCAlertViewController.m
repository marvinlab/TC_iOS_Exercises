//
//  TCAlertViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCAlertViewController.h"

@interface TCAlertViewController () <UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *phoneSafetyLabel;
@property (weak, nonatomic) IBOutlet UIImageView *fireImage;
@property (weak, nonatomic) IBOutlet UIButton *extinguishButton;

- (IBAction)extinguishButtonPressed:(id)sender;

@end

@implementation TCAlertViewController

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
    
    UIImage *fire = [UIImage imageNamed:@"flame"];
    
    self.fireImage.image = fire;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)extinguishButtonPressed:(id)sender
{
    
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"Prompt" message:@"Are you brave enought to do this?" delegate:self cancelButtonTitle:@"No" otherButtonTitles:@"Yes",@"Help!", nil];
    
    [alert show];
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    NSString *title = [alertView buttonTitleAtIndex:buttonIndex];
    
    if([title isEqualToString:@"No"])
    {
        self.phoneSafetyLabel.text = @"COWAAAARDDDD!!!!!";
    }
    else if([title isEqualToString:@"Yes"])
    {
        self.fireImage.image = nil;
        self.phoneSafetyLabel.lineBreakMode = NSLineBreakByWordWrapping;
        self.phoneSafetyLabel.text = @"Because of your bravery, Your Phone is safe now";
    }
    else if([title isEqualToString:@"Help!"])
    {
        self.fireImage.image = nil;
        self.phoneSafetyLabel.lineBreakMode = NSLineBreakByWordWrapping;
        self.phoneSafetyLabel.text = @"Firemen arrived! Your Phone is safe now";
    }

}



@end
