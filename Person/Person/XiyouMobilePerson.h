//
//  XiyouMobilePerson.h
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>
#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface XiyouMobilePerson : Person

@property (nonatomic, assign)int ios;
@property (nonatomic, assign)int web;
@property (nonatomic, copy)NSString* andriod;
@property (nonatomic, copy)NSString* server;

@end

NS_ASSUME_NONNULL_END

