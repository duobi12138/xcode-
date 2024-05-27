//
//  FKCar+drive.h
//  扩展
//
//  Created by 多比 on 2024/5/7.
//

#import <Foundation/Foundation.h>
#import "FKCar.h"
 
NS_ASSUME_NONNULL_BEGIN
 
//定义FKCar的扩展
@interface FKCar ()
@property (nonatomic, copy) NSString* color;
- (void) drive: (NSString*) owner;
 
@end
 
NS_ASSUME_NONNULL_END
