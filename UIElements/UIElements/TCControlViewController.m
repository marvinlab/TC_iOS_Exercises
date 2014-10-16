//
//  TCControlViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCControlViewController.h"

@interface TCControlViewController ()

@property (nonatomic,weak) IBOutlet UISwitch *switchSwitch;
@property (weak, nonatomic) IBOutlet UISlider *valueSlide;
@property (weak, nonatomic) IBOutlet UILabel *sliderValueLabel;


-(IBAction)switchToggled:(id)sender;
-(IBAction)slideIsSliding:(id)sender;

@end

@implementation TCControlViewController

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
    

    [self.view setBackgroundColor:[UIColor blackColor]];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)switchToggled:(id)sender
{
    
    if (self.switchSwitch.on) {
       
        [self.view setBackgroundColor:[UIColor yellowColor]];
   } else {
        [self.view setBackgroundColor:[UIColor blackColor]];
   }
    
}

- (void)slideIsSliding:(id)sender
{
    
    NSString *value = [[NSString alloc]initWithFormat:@"%0f",self.valueSlide.value];
    
    self.sliderValueLabel.text = value;
    
}

@end
