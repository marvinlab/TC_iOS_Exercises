//
//  TCActionSheetViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCActionSheetViewController.h"

@interface TCActionSheetViewController () <UIActionSheetDelegate>
@property (weak, nonatomic) IBOutlet UIButton *showButton;
@property (weak, nonatomic) IBOutlet UILabel *labelOfChosenAction;

@end

@implementation TCActionSheetViewController

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
    NSString *mainTitle = @"Action Sheet";
    self.title = mainTitle;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showActionSheet:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:@"Sample Action Sheet" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Destroy" otherButtonTitles:@"Create", nil];
    [actionSheet showInView:self.view];
    
}
- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    self.labelOfChosenAction.text = [NSString stringWithFormat:@"%@",[actionSheet buttonTitleAtIndex:buttonIndex]];
}

@end
