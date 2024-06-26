//
//  main.m
//  NSCalendarTest
//
//  Created by 多比 on 2024/5/9.
//

#import <Foundation/Foundation.h>
 
int main(int argc, const char * argv[]) 
{
    @autoreleasepool {
        //获取代表公历的Calendar对象
        NSCalendar* gregorian = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
        //获取当前日期
        NSDate* date = [NSDate date];
        //定义一个时间字段的旗标，指定将会获取指定年、月、日、时、分、秒的信息
        unsigned unitFlags = NSCalendarUnitYear|NSCalendarUnitMonth|NSCalendarUnitDay|NSCalendarUnitHour|NSCalendarUnitMinute|NSCalendarUnitSecond|NSCalendarUnitWeekday;
        //获取不同时间字段的信息
        NSDateComponents* comp = [gregorian components:unitFlags fromDate:date];
        //获取各时间字段的数值
        NSLog(@"现在是%ld年", comp.year);
        NSLog(@"现在是%ld月", comp.month);
        NSLog(@"现在是%ld日", comp.day);
        NSLog(@"现在是%ld时", comp.hour);
        NSLog(@"现在是%ld分", comp.minute);
        NSLog(@"现在是%ld秒", comp.second);
        NSLog(@"现在是星期%ld", comp.weekday);
        //上面输出的星期会比我们日历上的星期数多一，是因为西方把周天当作每周的第一天
        //再次创建一个NSDateComponents对象
        NSDateComponents* comp2 = [[NSDateComponents alloc]init];
        //设置不同时间字段的数值
        comp2.year = 2024;
        comp2.month = 5;
        comp2.day = 9;
        comp2.hour = 20;
        comp2.minute = 32;
        //通过NSDateComponents所包含的时间字段的数值来恢复NSDate对象
        NSDate* _date = [gregorian dateFromComponents:comp2];
        NSLog(@"获取的日期为：%@", _date);
    }
    return 0;
}
