//
//  Model.m
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import "Model.h"

@implementation Model

- (id)init {
    self = [super init];
    if (self) {
        _xiyouMobileArray = [NSMutableArray array];
        _xiyouMobileDictionary = [NSMutableDictionary dictionary];
    }
    return self;
}
//- (id)printProperties{
  //  return self.iOS+self.web;
//}
@end
