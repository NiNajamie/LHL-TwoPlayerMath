//
//  ViewController.m
//  LHL-TwoPlayerMath
//
//  Created by Asuka Nakagawa on 2016-05-09.
//  Copyright © 2016 Asuka Nakagawa. All rights reserved.
//

#import "ViewController.h"
#import "Player.h"
#import "GameModel.h"

@interface ViewController ()

@property (nonatomic) GameModel *gameModel;

// public
//@property (nonatomic) NSInteger player;

//    Player *player1 = [[Player alloc] init];

// make connection with scoreLabel/questionLabel
@property (weak, nonatomic) IBOutlet UILabel *player1ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *player2ScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property(nonatomic) NSMutableString *inputString ;


@end

@implementation ViewController

// get the player1/2 score to show on label
- (void) updateScoreLabel {
    self.player1ScoreLabel.text = [NSString stringWithFormat:@"Player1: %li", (long)self.gameModel.player1.lives];
    self.player2ScoreLabel.text = [NSString stringWithFormat:@"Player2: %li", (long)self.gameModel.player2.lives];
                                   
}

// make connection with action when the button pressed
- (IBAction)onePressed:(UIButton *)sender {
    [self.inputString appendString:@"1"];
}
- (IBAction)twoPressed:(UIButton *)sender {
    [self.inputString appendString:@"2"];

}
- (IBAction)threePressed:(UIButton *)sender {
    [self.inputString appendString:@"3"];

}
- (IBAction)fourPressed:(UIButton *)sender {
    [self.inputString appendString:@"4"];
}
- (IBAction)fivePressed:(UIButton *)sender {
    [self.inputString appendString:@"5"];
}
- (IBAction)sixPressed:(UIButton *)sender {
    [self.inputString appendString:@"6"];

}
- (IBAction)sevenPressed:(UIButton *)sender {
    [self.inputString appendString:@"7"];

}
- (IBAction)eightPressed:(UIButton *)sender {
    [self.inputString appendString:@"8"];

}
- (IBAction)ninePressed:(UIButton *)sender {
    [self.inputString appendString:@"9"];

}
- (IBAction)zeroPressed:(UIButton *)sender {
    [self.inputString appendString:@"0"];

}

- (IBAction)enterPresssed:(UIButton *)sender {
    
    // culculate what the answer is
    if (self.inputString.intValue != self.gameModel.answer) {
        
        // if wrong, decrement the lives
        self.gameModel.currentPlayer.lives -= 1;
    }
    // call the method
    [self updateScoreLabel];
    
    // if the player's lives zero, game's over
    if (self.gameModel.currentPlayer.lives <= 0) {
        self.questionLabel.text = @"Game over";
    } else {
        
    

    
    
    // ask the answer is correct or not
    
    
    // if answer is correct, swith the player
    [self.gameModel changeCurrentPlayer];
    
    //Change the text
    self.questionLabel.text = [NSString stringWithFormat:@"%@: %i + %i", self.gameModel.currentPlayer.name ,self.gameModel.number1, self.gameModel.number2];
    
    // display the live to see the player's lives
    
    }
    
    
    NSLog(@"%@" , self.inputString);
    
}


- (void)viewDidLoad {
    [super viewDidLoad];

    self.gameModel = [[GameModel alloc] init];
    self.inputString = [[NSMutableString alloc] init];
    [self updateScoreLabel];

//    int number1 = arc4random_uniform(20) ;
//    int number2 = arc4random_uniform (20);
    
    self.questionLabel.text = [NSString stringWithFormat:@"%@: %i + %i ", self.gameModel.currentPlayer.name ,self.gameModel.number1, self.gameModel.number2];
    
    
    
//    self.gameModel.player1
    
//    player1.lives -= 1;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
