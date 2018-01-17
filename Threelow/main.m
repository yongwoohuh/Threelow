//
//  main.m
//  Threelow
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        BOOL gameOn = YES;
        Dice *dice1 = [[Dice alloc] init];
        Dice *dice2 = [[Dice alloc] init];
        Dice *dice3 = [[Dice alloc] init];
        Dice *dice4 = [[Dice alloc] init];
        Dice *dice5 = [[Dice alloc] init];
    
        while (gameOn)
        {
            NSLog(@"What would you like to do? roll - roll all 5 dice; quit - exit");
            NSString *userInput = [InputHandler getUserInput];
            
            if ([userInput isEqualToString:@"quit"]) {
                NSLog(@"Thank you for playing 😀");
                gameOn = NO;
                continue;
            }
            
            if ([userInput isEqualToString:@"roll"]) {
                NSLog(@"dice1 rolled: %@",[dice1 roll]);
                NSLog(@"dice2 rolled: %@",[dice2 roll]);
                NSLog(@"dice3 rolled: %@",[dice3 roll]);
                NSLog(@"dice4 rolled: %@",[dice4 roll]);
                NSLog(@"dice5 rolled: %@",[dice5 roll]);
            }
        }
        return 0;
    }
}
