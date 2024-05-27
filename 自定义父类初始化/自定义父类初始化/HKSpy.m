//
//  HKSpy.m
//  自定义父类初始化
//
//  Created by 多比 on 2024/5/17.
//

#import "HKSpy.h"

@implementation HKSpy
@synthesize comic;
@synthesize name;
@synthesize age;
- (id)init
{
    if(self = [super init]){
        self->comic = @"间谍过家家";
        self->name = @"阿尼亚";
        self->age = 6;
    }
    return self;
}

@end
