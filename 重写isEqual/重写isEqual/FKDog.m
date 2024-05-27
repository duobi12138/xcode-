//
//  FKDog.m
//  重写isEqual
//
//  Created by 多比 on 2024/5/6.
//

#import "FKDog.h"

@implementation FKDog

- (BOOL) isEqual:(id)other
{
    return TRUE;
    //不进行判断 直接返回YES（即导致FKDog对象与任何对象比较都相等 都会返回YES）
}
@end
