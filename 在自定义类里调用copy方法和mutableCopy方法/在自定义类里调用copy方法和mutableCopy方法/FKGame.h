//
//  FKGame.h
//  在自定义类里调用copy方法和mutableCopy方法
//
//  Created by 多比 on 2024/5/10.
//

#import <Foundation/Foundation.h>
 
NS_ASSUME_NONNULL_BEGIN
 
@interface FKGame : NSObject<NSCopying>
 
@property (nonatomic, strong) NSMutableString* name;
@property (nonatomic, assign) int age;
 
@end
 
NS_ASSUME_NONNULL_END
