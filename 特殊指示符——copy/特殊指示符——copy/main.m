//
//  main.m
//  特殊指示符——copy
//
//  Created by 多比 on 2024/5/16.
//

#import <Foundation/Foundation.h>
#import "MHYYuanShen.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        MHYYuanShen* game = [[MHYYuanShen alloc] init];
        NSMutableString* str = [NSMutableString stringWithString:@"原神"];
        [game setName:str];
        NSLog(@"game的name属性是：%@", [game name]);
        [str appendString:@"启动！"];
        NSLog(@"game的name属性是：%@", [game name]);
        MHYYuanShen* game2 = [[MHYYuanShen alloc] init];
        [game2 setName:str];
        NSLog(@"game2的name属性是：%@", [game2 name]);
    }
    return 0;
}
