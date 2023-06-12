//
//  main.m
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/12.
//

#import <Foundation/Foundation.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *nb=[[Dog alloc] initWithName:@"엔비"];
        Dog *db=[[Dog alloc] initWithName:@"도비"];
        
        [nb setAge:2];
        NSLog(@"엔비의 나이는=%d",[nb age]);

        nb.age = 3;
        NSLog(@"엔비의 나이는=%d",nb.age);
        
        [nb Show];
        
        [nb walk];
        [db walk];
    }
    return 0;
}
