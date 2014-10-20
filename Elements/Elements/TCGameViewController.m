//
//  TCGameViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCGameViewController.h"
#import "TCPauseScreenViewController.h"

@interface TCGameViewController () <PauseScreenViewControllerDelegate>
@property (weak, nonatomic) IBOutlet UIButton *pauseButton;

@end

@implementation TCGameViewController

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
  //  TCPauseScreenViewController *pauseGame = [[TCPauseScreenViewController alloc] init];
  //  [pauseGame setDelegate:self];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)pauseGameDelegateMethod
{
    NSLog(@"Successfully called the Custom Delegate method!");
    
    UIAlertView *success = [[UIAlertView alloc]initWithTitle:@"Message"
                                                     message:@"Successfully called delegate"
                                                    delegate:self
                                           cancelButtonTitle:@"OK"
                                           otherButtonTitles:nil];
    [success show];
}

-(IBAction)pausePressed:(id)sender
{
    
    TCPauseScreenViewController *pauseGame = [[TCPauseScreenViewController alloc]init];
    [pauseGame setDelegate:self];
    
    [self.navigationController pushViewController:pauseGame animated:YES];
}


@end
