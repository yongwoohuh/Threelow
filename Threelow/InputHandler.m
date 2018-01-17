//
//  InputHandler.m
//  Threelow
//
//  Created by Yongwoo Huh on 1/17/18.
//  Copyright © 2018 YongwooHuh. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+ (NSString *)getUserInput
{
    char inputCString[255];
    fgets(inputCString, 255, stdin);
    
    NSString *result = [NSString stringWithCString:inputCString
                                          encoding:NSUTF8StringEncoding];
    result = [result stringByTrimmingCharactersInSet:
              [NSCharacterSet whitespaceAndNewlineCharacterSet]];
    
    return result;
}
@end
