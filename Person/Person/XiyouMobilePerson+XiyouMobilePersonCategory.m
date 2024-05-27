//
//  XiyouMobilePerson+XiyouMobilePersonCategory.m
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import "XiyouMobilePerson+XiyouMobilePersonCategory.h"

@implementation XiyouMobilePerson (XiyouMobilePersonCategory)

- (void)printProperties {
    NSLog(@"Name: %@, Age: %ld, iOS: %d, web: %d, android: %@, server: %@", self.name, (long)self.age, self.ios, self.web, self.andriod, self.server);
}

@end
