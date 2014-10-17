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
    return [self.allViews count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.allViews[indexPath.row];
    NSLog(@"%@", self.allViews);
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
