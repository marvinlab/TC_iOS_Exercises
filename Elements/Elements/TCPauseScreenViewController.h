//
//  TCPauseScreenViewController.h
//  UIElements
//
//  Created by Marvin Labrador on 10/17/14.
//  Copyright (c) 2014 Marvin Labrador. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol PauseScreenViewControllerDelegate <NSObject>
-(void)pauseGameDelegateMethod;
@end

@interface TCPauseScreenViewController : UIViewController
@property (weak, nonatomic) id <PauseScreenViewControllerDelegate> delegate;
@end
