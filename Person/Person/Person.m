//
//  Person.m
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import "Person.h"

@implementation Person

@synthesize name;
@synthesize age;
- (instancetype)initWithName:(NSString *)name age:(NSInteger)age
{
    if(self = [super init]){
        self.name = name;
        self.age = age;
    }
    return self;
}
- (NSString *)description {
    return [NSString stringWithFormat:@"Name: %@, Age: %ld", self.name, (long)self.age];
}

@end
