//
//  main.m
//  重写父类
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>
#import "FKSheep.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        FKSheep* LanSheep = [[FKSheep alloc] init];
        [LanSheep eat];
        FKSheep* XiSheep = [[FKSheep alloc] init];
        [XiSheep callOveredMethod];
        Class fkAnimal = [FKAnimal class];
        NSLog(@"%@", fkAnimal);
    }
    return 0;
}
