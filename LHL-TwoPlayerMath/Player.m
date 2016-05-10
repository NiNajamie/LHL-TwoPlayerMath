//
//  Player.m
//  LHL-TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-05-09.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "Player.h"

@implementation Player

// Set player's  lives 3 by default 
- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        self.lives = 3;
        self.name = name;
    }
    return self;
}


@end
