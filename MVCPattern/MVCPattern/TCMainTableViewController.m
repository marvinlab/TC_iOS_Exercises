//
//  TCMainTableViewController.m
//  MVCPattern
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCMainTableViewController.h"
#import "TCLevelViewController.h"

@interface TCMainTableViewController () <UITabBarControllerDelegate, UITableViewDataSource>

@property (nonatomic,strong) NSMutableArray *arrayOfCategories;
@property (nonatomic, retain) NSMutableArray *arrayOfThumbnails;


@end

@implementation TCMainTableViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    self.arrayOfCategories =[[NSMutableArray alloc]init];
    
    NSDictionary *letterDict = [[NSDictionary alloc]initWithObjectsAndKeys:@"Letters",@"Title", nil];
    NSDictionary *colorDict = [[NSDictionary alloc]initWithObjectsAndKeys:@"Colors",@"Title", nil];
    NSDictionary *foodDict = [[NSDictionary alloc]initWithObjectsAndKeys:@"Foods",@"Title", nil];
    
    self.arrayOfThumbnails = [[NSMutableArray alloc]initWithObjects:@"letterscat",@"colorscat",@"foodcat", nil];
    
    
    //Add these Dictionary of Categories as a subview of the TableView
    
    [self.arrayOfCategories addObject:letterDict];
    [self.arrayOfCategories addObject:colorDict];
    [self.arrayOfCategories addObject:foodDict];
    
    self.title = @"Main Menu";

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.arrayOfCategories count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    NSString *cellID = @"UITableViewCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellID forIndexPath:indexPath];

    NSDictionary *categories = [self.arrayOfCategories objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [categories objectForKey:@"Title"]];
    
    
    UIImage *picture = [UIImage imageNamed:self.arrayOfThumbnails[indexPath.row]];
    cell.imageView.image = picture;
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    TCLevelViewController *levelView = [[TCLevelViewController alloc]init];
    [self.navigationController pushViewController:levelView animated:YES];

}



@end
