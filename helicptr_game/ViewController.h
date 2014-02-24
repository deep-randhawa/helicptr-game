//
//  ViewController.h
//  helicptr_game
//
//  Created by Epic.deep on 2/24/14.
//  Copyright (c) 2014 deepsaran. All rights reserved.
//

#import <UIKit/UIKit.h>

int Y;
BOOL Start;
int RandomPosition;

@interface ViewController : UIViewController

{
    IBOutlet UILabel *intro1;
    IBOutlet UILabel *intro2;
    IBOutlet UILabel *intro3;
    
    IBOutlet UIImageView *Heli;
    
    IBOutlet UIImageView *Obsctacle1;
    IBOutlet UIImageView *Obsctacle2;
    
    IBOutlet UIImageView *Bottom1;
    IBOutlet UIImageView *Bottom2;
    IBOutlet UIImageView *Bottom3;
    IBOutlet UIImageView *Bottom4;
    IBOutlet UIImageView *Bottom5;
    IBOutlet UIImageView *Bottom6;
    IBOutlet UIImageView *Bottom7;
    
    IBOutlet UIImageView *Top1;
    IBOutlet UIImageView *Top2;
    IBOutlet UIImageView *Top3;
    IBOutlet UIImageView *Top4;
    IBOutlet UIImageView *Top5;
    IBOutlet UIImageView *Top6;
    IBOutlet UIImageView *Top7;
    
    
    NSTimer *timer;
    
}

@end
