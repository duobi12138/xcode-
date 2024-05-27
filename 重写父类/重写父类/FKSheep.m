//
//  FKSheep.m
//  重写父类
//
//  Created by 多比 on 2024/5/17.
//

#import "FKSheep.h"

@implementation FKSheep

- (void)eat
{
    NSLog(@"我爱吃青草蛋糕");
}
- (void)callOveredMethod
{
    [super eat];
}

@end
