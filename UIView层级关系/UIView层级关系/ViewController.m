//
//  ViewController.m
//  UIView层级关系
//
//  Created by 多比 on 2024/5/28.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //创建三个视图对象
    UIView* view01 = [[UIView alloc] init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor cyanColor];
    
    UIView* view02 = [[UIView alloc] init];
    view02.frame = CGRectMake(125, 125, 150, 150);
    view02.backgroundColor = [UIColor yellowColor];
    
    UIView* view03 = [[UIView alloc] init];
    view03.frame = CGRectMake(150, 150, 150, 150);
    view03.backgroundColor = [UIColor orangeColor];
    
    //将三个视图对象显示到屏幕上并添加到父亲视图上
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    //这三个子视图会出现部分覆盖，具有层级关系，最先添加的视图在最下面，后面的会覆盖在前面的上面
    //哪一个视图先被添加到父亲视图中，哪一个就先被绘制
    
    //将某一个视图调整到最上面显示
    [self.view bringSubviewToFront:view01];
    
    //将某一个视图调整到最下面显示
    [self.view sendSubviewToBack:view03];
    
    //subviews管理所有self.view的子视图的数组
    UIView* viewFront = self.view.subviews[2];
    UIView* viewBack = self.view.subviews[0];
    
    if (viewBack == view03) {
        NSLog(@"相等");
    }
    if (viewFront == view01) {
        NSLog(@"也相等");
    }
//    view01.superview; 
//    self.view.superview;//（每个视图只有一个父视图）
    
//    view01.subviews; //（但每个视图可以有若干个子视图）
    
    [view01 removeFromSuperview]; //(写在这里 上面第一个if条件仍然成立)
}

@end
