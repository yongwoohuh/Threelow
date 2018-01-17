//
//  Dice.m
//  Threelow
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _diceValues = @[@"Ⅰ", @"Ⅱ", @"Ⅲ", @"Ⅳ", @"Ⅴ", @"Ⅵ"];
    }
    return self;
}

- (NSString *)roll
{
    int randomRoll = arc4random_uniform(6);
    return [self.diceValues objectAtIndex:randomRoll];
}
@end
