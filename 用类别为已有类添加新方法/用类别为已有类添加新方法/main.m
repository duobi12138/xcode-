//
//  main.m
//  用类别为已有类添加新方法
//
//  Created by 多比 on 2024/5/6.
//

#import <Foundation/Foundation.h>
#import "NSNumber+fk.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber* a = [NSNumber numberWithInt: 3];
        //测试jia:方法
        NSNumber* jia = [a jia: 3.15];
        NSLog(@"%@", jia);
        //测试jian:方法
        NSNumber* jian = [a jian: 1.11];
        NSLog(@"%@", jian);
        //测试cheng:方法
        NSNumber* cheng = [a cheng: 1.11];
        NSLog(@"%@", cheng);
        //测试chu:方法
        NSNumber* chu = [a chu: 2.0];
        NSLog(@"%@", chu);
    }
    return 0;
}
