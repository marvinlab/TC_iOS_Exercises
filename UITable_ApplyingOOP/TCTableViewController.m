//
//  TCTableViewController.m
//  UITable_ApplyingOOP
//
//  Created by Marvin Labrador on 10/14/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCTableViewController.h"

@interface TCTableViewController ()

@end

@implementation TCTableViewController
{
    
    NSArray *tableData;
    
}

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
    
    tableData = [[NSArray alloc]initWithObjects:@"Batman",@"Superman",@"Spiderman",@"The Flash",@"Hulk",@"Hawk Eye",
    @"Black Widow",@"Wonder Woman",@"Marvin Labrador",nil];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    
    return [tableData count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"SimpleTableItem";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if(!cell){
    
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [tableData objectAtIndex:indexPath.row];
    return cell;
}

@end
