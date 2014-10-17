//
//  TCSegmentedViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCSegmentedViewController.h"

@interface TCSegmentedViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *segmentedView;

-(IBAction)segmentSelected:(id)sender;

@end

@implementation TCSegmentedViewController

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
    self.view.backgroundColor = [UIColor redColor];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)segmentSelected:(id)sender
{
    if (self.segmentedView.selectedSegmentIndex == 0) {
        self.view.backgroundColor = [UIColor redColor];
    } else if (self.segmentedView.selectedSegmentIndex == 1) {
        self.view.backgroundColor = [UIColor blueColor];
    } else if (self.segmentedView.selectedSegmentIndex == 2) {
        self.view.backgroundColor = [UIColor greenColor];
    } else {
        self.view.backgroundColor = [UIColor whiteColor];
    }
    
    
}

@end
