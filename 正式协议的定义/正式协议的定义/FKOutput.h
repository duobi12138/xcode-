//
//  FKOutput.h
//  正式协议的定义
//
//  Created by 多比 on 2024/5/8.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

//定义协议
@protocol FKOutput
//定义协议的方法
- (void)output;
- (void)addData(String msg);

@end

NS_ASSUME_NONNULL_END

