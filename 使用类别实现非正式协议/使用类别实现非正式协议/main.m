//
//  main.m
//  使用类别实现非正式协议
//
//  Created by 多比 on 2024/5/7.
//

#import <Foundation/Foundation.h>
#import "FKApple.h"

int main(int argc, const char * argv[]) 
{
    @autoreleasepool {
        FKApple* apple = [[FKApple alloc] init];
        [apple taste];
    }
    return 0;
}
