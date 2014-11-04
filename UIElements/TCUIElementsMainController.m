//
//  TCUIElementsMainController.m
//  UIElements
//
//  Created by Marvin Labrador on 10/16/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCUIElementsMainController.h"
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


@interface TCUIElementsMainController () <UITableViewDataSource, UITabBarDelegate>
@property (nonatomic, strong) NSMutableArray *allViews;
@property (nonatomic, strong) NSMutableArray *dictionariesOfAllViews;

@end



@implementation TCUIElementsMainController

- (id)init
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        
    }
    return self;
}

-(id)initWithStyle:(UITableViewStyle)style
{
    self = [super init];
    return self;
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"UITableViewCell"];
    
//    TCButtonViewController *tcButtons = [[TCButtonViewController alloc]init];
//    TCControlViewController *tcControls = [[TCControlViewController alloc]init];
//    TCTextViewController *tcTexts = [[TCTextViewController alloc]init];
//    TCPickersViewController *tcPickers = [[TCPickersViewController alloc]init];
//    TCImageViewController *tcImages = [[TCImageViewController alloc]init];
//    TCSegmentedViewController *tcSegments = [[TCSegmentedViewController alloc]init];
//    TCToolbarViewController *tcToolBar = [[TCToolbarViewController alloc]init];
//    TCTabBarController *tcTabBar = [[TCTabBarController alloc]init];
//    TCAlertViewController *tcAlert = [[TCAlertViewController alloc]init];
//    TCActionSheetViewController *tcActionSheet = [[TCActionSheetViewController alloc]init];
//    
//    
//    self.allViews = [[NSMutableArray alloc]initWithObjects:tcButtons, tcControls, tcTexts, tcPickers, tcImages,
//                     tcSegments, tcToolBar, tcTabBar, tcAlert, tcActionSheet, nil];
//    
//    self.dictionariesOfAllViews = [[NSMutableArray alloc]init];
//    
//    for (int i = 0; i < [self.allViews count]; i++){
//        [self.dictionariesOfAllViews addObject:[NSMutableDictionary
//                                                dictionaryWithObjectsAndKeys:NSStringFromClass([[self.allViews objectAtIndex:i] class]), @"title", nil]];
    
    
    self.allViews = [[NSMutableArray alloc]initWithObjects:[TCButtonViewController description],
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
    
    NSLog(@"%@",self.allViews);

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
    return [self.allViews count];
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell" forIndexPath:indexPath];
    
    cell.textLabel.text = self.allViews[indexPath.row];
    
    return cell;
}


//-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
//{
//    NSDictionary *dictionary = [self.dictionariesOfAllViews objectAtIndex:indexPath.row];
//    
//    // Do not use UIViewController class because it throws an exception
//    // Get the class of the selected cell and use that to load your next view controller
//    Class ClassPicker = NSClassFromString([NSString stringWithFormat:@"%@", [dictionary objectForKey:@"title"]]);
//    
//    id viewController  = [[ClassPicker alloc]
//                          initWithNibName:[NSString stringWithFormat:@"%@", [dictionary objectForKey:@"title"]] bundle:[NSBundle mainBundle]];
//    
//    [self.navigationController pushViewController:viewController animated:YES];
//}


@end
