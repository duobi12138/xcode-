//
//  main.m
//  模拟类变量
//
//  Created by 多比 on 2024/5/15.
//

#import <Foundation/Foundation.h>
#import "FKUser.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        [FKUser setNation:@"中国"];
        NSLog(@"FKUser的nation类变量是：%@", [FKUser nation]);
    }
    return 0;
}
