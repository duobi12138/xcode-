//
//  main.m
//  用类别调用私有方法
//
//  Created by 多比 on 2024/5/7.
//

#import <Foundation/Foundation.h>
#import "FKItem.h"

//为FKItem定义一个类别
@interface FKItem (fk)
//在类别中前向声明calDiscoun:方法
- (double) calDiscount: (double) discount;
@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKItem* item = [[FKItem alloc] init];
        item.price = 100;
        [item info];
        NSLog(@"物品打折后的价格为：%g", [item calDiscount: 0.75]);
    }
    return 0;
}
