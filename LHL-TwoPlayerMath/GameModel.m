//
//  GameModel.m
//  LHL-TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-05-09.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "GameModel.h"
#import "Player.h"
#import "ViewController.h"
@class Player;

@implementation GameModel

// init method
// creates player 1 and player 2 instances, stores in player1 and player2 properties
//- (instancetype)init
//{
//    self = [super init];
//    if (self) {
//        self.player1 = [[Player alloc] init];
//        self.player2 = [[Player alloc] init];
//    }
//    return self;
//}


// make connection with GameModel to ViewController
- (instancetype)init
{
    self = [super init];
    if (self) {
        self.player1 = [[Player alloc] initWithName:@"player1"];
        self.player2 = [[Player alloc] initWithName:@"player2"];

        self.number1 = arc4random_uniform(20);
        self.number2 = arc4random_uniform(20);
        self.answer = self.number1 + self.number2;
        self.currentPlayer = self.player1;
        
    
    }
    return self;
}
// swithing currentplayer
-(void) changeCurrentPlayer {
    
    // every time change the player, get the random number
    self.number1 = arc4random_uniform(20);
    self.number2 = arc4random_uniform(20);

    
    if (self.currentPlayer == self.player1) {
        self.currentPlayer = self.player2;
    }else {
        self.currentPlayer = self.player1;
    }
}

//int number1 = arc4random_uniform(20) ;
//int number2 = arc4random_uniform (20);


//-(void) setPlayer1:(NSInteger)player1 {
//    self.player1 = [[Player alloc] init];
//}
//-(void) setPlayer2:(NSInteger)player2 {
//    self.player2 = [[Player alloc] init];
//}



// make func for loosing a life
-(void)loseOneLife {
//    self.player1.lives = self.player1.lives - 1;
    
//    Player.lives = Player.lives - 1;
//    NSString *currentLives =
}


@end
