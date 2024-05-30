//
//  ViewController.m
//  UIButton
//
//  Created by 多比 on 2024/5/27.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)creatUIButton
{
    //创建一个btn对象，根据类型来创建btn（这里创建一个圆角类型btn：UIButtonTypeRoundedRect）
    //通过类方法来创建buttonWithtype（所有的btn创建都是用的是类方法）
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    //设置btn按钮的位置
    btn.frame = CGRectMake(100, 100, 200, 50);
    //设置按钮的文字内容
    //@parameter（意为参数 下文简写为p）
    //p1:字符串类型，显示到按钮上的文字 p2:设置文字的状态：UIControlStateNormal，正常状态
    [btn setTitle:@"点击这里 启动原神" forState:UIControlStateNormal];
    //    p1:显示的文字             p2:显示文字的状态UIControlStateHighlighted，按下状态
    [btn setTitle:@"原神已经启动！" forState:UIControlStateHighlighted];
    
    //设置背景颜色
    btn.backgroundColor = [UIColor magentaColor];
    //    p1:文字颜色      p2:文字的状态UIControlStateNormal，正常状态
    [btn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    //    p1:文字颜色      p2:文字的状态UIControlStateHighlighted，按下状态
    [btn setTitleColor:[UIColor yellowColor] forState:UIControlStateHighlighted];
    //设置按钮的风格颜色（对按钮颜色进行统一设置，但其优先级低于TitleColor，即当其与setTitleColor同时存在时，将以TitleColor设置的为准）
    [btn setTintColor:[UIColor whiteColor]];
    //设置字体大小（titleLabel：UILabel空间）
    btn.titleLabel.font = [UIFont systemFontOfSize:22];
    //添加到视图中并显示
    [self.view addSubview:btn];
}

//创建一个图片按钮
- (void)creatImageBtn
{
    //创建一个自定义类型btn
    UIButton* btnImage = [UIButton buttonWithType:UIButtonTypeCustom];
    //设置位置
    btnImage.frame = CGRectMake(100, 200, 100, 100);
    //
    UIImage* icon01 = [UIImage imageNamed:@"btn01.jpg"];
    UIImage* icon02 = [UIImage imageNamed:@"btn02.jpg"];
    
    [btnImage setImage:icon01 forState:UIControlStateNormal];
    [btnImage setImage:icon02 forState:UIControlStateHighlighted];
    [self.view addSubview:btnImage];
}

- (void)viewDidLoad {
    [super viewDidLoad];
     
    [self creatUIButton];
    
    [self creatImageBtn];
}

@end
