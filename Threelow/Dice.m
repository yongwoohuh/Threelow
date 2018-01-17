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
        _value = @"";
    }
    return self;
}

- (void)roll
{
    NSArray *diceFaces = @[@"Ⅰ", @"Ⅱ", @"Ⅲ", @"Ⅳ", @"Ⅴ", @"Ⅵ"];
    
   self.value = [diceFaces objectAtIndex:arc4random_uniform(6)];
}
@end
