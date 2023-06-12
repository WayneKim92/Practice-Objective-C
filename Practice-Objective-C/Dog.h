//
//  Dog.h
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/12.
//

#import <Foundation/Foundation.h>

@interface Dog : NSObject
{
    int age;
}
-(void)setAge:(int)a;
-(int)getAge;
-(void)Show;
@end
