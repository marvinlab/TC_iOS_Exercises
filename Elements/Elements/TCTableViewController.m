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

@interface TCTableViewController ()

@property (nonatomic, strong) NSArray *allViews;
@property (weak, nonatomic) IBOutlet UITableView *mainTableView;


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
        // Custom initialization
        //
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
                         nil];
        //self.tableView.delegate = self;
    }
    return self;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    
    
    //NSLog(@"%@", self.allViews);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    NSLog(@"numberOfRowsInSection");
//    return [self.allViews count];
    return 1;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
//    cell.textLabel.text = self.allViews[indexPath.row];
    
    
    cell.textLabel.text = @"hi";
    
    NSLog(@"%@", self.allViews);
    
    return cell;
}


@end
