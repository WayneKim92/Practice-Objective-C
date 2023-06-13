//
//  main.m
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/12.
//

#import <Foundation/Foundation.h>
#import <ObjectiveSugar/ObjectiveSugar.h>
#import "Dog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Dog *nb=[[Dog alloc] initWithName:@"엔비"];
        Dog *db=[[Dog alloc] initWithName:@"도비"];

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

        // 함수형 프로그래밍 연산 스타일을 사용할 수 있는 ObjectiveSugar 라이브러리 이용해보자.
        // 1. pod init
        // 2. touch Podfile
        // 3. open -e Podfile
        // 4. 우리가 react-native에 수동으로 pod으로 라이브러리 받을때 명시하듯이 적는다.
        // 5. [프로젝트명].xcworkspace 프로젝트 열어서 코딩하자.
        //  CocoaPods를 사용하여 Xcode 프로젝트에서 종속성을 관리하면 Pods 프로젝트를 포함하는 별도의 Xcode 작업공간이 생긴다.
        //  이 작업공간이 .xcworkspace 이다. .xcworkspace 프로젝트를 열면, 기존 프로젝트와 Pods 프로젝트를 함께 로드하고
        //  종속성을 적절하게 통합 및 연결한다.
        //  이제 Pods 프로젝트에 있는 라이브러리를 초기 생성했던 프로젝트에서 사용할 수 있게 된 것이다.

        [dogList map:^id(Dog *dog){
            dog.age = dog.age + 1;
            return dog;
        }];
        [dogList each:^(Dog *dog){
            NSLog(@"%@의 나이는 %d", dog.name, dog.age);
        }];

    }
    return 0;
}
