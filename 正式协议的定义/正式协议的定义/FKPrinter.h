//
//  FKPrinter.h
//  正式协议的定义
//
//  Created by 多比 on 2024/5/8.
//

#import <Foundation/Foundation.h>
#import "FKOutput.h"
#import "FKProductable.h"
 
NS_ASSUME_NONNULL_BEGIN
 
//定义协议，继承了FKutput、FKProductable两个协议
@protocol FKPrintable <FKOutput, FKProductable>
//定义协议的方法
- (NSString*) printColor;
 
@end
 
NS_ASSUME_NONNULL_END
