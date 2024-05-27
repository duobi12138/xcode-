//
//  main.m
//  自定义getter和setter方法
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>
#import "FKItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKItem* item = [[FKItem alloc] init];
        [item kuku:@"阿尼亚"];
        NSLog(@"item的name属性是：%@", [item wawa]);
    }
    return 0;
}
