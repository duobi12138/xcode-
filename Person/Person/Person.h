//
//  Person.h
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Person : NSObject

@property (nonatomic)NSString* name;
@property (nonatomic)NSInteger age;

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age;
- (NSString *)description;

@end

NS_ASSUME_NONNULL_END
