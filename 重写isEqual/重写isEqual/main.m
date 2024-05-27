//
//  main.m
//  重写isEqual
//
//  Created by 多比 on 2024/5/6.
//

#import <Foundation/Foundation.h>
#import "FKDog.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKDog* p = [[FKDog alloc] init];
        NSLog(@"FKDog对象是否与NSString对象相等？%d", [p isEqual: [NSString stringWithFormat:@"hello"]]);
    }
    return 0;
}
