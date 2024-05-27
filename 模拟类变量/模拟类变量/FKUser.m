//
//  FKUser.m
//  模拟类变量
//
//  Created by 多比 on 2024/5/15.
//

#import "FKUser.h"

static NSString* nation = nil;
@implementation FKUser
+ (NSString *)nation{
    return nation;
}
+ (void)setNation:(NSString *)newNation{
    if(![nation isEqualToString:newNation])
    {
        nation = newNation;
    }
}

@end
