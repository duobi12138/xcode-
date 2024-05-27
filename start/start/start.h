//
//  start.h
//  start
//
//  Created by 多比 on 2024/4/23.
//
//.h文件只负责声明，不负责实现

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface start : NSObject
{
    //下面定义了两个成员变量
    NSString* _name;
    int _age;
}
//定义了一个setName：andAge：方法
- (void) setName:(NSString*) name andAge : (int) age;
//定义了一个say：方法，并不提供实现
- (void) say: (NSString *) content;
//定义了一个不带行参的info方法
- (NSString*) info;
//定义了一个类方法
+ (void) foo;
@end

NS_ASSUME_NONNULL_END
