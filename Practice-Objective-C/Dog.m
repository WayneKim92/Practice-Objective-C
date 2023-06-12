//
//  Dog.m
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/12.
//

#import "Dog.h"
@implementation Dog
// 오브젝트-C에도 오버라이딩 개념은 있지만 init 메서드는 재정의 할 수 없음
// 그래서 아래 처럼 새로운 초기화 메소드를 새롭게 정의해야함
-(instancetype)initWithName:(NSString *)name
{
    self = [super init];
    // 문자열은 참조값이므로 값을 복사한 새로운 문자열을 만들어야지 각 인스턴스 마다 독립적으로 값을 유지 할 수 있음
    _name = [name copy];
    return self;
}
-(void)Show
{
    NSLog(@"%d\n", _age);
}
- (void)walk {
    NSLog(@"%@ Walking", _name);
}
// 채택한 Runable 프로토콜 중 옵션 메소드는 정의하지 않음
@end
