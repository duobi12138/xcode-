//
//  Demand.h
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Demand <NSObject>

@required
- (void)calculate;
@optional
- (void)unnecessary;

@end

NS_ASSUME_NONNULL_END
