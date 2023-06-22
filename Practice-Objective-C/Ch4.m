//
//  Ch4.m
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/22.
//

#import "Ch4.h"

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void) add:(double)value
{
    accumulator = accumulator + value;
}

-(void) subtract:(double)value
{
    accumulator = accumulator - value;
}

-(void) multiply:(double)value
{
    accumulator = accumulator * value;
}

-(void) divide:(double)value
{
    accumulator = accumulator / value;
}

@end
