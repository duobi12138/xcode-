//
//  main.m
//  单例模式
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>
#import "FKSingleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"%d", [FKSingleton instance] == [FKSingleton instance]);
    }
    return 0;
}
