//
//  TCAudioViewController.m
//  ApplyingAudio
//
//  Created by Marvin Labrador on 10/15/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCAudioViewController.h"
#import "FLAnimatedImage.h"
#import "FLAnimatedImageView.h"

@import AVFoundation;

@interface TCAudioViewController ()
@property (weak, nonatomic) IBOutlet FLAnimatedImageView *imageDancer;
@property (weak, nonatomic) IBOutlet UIButton *playBtn;
@property (retain, nonatomic) AVAudioPlayer *backgroundMusic;
- (IBAction)playMusic:(id)sender;



@end

@implementation TCAudioViewController

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
    
    
    NSString *musicFilePath = [[NSBundle mainBundle]pathForResource:@"Classic" ofType:@"aifc"];
    NSURL *URLforMusicFile = [[NSURL alloc]initFileURLWithPath:musicFilePath];
    self.backgroundMusic = [[AVAudioPlayer alloc]initWithContentsOfURL:URLforMusicFile
                                                                  error:nil];
    
    
    [self.backgroundMusic prepareToPlay];
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)playMusic:(id)sender
{
    static int flag = 0;
    
    NSData *theGif = [[NSData alloc]initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"dance"  ofType:@"gif"]];
    FLAnimatedImage *dancer = [[FLAnimatedImage alloc]initWithAnimatedGIFData:theGif];
    
    if (flag == 0){
        
        self.imageDancer.animatedImage = dancer;
    
        [self.playBtn setTitle:@"STOP MUSIC" forState:UIControlStateNormal];
        [self.backgroundMusic play];
    
        flag = 1;
        
    } else {
        
        self.imageDancer.animatedImage = nil;
        [self.backgroundMusic stop];
        [self.playBtn setTitle:@"PLAY MUSIC" forState:UIControlStateNormal];
        
        flag = 0;
        
        
    }
    
}

@end