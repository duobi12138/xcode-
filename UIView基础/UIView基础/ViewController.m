//
//  ViewController.m
//  UIView基础
//
//  Created by 多比 on 2024/5/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建一个UIView对象（UIView是iOS中的视图类 是显示在屏幕上的所有的对象的基础类）
    //所有显示在屏幕上的对象一定都继承于UIView，屏幕上能看到的对象都是UIView的子类(图片、文字等)
    //UIView是一个矩形对象，有背景颜色，可以显示，有层级关系
    UIView* view = [[UIView alloc] init];
    
    //设置UIView的位置
    view.frame = CGRectMake(100, 100, 200, 200);
    
    view.backgroundColor = [UIColor cyanColor];
    
    //将新建视图添加到父亲视图上
    //下面这个方法执行两件事：1.将新建的视图显示到屏幕上 2.将视图作为父亲视图的子视图管理起来
    [self.view addSubview:view];
    
    //是否隐藏视图对象(YES：不显示，NO：显示，一般默认为显示)
    view.hidden = NO;
    
    //设置视图的透明度[0(透明)~1(不透明)]
    view.alpha = 0.5;
    self.view.backgroundColor = [UIColor yellowColor];
    
    //设置是否显示不透明(其优先级低于alpha)
    view.opaque = NO;
    
    //将自己从父亲视图中删除掉(1.从父亲视图中删除 2.不会显示在屏幕上)
    //[view removeFromSuperview];
}


@end
