//
//  main.m
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/12.
//

#import <Foundation/Foundation.h>
#import <ObjectiveSugar/ObjectiveSugar.h>
#import "Dog.h"
#import "Ch2.h"
#import "Ch3.h"
#import "Ch4.h"

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

        // 아래에 있는 문자열 처럼 %[데이터 형를 나타내는 문자]을 포함한 문자열을 "형식 문자열" 이라고 부른다.
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
        [dogList eachWithIndex:^(Dog *dog, NSUInteger index){
            if(index + 1 == dogList.count)
            {
                NSLog(@"%@의 나이는 %d\n", dog.name, dog.age);
            } else
            {
                NSLog(@"%@의 나이는 %d", dog.name, dog.age);
            }
        }];
        
        Ch2* ch2 = [[Ch2 alloc] init];
        [ch2 display];
        
        // 자료형 정리
        NSLog(@"Objective-C 에서 @는 주로 NSString 객체를 의미한다.");
        
        // Ch3
        Fraction *fraction = [Fraction new]; // alloc과 init을 한번에 하기
        [fraction setNumerator: 1];
        [fraction setDenominator: 3];
        [fraction print];
        NSLog(@"%i/%i", [fraction numerator], [fraction denominator]);
        
        // Ch4
        // 기본 자료형
        int number = 100;
        float floatingNumber = 1.01;
        double doubleNumber = 1.00e+11;
        char charactor = 'W';
        char specialCharactor = '\n';
        NSLog(@"%i %f %e %c %c", number, floatingNumber, doubleNumber, charactor, specialCharactor); // Objective-C에서 특수문자(\n)는 char 타입으로 컴파일러가 처리해준다. 아스키코드라서 그런 듯
        
        // 자료형의 수식어
        long int bigNumber;
        short int smallNumber;
        long double bigDoubleNumber;
        // short double / double 앞에는 short 수식어 붙일 수 없다.
        unsigned int positiveNumber;
        
        // id 자료형 / 다형성, 동적 타이핑, 동적 바인딩을 다룰 때 꼭 필요한 자료형이다.
        // 뒤에서 다룬다.
        
        // 형변환
        int n1 = 10;
        float f1 = n1 / 3;          // 3.0000
        float f2 = (float)n1 / 3;   // 3.3333
        NSLog(@"%f", f1);
        NSLog(@"%f", f2);
        
        // 사용해보자
        Calculator *calculator = [Calculator new];
        [calculator add:10];
        [calculator subtract:2];
        [calculator divide:2];
        [calculator multiply:0];
        NSLog(@"결과값 = %f", [calculator accumulator]);
    }
    return 0;
}
