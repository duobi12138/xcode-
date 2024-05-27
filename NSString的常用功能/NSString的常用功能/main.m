//
//  main.m
//  NSString的常用功能
//
//  Created by 多比 on 2024/5/8.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) 
{
    @autoreleasepool {
        NSString* str = @"wonderful!";
        NSString* comic = @"《间谍过家家》";
        //在str后面追加笃定的字符串
        //原来的字符串对象并不改变，只是将新生成的字符串重新赋给str指针变量
        str = [str stringByAppendingString:@"spyFamily"];
        NSLog(@"%@", str);
        //获取字符串对应的C风格字符串
        const char* str1 = [str UTF8String];
        NSLog(@"获取的C字符串：%s", str1);
        //在str后面追加带变量的字符串
        //原来的字符串对象并不改变，只是将新生成的字符串重新赋给str指针变量
        str = [str stringByAppendingFormat:@"%@是一部灰常好看的合家欢治愈搞笑番。", comic];
        NSLog(@"%@", str);
        NSLog(@"str的字符个数为：%lu", [str length]);
        NSLog(@"str按UTF-8字符集解码后字节数为：%lu", [str lengthOfBytesUsingEncoding:NSUTF8StringEncoding]);
        //获取str的前10个字符组成的字符串
        NSString* s1 = [str substringToIndex:10];
        NSLog(@"%@", s1);
        //获取str从第10个字符之后开始，与后面字符组成的字符串
        NSString* s2 = [str substringFromIndex:10];
        NSLog(@"%@", s2);
        //获取str从第10个字符之后开始，到以第10个字符为开始的第16个字符组成的字符串
        NSString* s3 = [str substringWithRange:NSMakeRange(10, 16)];
        NSLog(@"%@", s3);
        //获取《间谍过家家》在str中出现的位置
        NSRange location = [str rangeOfString:@"《间谍过家家》"];
        NSLog(@"《间谍过家家》在str中出现的开始位置：%ld，长度为：%ld", location.location, location.length);
        //将str的所有字符转为大写
        NSString* str4 = [str uppercaseString];
        NSLog(@"%@", str4);
    }
    return 0;
}
