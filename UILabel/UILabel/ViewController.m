//
//  ViewController.m
//  UILabel
//
//  Created by 多比 on 2024/5/23.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//创建UI控件函数
- (void)creatUI
{
    //定义并且创建一个UILabel对象
    //UILabel是可以显示在屏幕上，并且可以显示文字的一种UI视图
    UILabel* label = [[UILabel alloc] init];
    
    //显示文字的赋值
    label.text = @"原神启动！";//text是字符串对象，赋值时要为字符串，赋值数字会报错
    
    //设定label的显示位置（frame将文字或视图显示在屏幕上时需要的位置——一个矩形）
    label.frame = CGRectMake(100, 100, 160, 40);//（显示位置的横坐标，纵坐标，宽度，高度）
    
    //设置label的背景颜色
    label.backgroundColor = [UIColor blueColor];
    
    //将label显示到屏幕上
    [self.view addSubview:label];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //调用创建UI函数
    [self creatUI];
}


@end
