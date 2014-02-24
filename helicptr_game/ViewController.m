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
    
    Obsctacle1.center = CGPointMake(Obsctacle1.center.x - 10, Obsctacle1.center.y);
    Obsctacle2.center = CGPointMake(Obsctacle2.center.x - 10, Obsctacle2.center.y);
    
    Bottom1.center = CGPointMake(Bottom1.center.x - 10, Bottom1.center.y);
    Bottom2.center = CGPointMake(Bottom2.center.x - 10, Bottom2.center.y);
    Bottom3.center = CGPointMake(Bottom3.center.x - 10, Bottom3.center.y);
    Bottom4.center = CGPointMake(Bottom4.center.x - 10, Bottom4.center.y);
    Bottom5.center = CGPointMake(Bottom5.center.x - 10, Bottom5.center.y);
    Bottom6.center = CGPointMake(Bottom6.center.x - 10, Bottom6.center.y);
    Bottom7.center = CGPointMake(Bottom7.center.x - 10, Bottom7.center.y);
    
    Top1.center = CGPointMake(Top1.center.x + 10, Top1.center.y);
    Top2.center = CGPointMake(Top2.center.x + 10, Top2.center.y);
    Top3.center = CGPointMake(Top3.center.x + 10, Top3.center.y);
    Top4.center = CGPointMake(Top4.center.x + 10, Top4.center.y);
    Top5.center = CGPointMake(Top5.center.x + 10, Top5.center.y);
    Top6.center = CGPointMake(Top6.center.x + 10, Top6.center.y);
    Top7.center = CGPointMake(Top7.center.x + 10, Top7.center.y);
    
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
 
    if (Start == YES) {
        intro1.hidden = YES;
        intro2.hidden = YES;
        intro3.hidden = YES;
        
        timer = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(HeliMove) userInfo:Nil repeats:YES];
        
        Start = NO;
        
        Bottom1.hidden = NO;
        Bottom2.hidden = NO;
        Bottom3.hidden = NO;
        Bottom4.hidden = NO;
        Bottom5.hidden = NO;
        Bottom6.hidden = NO;
        Bottom7.hidden = NO;
        
        Top1.hidden = NO;
        Top2.hidden = NO;
        Top3.hidden = NO;
        Top4.hidden = NO;
        Top5.hidden = NO;
        Top6.hidden = NO;
        Top7.hidden = NO;
        
        Obsctacle1.hidden = NO;
        Obsctacle2.hidden = NO;

        RandomPosition = arc4random() %75;
        RandomPosition = RandomPosition + 110;
        Obsctacle1.center = CGPointMake(570, RandomPosition);
 
        RandomPosition = arc4random() %75;
        RandomPosition = RandomPosition + 110;
        Obsctacle2.center = CGPointMake(855, RandomPosition);
        
        RandomPosition = arc4random() %55;
        Top1.center = CGPointMake(560, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom1.center = CGPointMake(560, RandomPosition);
        
        RandomPosition = arc4random() %55;
        Top2.center = CGPointMake(640, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom2.center = CGPointMake(640, RandomPosition);
        
        RandomPosition = arc4random() %55;
        Top3.center = CGPointMake(720, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom3.center = CGPointMake(720, RandomPosition);
        
        RandomPosition = arc4random() %55;
        Top4.center = CGPointMake(800, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom4.center = CGPointMake(800, RandomPosition);

        RandomPosition = arc4random() %55;
        Top5.center = CGPointMake(880, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom5.center = CGPointMake(880, RandomPosition);
        
        RandomPosition = arc4random() %55;
        Top6.center = CGPointMake(960, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom6.center = CGPointMake(960, RandomPosition);
        
        RandomPosition = arc4random() %55;
        Top7.center = CGPointMake(1040, RandomPosition);
        RandomPosition = RandomPosition + 265;
        Bottom7.center = CGPointMake(1040, RandomPosition);
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
    Bottom1.hidden = YES;
    Bottom2.hidden = YES;
    Bottom3.hidden = YES;
    Bottom4.hidden = YES;
    Bottom5.hidden = YES;
    Bottom6.hidden = YES;
    Bottom7.hidden = YES;
    
    Top1.hidden = YES;
    Top2.hidden = YES;
    Top3.hidden = YES;
    Top4.hidden = YES;
    Top5.hidden = YES;
    Top6.hidden = YES;
    Top7.hidden = YES;
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
