//
//  main.m
//  成员变量
//
//  Created by 多比 on 2024/5/15.
//

#import <Foundation/Foundation.h>
#import "FKPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKPerson* p = [[FKPerson alloc]init];
        NSLog(@"p变量的_name变量的值是：%@，p变量的_age变量的值是：%d", p->_name, p->_age);
        p->_name = @"艾尔海森";
        p->_age = 2000;
        NSLog(@"p变量的_name变量的值是：%@，p变量的_age变量的值是：%d", p->_name, p->_age);
    }
    return 0;
}
