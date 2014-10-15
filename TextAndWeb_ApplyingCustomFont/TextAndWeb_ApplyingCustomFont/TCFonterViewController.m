//
//  TCFonterViewController.m
//  TextAndWeb_ApplyingCustomFont
//
//  Created by Marvin Labrador on 10/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCFonterViewController.h"

@interface TCFonterViewController ()

@property (weak, nonatomic) IBOutlet UILabel *theLabel;

@property (weak, nonatomic) IBOutlet UIButton *style1Btn;
@property (weak, nonatomic) IBOutlet UIButton *style2Btn;
@property (weak, nonatomic) IBOutlet UIButton *style3Btn;
@property (weak, nonatomic) IBOutlet UIButton *style4Btn;

-(IBAction)setFontToStyle1:(id)sender;
-(IBAction)setFontToStyle2:(id)sender;
-(IBAction)setFontToStyle3:(id)sender;
-(IBAction)setFontToStyle4:(id)sender;

@end

@implementation TCFonterViewController

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
    
    for (NSString* family in [UIFont familyNames])
    {
        NSLog(@"%@", family);
        
        for (NSString* name in [UIFont fontNamesForFamilyName: family])
        {
            NSLog(@"  %@", name);
        }
    }
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)setFontToStyle1:(id)sender
{
    self.theLabel.font = [UIFont fontWithName:@"BillionStarsPersonalUse" size:30];
    
}

- (IBAction)setFontToStyle2:(id)sender
{
    self.theLabel.font = [UIFont fontWithName:@"Something Strange" size:30];
    
}

- (IBAction)setFontToStyle3:(id)sender
{
    self.theLabel.font = [UIFont fontWithName:@"Oliver Twist" size:30];
    
}

- (IBAction)setFontToStyle4:(id)sender
{
    self.theLabel.font = [UIFont fontWithName:@"Royal" size:30];
    
}


@end
