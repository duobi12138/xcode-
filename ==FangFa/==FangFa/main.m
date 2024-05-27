//
//  main.m
//  ==FangFa
//
//  Created by 多比 on 2024/5/5.
//

#import <Foundation/Foundation.h>
 
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        int it = 65;
        int fl = 65.0f;
        NSLog(@"65和65.0f是否相等？%d",(it == fl)); //结果为1 代表为真 两者相等
        
        char ch = 'A';
        NSLog(@"65和'A'是否相等？%d",(fl == ch)); //结果为1 代表为真 两者相等
        
        NSString* str1 = @"黄昏好帅";
        NSString* str2 = @"黄昏好帅";
        NSLog(@"%d",(str1 == str2)); //结果为1 代表为真 两者相等
        
        NSString* str3 = @"约尔战斗力爆表";
        NSLog(@"%d",(str2 == str3)); //结果为0 代表为假 两者不相等
        
        NSString* str4 = [NSString stringWithFormat:@"黄昏好帅"];
        NSLog(@"str1地址：%p, str4地址：%p", str1, str4);
        NSLog(@"%d",(str1 == str4)); //结果为0 代表为假 两者不相等
        
        NSString* str5 = [NSString stringWithFormat:@"黄昏好帅"];
        NSLog(@"%d",(str4 == str5)); //结果为0 代表为假 两者不相等
        
        NSString* str6 = [NSString stringWithFormat:@"hello"];
        NSString* str7 = [NSString stringWithFormat:@"hello"];
        NSLog(@"%d",(str6 == str7)); //结果为1 代表为真 两者相等
    }
    return 0;
}
