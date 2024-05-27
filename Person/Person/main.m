//
//  main.m
//  Person
//
//  Created by 多比 on 2024/5/17.
//

#import <Foundation/Foundation.h>
#import "XiyouMobilePerson.h"
#import "Model.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XiyouMobilePerson* person = [[XiyouMobilePerson alloc] initWithName:@"Tom" age:25];
        person.ios = 1;
        person.web = 0;
        //[person printProperties];
        
        Model* model = [[Model alloc] init];
        for (int i = 0; i < 5; i++) {
            XiyouMobilePerson* person = [[XiyouMobilePerson alloc] initWithName: [NSString stringWithFormat: @"Person%d", i + 1] age: 20 + i];
            person.ios = i + 1;
            person.web = i + 2;
            [model.xiyouMobileArray addObject: person];
        }
        XiyouMobilePerson* maxiOSPerson = [model.xiyouMobileArray firstObject];
        for (XiyouMobilePerson* person in model.xiyouMobileArray) {
            if (person.ios > maxiOSPerson.ios) {
                maxiOSPerson = person;
                NSLog(@"%@", maxiOSPerson);
            }
        }
        NSLog(@"iOS变量值最大的对象信息：%@", maxiOSPerson);
        [model.xiyouMobileArray removeObjectsInRange: NSMakeRange(2, 3)];
                
        XiyouMobilePerson* iOSPerson = [[XiyouMobilePerson alloc] initWithName:@"渭南王" age: 20];
        iOSPerson.ios = 10;
        model.xiyouMobileDictionary[@"iOS"] = iOSPerson;
                
        XiyouMobilePerson* androidPerson = [[XiyouMobilePerson alloc] initWithName:@"龙战于野" age:25];
        androidPerson.andriod = @"Android";
        model.xiyouMobileDictionary[@"Android"] = androidPerson;
                
        XiyouMobilePerson* serverPerson = [[XiyouMobilePerson alloc] initWithName:@"后台皇帝" age:28];
        serverPerson.server = @"Server";
        model.xiyouMobileDictionary[@"Server"] = serverPerson;
        XiyouMobilePerson* iOSPersonFromDict = model.xiyouMobileDictionary[@"iOS"];
        NSLog(@"iOS对应的XiyouMobilePerson对象的Value：%@", iOSPersonFromDict);
            }
            return 0;
        }




















