//
//  ViewController.h
//  UISlider&UIProgressView
//
//  Created by 多比 on 2024/6/5.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //创建一个进度条对象 一般用来表示下载或视频播放的进度
    UIProgressView* _progressView;
    
    //创建一个滑动条对象 一般用来进行调整音频的音量等
    UISlider* _slider;
}

//定义一个进度条属性
@property(retain, nonatomic)UIProgressView* pView;
//定义一个滑动条属性
@property(retain, nonatomic)UISlider* slider;

@end

