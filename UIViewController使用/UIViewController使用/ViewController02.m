//
//  ViewController02.m
//  UIViewController使用
//
//  Created by 多比 on 2024/6/5.
//

#import "ViewController02.h"

@interface ViewController02 ()

@end

@implementation ViewController02

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //第二个控制器的颜色
    self.view.backgroundColor = [UIColor cyanColor];
}

- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    //使当前的控制器消失掉，传入两个参数
    //第一个参数指是否有动画效果
    //第二个参数指结束后是否调用block块操作，不需要为nil
    [self dismissViewControllerAnimated: YES completion: nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
