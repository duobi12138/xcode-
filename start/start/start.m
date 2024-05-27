//
//  start.m
//  start
//
//  Created by 多比 on 2024/4/23.
//
//.m文件实现声明的方法

#import "start.h"

@implementation start
{
    //定义了一个只能在实现部分使用的成员变量（被隐藏的成员变量，无法从外部访问）
    int _testAttr;
}
//定义了一个setName：andAge：方法
- (void) setName: (NSString*) n andAge:(int)a
{
    _name = n;
    _age = a;
}
//定义了一个say：方法
- (void) say: (NSString *) content
{
    NSLog(@"%@", content);
}
//定义了一个不带行参的info方法
- (NSString*) info
{
    [self test];
    return [NSString stringWithFormat:@"我是一个人，名字为%@，年龄为%d。" , _name , _age];
}
- (void) test
{
    NSLog(@"——只在实现部分定义的test方法——");
}
//定义了一个类方法
+ (void) foo
{
    NSLog(@"start类的类方法，通过类名调用");
}

@end
