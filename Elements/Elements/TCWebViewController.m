//
//  TCWebViewController.m
//  Elements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCWebViewController.h"

@interface TCWebViewController () <NSURLConnectionDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *cyscoWebView;

@end

@implementation TCWebViewController
{
    
    
    
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
    void (^blockWebView)(void) =^{
        NSString *fullURL = [NSString stringWithFormat:@"http://cyscorpions.com/"];
        
        NSURL *cyscoURL = [NSURL URLWithString:fullURL];
        
        NSURLRequest *request = [NSURLRequest requestWithURL:cyscoURL];
        
        [_cyscoWebView loadRequest:request];
    };
    
    
    
    blockWebView();
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)connection:(NSURLConnection *)connection didFailWithError:(NSError *)error
{
    
    UIAlertView *errorConnection = [[UIAlertView alloc]initWithTitle:@"Connection Error" message:@"There seems to be a problem with your internet connection" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    
    [errorConnection show];
}

@end
