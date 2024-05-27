//
//  main.m
//  NSString的三种实现方式
//
//  Created by 多比 on 2024/5/26.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* str1 = @"wakuwaku!";
        NSString* str2 = @"spyFamily!";
        NSString* str3 = [NSString stringWithString:@"wakuwaku!spyFamily!"];
        NSString* str4 = [NSString stringWithFormat:@"wakuwaku!spyFamily!"];
        NSString* str5 = [NSString stringWithFormat:@"spy"];
        NSString* str6 = [NSString stringWithFormat:@"间谍过家家"];
        NSString* str7 = [NSString stringWithFormat:@"间谍"];
        
        NSLog(@"str1:%p, %@, %lu", str1, [str1 class], [str1 retainCount]);
        NSLog(@"str2:%p, %@, %lu", str2, [str2 class], [str2 retainCount]);
        NSLog(@"str3:%p, %@, %lu", str3, [str3 class], [str3 retainCount]);
        NSLog(@"str4:%p, %@, %lu", str4, [str4 class], [str4 retainCount]);
        NSLog(@"str5:%p, %@, %lu", str5, [str5 class], [str5 retainCount]);
        NSLog(@"str6:%p, %@, %lu", str6, [str6 class], [str6 retainCount]);
        NSLog(@"str7:%p, %@, %lu", str7, [str7 class], [str7 retainCount]);
    }
    return 0;
}
