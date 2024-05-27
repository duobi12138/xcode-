//
//  NSObject+Eatable.h
//  使用类别实现非正式协议
//
//  Created by 多比 on 2024/5/7.
//

#import <Foundation/Foundation.h>
 
NS_ASSUME_NONNULL_BEGIN
 
//以NSObject为基础定义EaTable类别
@interface NSObject (EaTable)
- (void) taste;
 
@end
 
NS_ASSUME_NONNULL_END
