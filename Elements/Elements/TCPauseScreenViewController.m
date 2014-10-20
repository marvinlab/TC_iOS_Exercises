//
//  TCPauseScreenViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCPauseScreenViewController.h"

@interface TCPauseScreenViewController ()
@property (weak, nonatomic) IBOutlet UIButton *buttonInPause;

@end



@implementation TCPauseScreenViewController

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
    NSString *mainTitle = @"Pause Screen";
    self.title = mainTitle;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pauseButtonMethod:(id)sender
{
    if([self.delegate respondsToSelector:@selector(pauseGameDelegateMethod)])
    {
        NSLog(@"call pauseGameDelegateMethod from MainViewController");
        [self.delegate pauseGameDelegateMethod];
    }
    else
        NSLog(@"Does not conforms to the Delegate Protocol");
}

@end
