//
//  main.m
//  Threelow
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        GameController *gameController = [[GameController alloc] init];
        
        while (gameOn)
        {
            NSLog(@"What would you like to do? roll - roll all dices | hold # - hold dice with # index | reset - reset all dice | score - show score | quit - exit");
            NSString *userInput = [InputHandler getUserInput];
            
            if ([userInput isEqualToString:@"quit"]) {
                NSLog(@"Thank you for playing 😀");
                gameOn = NO;
                continue;
            }
            
            if ([userInput isEqualToString:@"roll"]) {
                [gameController throwDice];
                
                for (int i = 0; i < 5; i += 1) {
                    NSLog(@"#%d dice: %@", i + 1, gameController.throwResult[i]);
                }
                continue;
            }
            if ([userInput isEqualToString:@"reset"]) {
                [gameController resetDice];
                for (Dice * dice in gameController.heldDice) {
                    NSLog(@" %lu dice held: %@", [gameController.heldDice indexOfObject:dice] + 1, dice);
                }
                continue;
            }

//            if ([userInput isEqualToString:@"score"]) {
//
//             continue;
//            }

            if ([userInput containsString:@"hold"]) {
                NSArray *inputParse = [userInput componentsSeparatedByString:@" "];
                if ([inputParse count] != 2) {
                    NSLog(@"Invaild input");
                } else {
                    [gameController holdDie:[inputParse[1] integerValue] - 1];
                    for (Dice * dice in gameController.heldDice) {
                        NSLog(@" %lu dice held: %@", [gameController.heldDice indexOfObject:dice] + 1, dice);
                    }
                }
            }
            continue;
        }
        
        
    }
    return 0;
}
