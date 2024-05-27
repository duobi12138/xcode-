//
//  main.m
//  @package控制符
//
//  Created by 多比 on 2024/5/16.
//

#import <Foundation/Foundation.h>
#import "FKApple.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKApple* apple = [[FKApple alloc] init];
        apple->_weight = 43.99;
        NSLog(@"apple的重量为：%g", apple->_weight);
    }
    return 0;
}
