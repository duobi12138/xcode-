//
//  HKSpy.h
//  便利的初始化（动态）
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HKSpy : NSObject

@property(nonatomic, copy)NSString* ID;
@property(nonatomic, copy)NSString* name;
@property(nonatomic, assign)int age;
- (id)initWithId:(NSString *)ID name:(NSString *)name;
- (id)initWithName:(NSString *)name age:(int)age;

@end

NS_ASSUME_NONNULL_END
