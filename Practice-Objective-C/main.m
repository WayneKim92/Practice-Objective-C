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
        Dog *nb=[[Dog alloc] init];
        
        [nb setAge:2];
        NSLog(@"엔비의 나이는=%d",[nb age]);

        [nb setAge:3];
        NSLog(@"엔비의 나이는=%d",[nb age]);
        
        [nb Show];
    }
    return 0;
}
