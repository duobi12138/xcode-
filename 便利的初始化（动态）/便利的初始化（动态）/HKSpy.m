//
//  HKSpy.m
//  便利的初始化（动态）
//
//  Created by 多比 on 2024/5/17.
//

#import "HKSpy.h"
#import "HKSpy.h"

@implementation HKSpy
@synthesize ID;
@synthesize name;
@synthesize age;
- (id)init{
    if(self = [super init]){
        self->ID = @"女儿";
        self->name = @"阿尼亚";
        self->age = 6;
    }
    return self;
}
- (id)initWithId:(NSString *)ID name:(NSString *)name
{
    if(self = [super init]){
        self->ID = ID;
        self->name = name;
        self->age = 30;
    }
    return self;
}
- (id)initWithName:(NSString *)name age:(int)age
{
    if(self = [super init]){
        self->ID = @"母亲";
        self->name = name;
        self->age = age;
    }
    return self;
}
@end
