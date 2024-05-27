//
//  FKItem.m
//  用类别调用私有方法
//
//  Created by 多比 on 2024/5/7.
//

#import "FKItem.h"

@implementation FKItem

@synthesize price;
//实现接口部分定义的方法
- (void) info
{
    NSLog(@"这是最开始的info方法");
}
//额外新增的方法（即私有方法）
- (double) calDiscount: (double) discount
{
    return self.price * discount;
}

@end
