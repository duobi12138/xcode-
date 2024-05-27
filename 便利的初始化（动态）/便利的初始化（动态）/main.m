//
//  main.m
//  便利的初始化（动态）
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>
#import "HKSpy.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        HKSpy* a = [[HKSpy alloc] init];
        HKSpy* h = [[HKSpy alloc] initWithId:@"父亲" name:@"黄昏"];
        HKSpy* y = [[HKSpy alloc] initWithName:@"约尔" age:23];
        NSLog(@"a的ID属性是%@，name属性是：%@，age属性是：%d", a.ID, a.name, a.age);
        NSLog(@"h的ID属性是%@，name属性是：%@，age属性是：%d", h.ID, h.name, h.age);
        NSLog(@"y的ID属性是%@，name属性是：%@，age属性是：%d", y.ID, y.name, y.age);
    }
    return 0;
}
