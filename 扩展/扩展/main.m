//
//  main.m
//  扩展
//
//  Created by 多比 on 2024/5/7.
//

#import <Foundation/Foundation.h>
#import "FKCar+drive.h"
 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //创建FKCar对象
        FKCar* car = [[FKCar alloc] init];
        //使用点语法为car对象的属性赋值
        car.brand = @"宝马";
        car.model = @"X5";
        car.color = @"黑色";
        //调用car方法
        [car drive];
        [car drive: @"孙悟空"];
    }
    return 0;
}
