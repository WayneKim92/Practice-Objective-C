//
//  Ch3.m
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/21.
//

#import "Ch3.h"

// @(=at sign, 골뱅이)가 붙는 것이 아주 보기 싫게 생겼다. 더 잘 기억나겠다.
@implementation Fraction
{
    int numerator;
    int denominator;
}
-(void) print
{
    NSLog(@"%i/%d", numerator, denominator);
}

-(void) setNumerator:(int)n
{
    numerator = n;
}

-(void) setDenominator:(int)d
{
    denominator = d;
}

// 메서드의 이름과 인스턴스 변수의 이름이 동일하다. 처음에는 이상해보이지만 이렇게 해도 문제가 없다. 오히려 Objective-C에서는 널리 사용되는 방식이다.
-(int) numerator
{
    return numerator;
}
-(int) denominator
{   return denominator;
    
}

@end
