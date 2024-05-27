//
//  NSNumber+fk.h
//  用类别为已有类添加新方法
//
//  Created by 多比 on 2024/5/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//定义一个类别
@interface NSNumber (fk)
//在类别中定义4个方法
- (NSNumber*) jia: (double) num2;
- (NSNumber*) jian: (double) num2;
- (NSNumber*) cheng: (double) num2;
- (NSNumber*) chu: (double) num2;
@end

NS_ASSUME_NONNULL_END
