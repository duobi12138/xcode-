//
//  ViewController.m
//  UIAlertController
//
//  Created by 多比 on 2024/6/4.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame = CGRectMake(100, 100, 80, 80);
    btn.backgroundColor = [UIColor cyanColor];
    [self.view addSubview:btn];
    
    [btn addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
}

- (void) press {
    //创建一个UIAlertController对象
    //P1:弹出框的标题  P2弹出框的内容
    //P3:弹出的警告框的样式为UIAlertControllerStyleAlert（即中心弹出的警告框）
    UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"标题" message:@"这是消息" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
    [alertController addAction:defaultAction];
    
    UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
    [alertController addAction:cancelAction];
    
    [self presentViewController:alertController animated:YES completion:nil];
}

@end
