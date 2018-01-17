//
//  GameController.m
//  Threelow
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "GameController.h"

@implementation GameController

- (instancetype)init{
    self = [super init];
    if (self) {
        _throwResult = [@[] mutableCopy];
        _heldDice = [@[@"[]", @"[]", @"[]", @"[]", @"[]"] mutableCopy];
    }
    return self;
}

- (NSArray *)throwDice
{
    Dice *dice = [[Dice alloc]init];
    self.throwResult = [@[] mutableCopy];
    for (int i = 0; i < 5; i += 1) {
        if ([self.heldDice[i] isEqualToString:@"[]"]) {
            [dice roll];
            [self.throwResult addObject:dice.value];
        } else {
            [self.throwResult addObject:self.heldDice[i]];
        }
    }
    
    return self.throwResult;
}

- (NSArray *)holdDie:(NSInteger)diceIndex
{
    NSString *diceValue = @"";
    if ([self.heldDice[diceIndex] isEqualToString:@"[]"]) {
        diceValue = [NSString stringWithFormat:@"[%@]",
                               [self.throwResult objectAtIndex:diceIndex]];
    } else {
        diceValue = @"[]";
    }
    [self.heldDice replaceObjectAtIndex:diceIndex withObject:diceValue];
    return self.heldDice;
}

- (void)resetDice
{
    self.heldDice = [@[@"[]", @"[]", @"[]", @"[]", @"[]"] mutableCopy];
}

@end
