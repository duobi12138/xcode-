//
//  XiyouMobilePerson.m
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import "XiyouMobilePerson.h"

@implementation XiyouMobilePerson

- (instancetype)initWithName:(NSString *)name age:(NSInteger)age {
    self = [super initWithName:name age:age];
    if (self) {
        _ios = 0;
        _web = 0;
    }
    return self;
}

- (void)setIOS:(int)ios {
    if (ios % 2 == 0) {
        _ios = ios - 1;
    } else {
        _ios = ios + 1;
    }
}

- (int)ios {
    return _ios;
}

- (NSString *)description {
    return [super description];
}

@end
