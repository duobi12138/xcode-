//
//  ViewController.m
//  UISwitch控件
//
//  Created by 多比 on 2024/5/30.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//同步属性和成员变量
@synthesize mySwitch = _mySwitch;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个UISwitch开关对象（继承于UIView）
    _mySwitch = [[UISwitch alloc] init];
    
    //_mySwitch.backgroundColor = [UIColor orangeColor];
    
    //苹果官方的控件的位置设置（不是所有的控件都可以设置宽和高）
    //对于UISwitch对象，其位置的X、Y坐标可以改变，但其宽和高无法改变，是官方设定好的
    _mySwitch.frame = CGRectMake(100, 150, 80, 40);
    
    //设置开关状态属性（YES——开启状态；NO——关闭状态）
    _mySwitch.on = YES;
    //也可以使用setOn:方法
    [_mySwitch setOn:YES];
    
    //设置开关状态  p1：开关状态  p2:是否开启动画效果
    [_mySwitch setOn:YES animated:YES];
    
    //设置开启状态的风格颜色
    [_mySwitch setOnTintColor:[UIColor blueColor]];
    
    //改变开关圆钮的颜色
    [_mySwitch setThumbTintColor:[UIColor cyanColor]];
    
    //设置整体风格颜色
    [_mySwitch setTintColor:[UIColor purpleColor]];
    
    //向开关控件添加事件函数
    //p1:函数实现对象  p2:函数对象
    //p3:事件响应时的事件类型（UIControlEventValueChanged：状态发生变化时触发函数）
    [_mySwitch addTarget:self action:@selector(swChanged:) forControlEvents:UIControlEventValueChanged];
    
    self.view.backgroundColor = [UIColor magentaColor];
    
    [self.view addSubview:_mySwitch];
}

//参数传入开关对象本身
- (void)swChanged:(UISwitch *)sw
{
    NSLog(@"开关状态发生变化！");
    
    //on表示当前结束时开关的状态
    if (sw.on == YES) {
        NSLog(@"开关被打开！");
    } else {
        NSLog(@"开关被关闭！");
    }
}

@end
