//
//  main.m
//  浅复制
//
//  Created by 多比 on 2024/5/12.
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
        //修改game2的name属性
        [game2.name replaceCharactersInRange:NSMakeRange(0, 2) withString:@"崩铁"];
        //查看game1、game2的name属性
        NSLog(@"game1的name是：%@", game1.name);
        NSLog(@"game2的name是：%@", game2.name);
    }
    return 0;
}
