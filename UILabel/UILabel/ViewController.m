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
    label.text = @"浅空天胧🎊 耀月银白🎊 4399😁";//text是字符串对象，赋值时要为字符串，赋值数字会报错
    
    //设定label的显示位置（frame将文字或视图显示在屏幕上时需要的位置——一个矩形）
    label.frame = CGRectMake(100, 150, 200, 300);
    //          （显示位置的横坐标，纵坐标，宽度，高度）
    
    //设置label的背景颜色
    label.backgroundColor = [UIColor yellowColor];
    
    //设置屏幕背景颜色
    self.view.backgroundColor = [UIColor magentaColor];
    
    //将label显示到屏幕上
    [self.view addSubview:label];
    
    //设置label文字大小，使用默认字体，大小为34
    label.font = [UIFont systemFontOfSize:34];
    
    //设置文字颜色
    label.textColor = [UIColor cyanColor];
    
    //label的高级属性
    //设置阴影的颜色
    label.shadowColor = [UIColor grayColor];
    //设置阴影的偏移位置
    label.shadowOffset = CGSizeMake(4, 3);
    //设置文字对齐方式 一般默认为靠左对齐
    label.textAlignment = NSTextAlignmentCenter;
    //设定label文字显示的行数，一般默认为1，只用一行来显示
    //其他>0的行数，文字会尽量按照设定行数来显示
    //如果设定值为0，iOS会自动计算文字所需的行数，按照需要的行数来显示文字
    label.numberOfLines = 0;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //调用创建UI函数
    [self creatUI];
}


@end
