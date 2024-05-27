//
//  main.m
//  在自定义类里调用copy方法和mutableCopy方法
//
//  Created by 多比 on 2024/5/10.
//

#import <Foundation/Foundation.h>
#import "FKGame.h"
 
int main(int argc, const char * argv[]) 
{
    @autoreleasepool {
        //创建一个dog1对象
        FKGame* game1 = [FKGame new];
        game1.name = [NSMutableString stringWithString:@"原神"];
        game1.age = 4;
        //复制副本（不添加对应协议这里会报错）
        FKGame* game2 = [game1 copy];
        game2.name = [NSMutableString stringWithString:@"崩铁"];
        game2.age = 3;
        NSLog(@"game1的名字是：%@，已经发布了 %d 年了", game1.name, game1.age);
        NSLog(@"game2的名字是：%@，已经发布了 %d 年了", game2.name, game2.age);
    }
    return 0;
}
