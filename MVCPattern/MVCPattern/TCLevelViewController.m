//
//  TCLevelViewController.m
//  MVCPattern
//
//  Created by Marvin Labrador on 10/20/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCLevelViewController.h"
#import "TCItemModel.h"
#import "TCDetailViewController.h"

@interface TCLevelViewController ()

@property (nonatomic, retain) NSMutableArray *arrayOfAllItems;
@property (nonatomic, retain) NSMutableArray *arrayOfThumbs;
@property (nonatomic, retain) NSMutableArray *arrayToView;
@property (nonatomic, retain) NSArray *filteredArray;
@property (nonatomic, retain) NSMutableArray *arrayOfItemModel;


@property (nonatomic, retain) NSString *filePath;
@property (nonatomic, retain) NSDictionary *itemsDictionary;

@end

@implementation TCLevelViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = self.category;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"Cell"];
    
    self.filePath = [[NSBundle mainBundle]pathForResource:@"Exercise-Tool" ofType:@"plist"];
    
    self.arrayOfAllItems = [[NSMutableArray alloc]initWithContentsOfFile:self.filePath];
    
    self.filteredArray = [self.arrayOfAllItems
                          filteredArrayUsingPredicate:[NSPredicate
                                                       predicateWithFormat:@"itemCategory == %@",self.category]];
    
    self.arrayToView = [[NSMutableArray alloc]init];
    
    for (int i = 0; i < [self.filteredArray count]; i++) {
        
        self.itemsDictionary = self.filteredArray[i];
        
        TCItemModel *item = [[TCItemModel alloc]initWithDictionary:self.itemsDictionary];
        
        [self.arrayOfItemModel addObject:item];
        
        [self.arrayToView addObject:self.itemsDictionary];
    }
    
    
    NSLog(@"%@",self.arrayToView);
    
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{

    // Return the number of sections.
    return 1;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{

    // Return the number of rows in the section.
    return [self.arrayToView count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *CellIdentifier = @"Cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    
    
    NSDictionary *cellIdentifier = [self.arrayToView objectAtIndex:indexPath.row];
    
    cell.textLabel.text = [NSString stringWithFormat:@"%@", [cellIdentifier objectForKey:@"itemTitle"]];
    cell.imageView.image = [UIImage imageNamed:[cellIdentifier objectForKey:@"itemImage"]];
    
    return cell;
}

- (void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    TCDetailViewController *details = [[TCDetailViewController alloc]init];
    NSDictionary *detailsDictionary = self.arrayToView[indexPath.row];
    details.chosenDictionary = detailsDictionary;
    
    [self.navigationController pushViewController:details animated:YES];
    
}


@end
