//
//  FKSingleton.m
//  单例模式
//
//  Created by 多比 on 2024/5/17.
//

#import "FKSingleton.h"

@implementation FKSingleton
static id instance = nil;
+ (id)instance {
    if(!instance) {
        instance = [[super alloc] init];
    }
    return instance;
}

@end
