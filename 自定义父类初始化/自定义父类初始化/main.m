//
//  main.m
//  自定义父类初始化
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>
#import "HKSpy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HKSpy* a = [[HKSpy alloc] init];
        NSLog(@"a的comic属性是：%@，name属性是：%@，age属性是：%d", [a comic], [a name], [a age]);
        HKSpy* h = [[HKSpy alloc] init];
        h.name = @"黄昏";
        NSLog(@"h的comic属性是：%@，name属性是：%@，age属性是：%d", h.comic, h.name, h.age);
    }
    return 0;
}
