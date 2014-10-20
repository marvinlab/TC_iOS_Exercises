//
//  TCToolbarViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCToolbarViewController.h"

@interface TCToolbarViewController ()
@property (nonatomic, weak) IBOutlet UIToolbar *mainToolBar;
@property (nonatomic, weak) NSArray *buttonsArray;
@property (weak, nonatomic) IBOutlet UILabel *selectedToolLabel;



@end

@implementation TCToolbarViewController

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
    
    UIBarButtonItem *tool1 = [[UIBarButtonItem alloc]
                                    initWithTitle:@"First"
                                    style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(firstButtonTapped:)];
    
    UIBarButtonItem *tool2 = [[UIBarButtonItem alloc]
                                     initWithTitle:@"Second"
                                     style:UIBarButtonItemStylePlain
                                     target:self
                                     action:@selector(secondButtonTapped:)];
    
    UIBarButtonItem *tool3 = [[UIBarButtonItem alloc]
                                    initWithTitle:@"Third"
                                    style:UIBarButtonItemStylePlain
                                    target:self
                                    action:@selector(thirdButtonTapped:)];

    
    self.buttonsArray = [NSArray arrayWithObjects:tool1,tool2,tool3, nil];
    
    [self.mainToolBar setItems:self.buttonsArray];
    
    NSString *mainTitle = @"Toolbar View";
    self.title = mainTitle;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)firstButtonTapped:(id)sender
{
    
    self.selectedToolLabel.text = @"Tool 1";
    
}

- (IBAction)secondButtonTapped:(id)sender
{
    
    self.selectedToolLabel.text = @"Tool 2";
    
}

- (IBAction)thirdButtonTapped:(id)sender
{
    
    self.selectedToolLabel.text = @"Tool 3";
    
}



@end
