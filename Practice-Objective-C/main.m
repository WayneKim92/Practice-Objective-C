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
        
        // 요약하기
        NSMutableArray *dogList = [NSMutableArray array];
        [dogList addObject:nb];
        [dogList addObject:db];
        
        NSLog(@"우리집 강아지는 %lu마리", [dogList count]);
        
        // 음... 맵 함수 없는 거니?
        int totalAge = 0;
        for(Dog *dog in dogList){
            totalAge = totalAge + [dog age];
        }
        NSLog(@"우리집 강아지 평균 나이는 %f살", (float) totalAge / [dogList count]);
    }
    return 0;
}
