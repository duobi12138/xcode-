//
//  ViewController.m
//  UISlider&UIProgressView
//
//  Created by 多比 on 2024/6/5.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize slider = _slider;
@synthesize pView = _progressView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //进度条的创建
    _progressView = [[UIProgressView alloc] init];
    
    //设置进度条的位置和大小（进度条的高度（即第四个参数）是不可变化的）
    _progressView.frame = CGRectMake(50, 200, 300, 40);
    
    //设置进度条的风格颜色
    _progressView.progressTintColor = [UIColor blueColor];
    
    //剩余进度条颜色
    _progressView.trackTintColor = [UIColor cyanColor];
    
    //设置进度条的进度值（范围是[0,1]）
    _progressView.progress = 0.3;
    
    //设置进度条的风格特征
    _progressView.progressViewStyle = UIProgressViewStyleDefault;
    
    [self.view addSubview:_progressView];
    
    //创建滑动条对象
    _slider = [[UISlider alloc] init];
    
    //设置滑动条的位置和大小（高度不可变）
    _slider.frame = CGRectMake(50, 400, 300, 40);
    
    //设置滑动条最大值和最小值（可以为负值）（进度条不能设置）
    _slider.maximumValue = 100;
    _slider.minimumValue = -100;
    
    //设置滑动条滑块的位置float值
    _slider.value = 50;
    
    //设置左侧滑条颜色
    _slider.minimumTrackTintColor = [UIColor yellowColor];
    //设置右侧滑条颜色（默认为灰色）
    _slider.maximumTrackTintColor = [UIColor cyanColor];
    
    //设置滑块的颜色（默认为白色）
    _slider.thumbTintColor = [UIColor magentaColor];
    
    //对滑动条添加事件函数
    [_slider addTarget:self action:@selector(pressSlider) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:_slider];
}

- (void)pressSlider
{
    _progressView.progress = (_slider.value - _slider.minimumValue) / (_slider.maximumValue - _slider.minimumValue);
    NSLog(@"value = %f", _slider.value);
}

@end
