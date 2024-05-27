//
//  main.m
//  NSString
//
//  Created by 多比 on 2024/5/8.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) 
{
    @autoreleasepool {
        UniChar data[6] = {65, 98, 66, 100, 101, 102};
        //使用Unicode数值初始化字符串
        NSString* str1 = [[NSString alloc]initWithCharacters:data length:6];
        NSLog(@"%@", str1);
        char* cstr = "hi,karry Wang!";
        //将C风格的字符串转换为NSString对象
        NSString* str2 = [NSString stringWithUTF8String:cstr];
        NSLog(@"%@", str2);
        //将字符串写入指定文件
        [str2 writeToFile:@"myFile.txt" atomically:YES encoding:NSUTF8StringEncoding error:nil];
        //读取文件内容，用文件内容初始化字符串
        NSString* str3 = [NSString stringWithContentsOfFile:@"myFile.txt" encoding:NSUTF8StringEncoding error:nil];
        NSLog(@"%@", str3);
        //读取文件内容，用文件内容初始化字符串
        NSString* str4 = [NSString stringWithContentsOfFile:@"NSString.m" encoding:NSUTF8StringEncoding error:nil];
        //因为只能读取文本文件，所以这里的输出应该是null
        NSLog(@"%@", str4);
    }
    return 0;
}
