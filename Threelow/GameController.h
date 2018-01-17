//
//  GameController.h
//  Threelow
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject

@property (nonatomic) NSMutableArray *throwResult;
@property (nonatomic) NSMutableArray *heldDice;

- (NSArray *)throwDice;
- (NSArray *)holdDie:(NSInteger)diceIndex;
- (void)resetDice;

@end
