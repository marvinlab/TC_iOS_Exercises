//
//  TCAccelerometerViewController.m
//  Elements
//
//  Created by Marvin Labrador on 10/20/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import "TCAccelerometerViewController.h"

double currentMaxAccelX;
double currentMaxAccelY;
double currentMaxAccelZ;
double currentMaxRotX;
double currentMaxRotY;
double currentMaxRotZ;

@interface TCAccelerometerViewController ()

@property (nonatomic, retain) IBOutlet UIButton *resetBtn;
@property (nonatomic, retain) IBOutlet UILabel *acc_x;
@property (nonatomic, retain) IBOutlet UILabel *acc_y;
@property (nonatomic, retain) IBOutlet UILabel *acc_z;

@property (nonatomic, retain) IBOutlet UILabel *rot_x;
@property (nonatomic, retain) IBOutlet UILabel *rot_y;
@property (nonatomic, retain) IBOutlet UILabel *rot_z;

@property (nonatomic, retain) IBOutlet UILabel *macc_x;
@property (nonatomic, retain) IBOutlet UILabel *macc_y;
@property (nonatomic, retain) IBOutlet UILabel *macc_z;

@property (nonatomic, retain) IBOutlet UILabel *mrot_x;
@property (nonatomic, retain) IBOutlet UILabel *mrot_y;
@property (nonatomic, retain) IBOutlet UILabel *mrot_z;

-(IBAction)resetMaxValue:(id)sender;

@property (strong, nonatomic) CMMotionManager *motionManager;

@end

@implementation TCAccelerometerViewController

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
    
    currentMaxAccelX = 0;
    currentMaxAccelY = 0;
    currentMaxAccelZ = 0;
    
    currentMaxRotX = 0;
    currentMaxRotY = 0;
    currentMaxRotZ = 0;
    
    self.motionManager = [[CMMotionManager alloc] init];
    self.motionManager.accelerometerUpdateInterval = .2;
    self.motionManager.gyroUpdateInterval = .2;
 
    
    [self.motionManager startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue]
     
                                             withHandler:^(CMAccelerometerData  *accelerometerData, NSError *error) {
                                                 [self outputAccelertionData:accelerometerData.acceleration];
                                                 if(error){
                                                     NSLog(@"%@", error);
                                                 }
                                             }];
    
    [self.motionManager startGyroUpdatesToQueue:[NSOperationQueue currentQueue]
                                    withHandler:^(CMGyroData *gyroData, NSError *error) {
                                        [self outputRotationData:gyroData.rotationRate];
                                    }];
    
    NSString *mainTitle = @"Accelerometer View";
    self.title = mainTitle;
}


-(void)outputAccelertionData:(CMAcceleration)acceleration
{
    
    self.acc_x.text = [NSString stringWithFormat:@" %.2fg",acceleration.x];
    
    if (fabs(acceleration.x) > fabs(currentMaxAccelX)) {
        
        currentMaxAccelX = acceleration.x;
    }
    
    self.acc_y.text = [NSString stringWithFormat:@" %.2fg",acceleration.y];
    
    if (fabs(acceleration.y) > fabs(currentMaxAccelY)) {
        
        currentMaxAccelY = acceleration.y;
    }
    
    self.acc_z.text = [NSString stringWithFormat:@" %.2fg",acceleration.z];
    
    if (fabs(acceleration.z) > fabs(currentMaxAccelZ)) {
        
        currentMaxAccelZ = acceleration.z;
    }
    
    
    
    self.macc_x.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelX];
    self.macc_y.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelY];
    self.macc_z.text = [NSString stringWithFormat:@" %.2f",currentMaxAccelZ];
    
}
-(void)outputRotationData:(CMRotationRate)rotation
{
    
    self.rot_x.text = [NSString stringWithFormat:@" %.2fr/s",rotation.x];
    
    if (fabs(rotation.x) > fabs(currentMaxRotX)) {
        
        currentMaxRotX = rotation.x;
    }
    
    self.rot_y.text = [NSString stringWithFormat:@" %.2fr/s",rotation.y];
    
    if (fabs(rotation.y) > fabs(currentMaxRotY)) {
        
        currentMaxRotY = rotation.y;
    }
    
    self.rot_z.text = [NSString stringWithFormat:@" %.2fr/s",rotation.z];
    
    if (fabs(rotation.z) > fabs(currentMaxRotZ)) {
        
        currentMaxRotZ = rotation.z;
    }
    
    
    
    self.mrot_x.text = [NSString stringWithFormat:@" %.2f",currentMaxRotX];
    self.mrot_y.text = [NSString stringWithFormat:@" %.2f",currentMaxRotY];
    self.mrot_z.text = [NSString stringWithFormat:@" %.2f",currentMaxRotZ];
    
}

- (void)resetMaxValue:(id)sender
{
    currentMaxAccelX = 0;
    currentMaxAccelY = 0;
    currentMaxAccelZ = 0;
    
    
    
    currentMaxRotX = 0;
    currentMaxRotY = 0;    
    currentMaxRotZ = 0;
    
}

@end
