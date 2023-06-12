//
//  Dog.m
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/12.
//

#import "Dog.h"
@implementation Dog
-(void)setAge:(int)a
{
    age=a;
}
-(int)getAge{
    return age;
}
-(void)Show
{
    NSLog(@"%d\n", age);
}
@end
