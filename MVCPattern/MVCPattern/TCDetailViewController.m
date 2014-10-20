//
//  TCDetailViewController.m
//  MVCPattern
//
//  Created by Marvin Labrador on 10/20/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCDetailViewController.h"

@interface TCDetailViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *itemImage;
@property (weak, nonatomic) IBOutlet UILabel *itemName;
@property (weak, nonatomic) IBOutlet UILabel *itemDescription;

@end

@implementation TCDetailViewController

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
    UIImage *displayPicture = [UIImage imageNamed:[self.chosenDictionary objectForKey:@"itemImage"]];
    
    self.itemImage.image = displayPicture;
    self.itemName.text = [self.chosenDictionary objectForKey:@"itemTitle"];
    self.itemDescription.text = [self.chosenDictionary objectForKey:@"itemDescription"];
    
   
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
