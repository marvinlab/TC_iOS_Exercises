//
//  TCTableViewController.m
//  UITable_ApplyingOOP
//
//  Created by Marvin Labrador on 10/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCTableViewController.h"
#import "TCSuperHeroes.h"

@interface TCTableViewController () <UITableViewDataSource, UITableViewDelegate>



@end

@implementation TCTableViewController
{
    
//    NSArray *tableData;
//    NSArray *thumbnails;

    NSArray *superHeroes;
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
    // Do any additional setup after loading the view from its nib.
    
//    tableData = [NSArray arrayWithObjects: @"The Flash", @"Aquaman", @"Superman", @"Batman" ,
//                                           @"Robin", @"Captain America", @"Green Lantern",
//                                           @"Thor", @"Spiderman", @"Ironman", @"Wolverine", nil];
//    
//    
//    thumbnails = [NSArray arrayWithObjects: @"The Flash", @"Aquaman", @"Superman", @"Batman" ,
//                                            @"Robin", @"Captain America", @"Green Lantern",
//                                            @"Thor", @"Spiderman", @"Ironman", @"Wolverine", nil];


    TCSuperHeroes *hero1 = [[TCSuperHeroes alloc]init];
    hero1.heroName = @"Batman";
    hero1.heroThumbnail = @"Batman";
    
    TCSuperHeroes *hero2 = [[TCSuperHeroes alloc]init];
    hero2.heroName = @"Aquaman";
    hero2.heroThumbnail = @"Aquaman";
    
    TCSuperHeroes *hero3 = [[TCSuperHeroes alloc]init];
    hero3.heroName = @"Captain America";
    hero3.heroThumbnail = @"Captain America";
    
    TCSuperHeroes *hero4 = [[TCSuperHeroes alloc]init];
    hero4.heroName = @"The Flash";
    hero4.heroThumbnail = @"The Flash";
    
    TCSuperHeroes *hero5 = [[TCSuperHeroes alloc]init];
    hero5.heroName = @"Green Lantern";
    hero5.heroThumbnail = @"Green Lantern";
    
    TCSuperHeroes *hero6 = [[TCSuperHeroes alloc]init];
    hero6.heroName = @"Ironman";
    hero6.heroThumbnail =@"Ironman";
    
    TCSuperHeroes *hero7 = [[TCSuperHeroes alloc]init];
    hero7.heroName = @"Robin";
    hero7.heroThumbnail = @"Robin";
    
    TCSuperHeroes *hero8 = [[TCSuperHeroes alloc]init];
    hero8.heroName = @"Spiderman";
    hero8.heroThumbnail = @"Spiderman";
    
    TCSuperHeroes *hero9 = [[TCSuperHeroes alloc]init];
    hero9.heroName = @"Superman";
    hero9.heroThumbnail = @"Superman";
    
    TCSuperHeroes *hero10 = [[TCSuperHeroes alloc]init];
    hero10.heroName = @"Thor";
    hero10.heroThumbnail = @"Thor";
    
    TCSuperHeroes *hero11 = [[TCSuperHeroes alloc]init];
    hero11.heroName = @"Wolverine";
    hero11.heroThumbnail = @"Wolverine";
    
    
    superHeroes = [[NSArray alloc] initWithObjects: hero1, hero2, hero3, hero4, hero5, hero6,
                                                           hero7, hero8, hero9, hero10, hero11, nil];



}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [superHeroes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    
    static NSString *simpleCellIdentifier = @"Simple Table Item";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleCellIdentifier];
    
    if (!cell) {
        
        cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault
                                     reuseIdentifier:simpleCellIdentifier];
    }
    
//    cell.textLabel.text = [superHeroes objectAtIndex:indexPath.row];
//    cell.imageView.image = [UIImage imageNamed:[thumbnails objectAtIndex:indexPath.row]];
    
    TCSuperHeroes *superHero = [superHeroes objectAtIndex:indexPath.row];
    cell.textLabel.text = superHero.heroName;
    cell.imageView.image = [UIImage imageNamed:superHero.heroThumbnail];
    
    
    
    return cell;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 100;
    
}
    

@end
