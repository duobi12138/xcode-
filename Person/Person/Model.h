//
//  Model.h
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>
#import "XiyouMobilePerson.h"

NS_ASSUME_NONNULL_BEGIN

@interface Model : NSObject

@property (nonatomic, strong) NSMutableArray<XiyouMobilePerson *> *xiyouMobileArray;
@property (nonatomic, strong) NSMutableDictionary<NSString *, XiyouMobilePerson *> *xiyouMobileDictionary;

- (id)printProperties;

@end

NS_ASSUME_NONNULL_END
