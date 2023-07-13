//
//  Ch7.m
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/07/12.
//

#import "Ch7.h"

@implementation Printer
- (void)print {
    NSLog(@"페이지 인쇄");
//    다양한 형태로 써보자.
//    _pageCount = _pageCount + 1;
    self.pageCount = self.pageCount + 1;
}

- (void)showPrintCount {
    static int callCount = 0;   // 모든 인스턴스에서 동일한 변수를 공유하여 사용함. // 외부에서 접근 불가능
    callCount = callCount + 1;
    NSLog(@"프린트 횟수: %d", _pageCount);
    NSLog(@"showPrintCount 호출 횟수: %d", callCount);
}

@end
