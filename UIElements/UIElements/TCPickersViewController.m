//
//  TCPickersViewController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCPickersViewController.h"

@interface TCPickersViewController () <UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
@property (weak, nonatomic) IBOutlet UILabel *chosenLabel;
@property NSArray *weapons;




@end

@implementation TCPickersViewController

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
    self.weapons = [[NSArray alloc]initWithObjects:@"Sword",@"Bow and Arrows",@"Dagger",@"Magic Staff",@"Gun", nil];
    
    self.picker.dataSource = self;
    self.picker.delegate = self;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
    
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    
    return self.weapons.count;

}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    
    return self.weapons[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    self.chosenLabel.lineBreakMode = NSLineBreakByWordWrapping;
    self.chosenLabel.text = [NSString stringWithFormat:@"You have chosen the %@. Good Choice!",self.weapons[row]];
    
}
@end
