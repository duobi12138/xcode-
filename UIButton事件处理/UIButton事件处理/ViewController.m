//
//  ViewController.m
//  UIButton事件处理
//
//  Created by 多比 on 2024/5/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建按钮函数
- (void)creatBtn
{
    //创建圆角按钮
    UIButton* btn1 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置按钮的位置
    btn1.frame = CGRectMake(100, 100, 100, 100);
    //设置按钮状态
    [btn1 setTitle:@"按钮1🔘" forState:UIControlStateNormal];
    //给按钮添加事件函数(目标函数)
    //p1:”谁“来实现该事件函数，实现的对象就是"谁“
    //p2：@selector(pressBtn):函数对象，当按钮满足p3事件类型时，调用该函数（pressBtn）
    //p3:UIControlEvent：事件处理函数类型（UIControlEventTouchUpInside：当手指离开屏幕且离开时手指的位置在按钮范围内，触发事件类型）
    [btn1 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btn1 addTarget:self action:@selector(touchBtn1) forControlEvents:UIControlEventTouchDown];
    //设置按钮的标记值
    btn1.tag = 1;
    
    [self.view addSubview:btn1];
    
    UIButton* btn2 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn2.frame = CGRectMake(100, 200, 100, 100);
    [btn2 setTitle:@"按钮2🔘" forState:UIControlStateNormal];
    //可以多个按钮使用同一个事件函数来处理不同按钮的事件
    [btn2 addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    
    btn2.tag = 2;
    
    [self.view addSubview:btn2];
}

//- (void)pressBtn1
//{
//    NSLog(@"按钮1🔘被按下！");
//}

- (void)touchBtn1
{
    NSLog(@"按钮1🔘被触碰！");
}

//- (void)pressBtn2
//{
//    NSLog(@"按钮2🔘被按下！");
//}

- (void)pressBtn:(UIButton *)btn
{
    if (btn.tag == 1) {
        NSLog(@"按钮1🔘被按下！");
    }
    if (btn.tag == 2) {
        NSLog(@"按钮2🔘被按下！");
    }
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatBtn];
}

@end
