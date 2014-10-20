//
//  TCTableViewController.m
//  Elements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCTableViewController.h"

#import "TCTableViewController.h"
#import "TCButtonViewController.h"
#import "TCControlViewController.h"
#import "TCTextViewController.h"
#import "TCPickersViewController.h"
#import "TCImageViewController.h"

#import "TCSegmentedViewController.h"
#import "TCToolbarViewController.h"
#import "TCTabBarController.h"
#import "TCAlertViewController.h"
#import "TCActionSheetViewController.h"

#import "TCGameViewController.h"
#import "TCWebViewController.h"

#import "TCAccelerometerViewController.h"

NSString *const CELL_IDENTIFIER = @"UITableViewCell";

@interface TCTableViewController ()

@property (nonatomic, strong) NSArray *allViews;


@end

@implementation TCTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super init];
    
    return self;
}

- (id)init
{
   self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
      
        [self.tableView setDelegate:self];
        [self.tableView setDataSource:self];
        NSLog(@"%@", self.tableView.dataSource);
        
        self.allViews = [[NSArray alloc]initWithObjects:[TCButtonViewController description],
                         [TCControlViewController description],
                         [TCTextViewController description],
                         [TCPickersViewController description],
                         [TCImageViewController description],
                         [TCSegmentedViewController description],
                         [TCToolbarViewController description],
                         [TCTabBarController description],
                         [TCAlertViewController description],
                         [TCActionSheetViewController description],
                         [TCGameViewController description],
                         [TCWebViewController description],
                         [TCAccelerometerViewController description],
                         nil];
       
    }
    return self;
    
}

- (void)viewDidLoad
{
   
    
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:CELL_IDENTIFIER];
    
    NSString *mainTitle = @"UIElements Main List";
    self.title = mainTitle;
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection");
    return [self.allViews count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CELL_IDENTIFIER];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CELL_IDENTIFIER];
    }
    
    cell.textLabel.text = self.allViews[indexPath.row];
    
    NSLog(@"%@", self.allViews);
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *currentSelected = self.allViews[indexPath.row];
    
    if ([currentSelected isEqualToString:@"TCButtonViewController"]) {
        
        TCButtonViewController *currentView = [[TCButtonViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCControlViewController"]) {
        
        TCControlViewController *currentView = [[TCControlViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCTextViewController"]) {
        
        TCTextViewController *currentView = [[TCTextViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCPickersViewController"]) {
        
        TCPickersViewController *currentView = [[TCPickersViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCImageViewController"]) {
        
        TCImageViewController *currentView = [[TCImageViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCSegmentedViewController"]) {
        
        TCSegmentedViewController *currentView = [[TCSegmentedViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCToolbarViewController"]) {
        
        TCToolbarViewController *currentView = [[TCToolbarViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCTabBarController"]) {
        
        TCTabBarController *currentView = [[TCTabBarController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCAlertViewController"]) {
        
        TCAlertViewController *currentView = [[TCAlertViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCActionSheetViewController"]) {
        
        TCActionSheetViewController *currentView = [[TCActionSheetViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCGameViewController"]) {
        
        TCGameViewController *currentView = [[TCGameViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCWebViewController"]) {
        
        TCWebViewController *currentView = [[TCWebViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    } else if ([currentSelected isEqualToString:@"TCAccelerometerViewController"]) {
        
        TCAccelerometerViewController *currentView = [[TCAccelerometerViewController alloc]init];
        [self.navigationController pushViewController:currentView animated:YES];
        
    }




    
    
}


@end
