//
//  FKGame.m
//  在自定义类里调用copy方法和mutableCopy方法
//
//  Created by 多比 on 2024/5/10.
//

#import "FKGame.h"
 
@implementation FKGame
 
@synthesize name;
@synthesize age;
//在FKGame的实现部分增加copyWithZone:方法
- (id)copyWithZone:(NSZone *)zone {
    NSLog(@"--执行copyWithZone--");
    //使用zone参数创建FKDog对象
    FKGame* game = [[[self class] allocWithZone: zone] init];
    game.name = self.name;
    game.age = self.age;
    return game;
}
 
@end
