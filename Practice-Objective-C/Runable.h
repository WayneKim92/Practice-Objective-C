//
//  Runable.h
//  Practice-Objective-C
//
//  Created by Wayne Kim on 2023/06/13.
//

#import <Foundation/Foundation.h>
@protocol Runable <NSObject>
@required
-(void) walk;
@optional
-(void) run;
@end
