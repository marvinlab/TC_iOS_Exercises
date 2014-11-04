//
//  TCTextViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCTextViewController.h"

@interface TCTextViewController ()
@property (nonatomic, retain) IBOutlet UITextView *textView;
@property (nonatomic, retain) IBOutlet UITextField *textField;
@property (nonatomic, retain) IBOutlet UILabel *textLabel;


- (IBAction)textFieldReturns:(id)sender;

@end

@implementation TCTextViewController

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
    NSString *mainTitle = @"Text View";
    self.title = mainTitle;
}

- (void) textFieldReturns:(id)sender
{
   
    self.textView.text = self.textField.text;

}

@end
