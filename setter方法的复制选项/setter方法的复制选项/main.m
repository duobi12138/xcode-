//
//  main.m
//  setter方法的复制选项
//
//  Created by 多比 on 2024/5/12.
//

#import <Foundation/Foundation.h>
#import "FKItem.h"
 
int main(int argc, const char* argv[]) {
    @autoreleasepool {
        FKItem* item = [FKItem new];
        item.name = [NSMutableString stringWithString:@"疯狂iOS讲义"];
        [item.name appendString: @"fkit"];
    }
    return 0;
}
