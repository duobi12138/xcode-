//
//  main.m
//  NSMutableString
//
//  Created by 多比 on 2024/5/8.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* comic = @"《间谍过家家》";
        //创建一个NSMutableString对象
        NSMutableString* str = [NSMutableString stringWithString:@"wonderful!"];
        NSLog(@"%@", str);
        //追加固定字符串
        //字符串所包含的字符序列本身发生了改变，因此无需重新赋值
        [str appendString:@"哇酷哇酷！"];
        NSLog(@"%@", str);
        //追加带变量的字符串
        //字符串所包含的字符序列本身发生了改变，因此无需重新赋值
        [str appendFormat:@"%@是一部灰常好看的搞笑治愈番。", comic];
        NSLog(@"%@", str);
        //在指定位置插入字符串
        //字符串所包含的字符序列本身发生了改变，因此无需重新赋值
        [str insertString:@"spyFamily!" atIndex:10];
        NSLog(@"%@", str);
        //删除从位置19以后开始的13个字符（即到位置33之前的所有字符）
        [str deleteCharactersInRange:NSMakeRange(19, 13)]; //不含19和33
        NSLog(@"%@", str);
        //将从位置19以后开始的14个字符（即到位置33（包含33）的所有字符）替换为“快点出第三季！！！”
        [str replaceCharactersInRange:NSMakeRange(19, 14) withString:@"快点出第三季！！！"];
        NSLog(@"%@", str);
    }
    return 0;
}
