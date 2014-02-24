//
//  ViewController.m
//  helicptr_game
//
//  Created by Epic.deep on 2/24/14.
//  Copyright (c) 2014 deepsaran. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)HeliMove{
    
    Heli.center = CGPointMake(Heli.center.x, Heli.center.y + Y);
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
 
    if (Start == YES) {
        intro1.hidden = YES;
        intro2.hidden = YES;
        intro3.hidden = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(HeliMove) userInfo:Nil repeats:YES];
        
        Start = NO;
    }
    
    Y = -7;
    Heli.image = [UIImage imageNamed:@"heliUp.png"];
    
}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    
    Y = 7;
    Heli.image = [UIImage imageNamed:@"heliDown.png"];

    
}

- (void)viewDidLoad
{
    Start = YES;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
