//
//  main.m
//  NSDate
//
//  Created by 多比 on 2024/5/9.
//

#import <Foundation/Foundation.h>
 
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //获取当前日期、时间
        NSDate* date1 = [NSDate date];
        NSLog(@"%@", date1);
        //获取从当前时间开始，一天之后的日期
        NSDate* date2 = [[NSDate alloc]initWithTimeIntervalSinceNow:3600 * 24];
        NSLog(@"%@", date2);
        //获取从当前时间开始，三天之前的日期
        NSDate* date3 = [[NSDate alloc]initWithTimeIntervalSinceNow:-3 * 3600 * 24];
        NSLog(@"%@", date3);
        //获取从1999年1月1日开始往后20年的时间
        NSDate* date4 = [[NSDate alloc]initWithTimeIntervalSince1970:3600 * 24 * 365 * 20];
        NSLog(@"%@", date4);
        //获取系统当前的NSLocale（NSLocale代表一个语言，这里表示中文）
        NSLocale* current = [NSLocale currentLocale];
        //获取NSDate在当前NSLocale下对应的字符串
        NSLog(@"%@", [date1 descriptionWithLocale: current]);
        //获取两个日期之间较早的日期
        NSDate* earlier = [date1 earlierDate: date2];
        NSLog(@"%@", earlier);
        //获取两个日期之间较晚的日期
        NSDate* later = [date1 laterDate: date2];
        NSLog(@"%@", later);
        /*比较两个日期用：compare：方法会返回NSComparisonResult枚举值，
        该枚举类型包含NSOrderAscending、NSOrderSame和NSOrderDescending三个值，
        分别代表调用compare：方法的日期位于被比较日期之前、相同、之后*/
        switch ([date1 compare: date3])
        {
            case NSOrderedAscending: 
                NSLog(@"date1在date3之前");
                break;
            case NSOrderedSame: 
                NSLog(@"date1和date3时间想相同");
                break;
            case NSOrderedDescending: 
                NSLog(@"date1在date3时间之后");
                break;
        }
        //获取两个时间的时间差
        NSLog(@"date1与date3之间的时间差是%g秒", [date1 timeIntervalSinceDate:date3]);
        NSLog(@"date2与现在的时间的时间差是%g秒", [date2 timeIntervalSinceNow]);
    }
    return 0;
}
