//
//  GameModel.h
//  LHL-TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-05-09.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"

@interface GameModel : NSObject

// props:
// player 1
// player 2
@property (nonatomic) Player *player1;
@property (nonatomic) Player *player2;

@property (nonatomic) int number1;
@property (nonatomic) int number2;
@property (nonatomic) int answer;
@property (nonatomic) Player *currentPlayer;

-(void)loseOneLife;
-(void) changeCurrentPlayer;

@end
