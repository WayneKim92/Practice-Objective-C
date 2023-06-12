//
//  Dog.h
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/12.
//

#import <Foundation/Foundation.h>
#import "Runable.h"

@interface Dog : NSObject <Runable>
@property NSString *name;
@property int age;
-(instancetype)initWithName:(NSString *)name;
-(void)Show;
@end
