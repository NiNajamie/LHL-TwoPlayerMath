//
//  Player.h
//  LHL-TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-05-09.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ViewController.h"

@interface Player : NSObject

@property (nonatomic) NSInteger lives;
@property (nonatomic)NSString *name;

- (instancetype)initWithName:(NSString *)name;

@end
