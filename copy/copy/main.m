//
//  main.m
//  copy
//
//  Created by 多比 on 2024/5/10.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) 
{
    @autoreleasepool {
        NSMutableString* game = [NSMutableString stringWithString:@"原神启动!"];
        //复制game字符串的可变副本
        NSMutableString* gameCopy = [game mutableCopy];
        //修改副本，对原字符串没有任何影响
        [gameCopy replaceCharactersInRange:NSMakeRange(0, 2) withString:@"崩铁"];
        //此处可以看到原字符串的值并没有改变
        NSLog(@"game的值为 %@", game);
        //此处可以看到字符串副本发生了改变
        NSLog(@"gameCopy的值为 %@", gameCopy);
        NSString* str = @"艾尔海森";
        //复制str（不可变字符串）的可变副本
        NSMutableString* strCopy = [str mutableCopy];
        //向可变字符串后面追加字符串
        [strCopy appendString:@"是教令院的书记官。"];
        NSLog(@"strCopy的值为 %@", strCopy);
        //调用game（可变字符串）的copy方法，程序返回一个不可修改的副本
        NSMutableString* gameCopy2 = [game copy];
        //如果此时试图对gameCopy2进行修改操作（例如修改、添加等），编译时不会报错，但运行后代码就会出错
        //[gameCopy2 appendString:@"原神是一款探索冒险游戏"];
        //（运行后代码就会出错 笔者在这里直接就注释掉了）
    }
    return 0;
}
