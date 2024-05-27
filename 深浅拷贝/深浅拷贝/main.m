//
//  main.m
//  深浅拷贝
//
//  Created by mac on 2023/5/19.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//                    容器类
//        NSString* string11 = @"spyFamily";
//        NSString* string12 = [string11 copy];
//        NSString* string13 = [string11 mutableCopy];
//        NSMutableString* string14 = [string11 copy];
//        NSMutableString* string15 = [string11 mutableCopy];
//        NSLog(@"string11的地址为%p", string11);
//        NSLog(@"string12的地址为%p", string12);
//        NSLog(@"string13的地址为%p", string13);
//        NSLog(@"string14的地址为%p", string14);
//        NSLog(@"string15的地址为%p", string15);
//
//        NSMutableString* string21 = [NSMutableString stringWithString:@"间谍过家家"];
//        NSString* string22 = [string21 copy];
//        NSString* string23 = [string21 mutableCopy];
//        NSMutableString* string24 = [string21 copy];
//        NSMutableString* string25 = [string21 mutableCopy];
//        NSLog(@"string21的地址为%p", string21);
//        NSLog(@"string22的地址为%p", string22);
//        NSLog(@"string23的地址为%p", string23);
//        NSLog(@"string24的地址为%p", string24);
//        NSLog(@"string25的地址为%p", string25);
        
        NSArray* array = [NSArray arrayWithObjects:@"黄昏", @"约尔", @"阿尼亚", nil];
        NSArray* copyArray1 = [array copy];
        NSMutableArray* mutableCopyArray1 = [array mutableCopy];
        NSLog(@"array的地址为%p", array);
        NSLog(@"copyArray1地址为%p", copyArray1);
        NSLog(@"mutableCopyArray1地址为%p", mutableCopyArray1);

        NSLog(@"array[0]地址为%p", array[0]);
        NSLog(@"copyArray1[0]地址为%p", copyArray1[0]);
        NSLog(@"mutableCopyArray1[0]地址为%p", mutableCopyArray1[0]);
        
        NSMutableArray* mutableArray = [NSMutableArray arrayWithObjects:@"黄昏",@"约尔",@"阿尼亚", nil];
        NSArray* copyArray2 = [mutableArray copy];
        NSMutableArray* mutableCopyArray2 = [mutableArray mutableCopy];

        NSLog(@"mutableArray地址为%p", mutableArray);
        NSLog(@"copyArray2地址为%p", copyArray2);
        NSLog(@"mutableCopyArray2地址为%p", mutableCopyArray2);

        [mutableArray addObject:@"邦德"];
        NSLog(@"mutableArray = %@", mutableArray);
        NSLog(@"copyArray2 = %@", copyArray2);
        NSLog(@"mutableCopyArray2 = %@", mutableCopyArray2);

        NSLog(@"mutableArray[0]地址为%p", mutableArray[0]);
        NSLog(@"copyArray2[0]地址为%p", copyArray2[0]);
        NSLog(@"mutableCopyArray2[0]地址为%p", mutableCopyArray2[0]);
    }
    return 0;
}
