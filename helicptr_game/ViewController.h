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

@interface ViewController : UIViewController

{
    IBOutlet UILabel *intro1;
    IBOutlet UILabel *intro2;
    IBOutlet UILabel *intro3;
    
    IBOutlet UIImageView *Heli;
    
    NSTimer *timer;
    
}

@end
