//
//  main.m
//  NSDateFormatter
//
//  Created by 多比 on 2024/5/9.
//

#import <Foundation/Foundation.h>
 
int main(int argc, const char * argv[])
{
    @autoreleasepool {
        //定义date并格式化为从1970年1月1日开始，20年之后的日期
        NSDate* date = [NSDate dateWithTimeIntervalSince1970:3600 * 24 * 366 * 20];
        //创建两个NSLocale，分别代表中国、美国
        NSLocale* locales[] = {[[NSLocale alloc] initWithLocaleIdentifier:@"zh_CN"], [[NSLocale alloc]initWithLocaleIdentifier:@"en_US"]};
        //为上面两个NSLocale创建8个NSDateFormatter对象
        NSDateFormatter* df[8];
        for (int i = 0; i < 2; i++) 
        {
            df[i * 4] = [[NSDateFormatter alloc] init];
            //设置NSDateFormatter的日期、时间风格
            [df[i * 4]setDateStyle:NSDateFormatterShortStyle];
            [df[i * 4]setTimeStyle:NSDateFormatterShortStyle];
            //设置NSDateFormatter的NSLocale
            [df[i * 4]setLocale:locales[i]];
            df[i * 4 + 1] = [[NSDateFormatter alloc] init];
            //设置NSDateFormatter的日期、时间风格
            [df[i * 4 + 1]setDateStyle:NSDateFormatterMediumStyle];
            [df[i * 4 + 1]setTimeStyle:NSDateFormatterMediumStyle];
            //设置NSDateFormatter的NSLocale
            [df[i * 4 + 1]setLocale:locales[i]];
            df[i * 4 + 2] = [[NSDateFormatter alloc] init];
            //设置NSDateFormatter的日期、时间风格
            [df[i * 4 + 2]setDateStyle:NSDateFormatterLongStyle];
            [df[i * 4 + 2]setTimeStyle:NSDateFormatterLongStyle];
            //设置NSDateFormatter的NSLocale
            [df[i * 4 + 2]setLocale:locales[i]];
            df[i * 4 + 3] = [[NSDateFormatter alloc] init];
            //设置NSDateFormatter的日期、时间风格
            [df[i * 4 + 3]setDateStyle:NSDateFormatterFullStyle];
            [df[i * 4 + 3]setTimeStyle:NSDateFormatterFullStyle];
            //设置NSDateFormatter的NSLocale
            [df[i * 4 + 3]setLocale:locales[i]];
        }
        for (int i = 0; i < 2; i++) 
        {
            switch (i) {
                case 0: NSLog(@"-----中国日期格式------");
                    break;
                case 1: NSLog(@"-----美国日期格式------");
                    break;
            }
            NSLog(@"SHORT格式的日期格式：%@", [df[i * 4]stringFromDate:date]);
            NSLog(@"MEDIUM格式的日期格式：%@", [df[i * 4 + 1]stringFromDate:date]);
            NSLog(@"LONG格式的日期格式：%@", [df[i * 4 + 2]stringFromDate:date]);
            NSLog(@"FULL格式的日期格式：%@", [df[i * 4 + 3]stringFromDate:date]);
        }
        NSDateFormatter* df2 = [[NSDateFormatter alloc] init];
        //设置自定义格式器模版
        [df2 setDateFormat:@"公元yyyy年MM月DD日HH时mm分"];
        //执行格式化
        NSLog(@"%@", [df2 stringFromDate:date]);
        NSString* dateStr = @"1999-09-21";
        NSDateFormatter* df3 = [[NSDateFormatter alloc] init];
        //根据日期字符串的格式设置格式模版
        [df3 setDateFormat:@"yyyy-MM-DD"];
        //将字符串转化为NSDate对象
        NSDate* date2 = [df3 dateFromString:dateStr];
        NSLog(@"%@", date2);
    }
    return 0;
}
