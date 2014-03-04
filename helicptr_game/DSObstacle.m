//
//  DSObstacle.m
//  helicptr_game
//
//  Created by Epic.deep on 3/4/14.
//  Copyright (c) 2014 deepsaran. All rights reserved.
//

#import "DSObstacle.h"

@implementation DSObstacle

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor=[UIColor greenColor];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

-(BOOL)isCollidWithFrame : (CGRect)frame{
    //checks if self.frame intersects with frame
    return NO;
}

@end
