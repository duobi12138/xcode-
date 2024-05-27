//
//  FKItem.h
//  用类别调用私有方法
//
//  Created by 多比 on 2024/5/7.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FKItem : NSObject

@property (nonatomic, assign) double price;
- (void) info;

@end

NS_ASSUME_NONNULL_END
