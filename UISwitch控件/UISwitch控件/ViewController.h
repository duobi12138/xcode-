//
//  ViewController.h
//  UISwitch控件
//
//  Created by 多比 on 2024/5/30.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定义一个开关控件（可以进行状态的改变 在“开”和“关”两种状态里进行切换）
    //所有UIKit框架库中的控件均以UI开头 苹果官方的控件都定义在UIKit框架库中
    UISwitch* _mySwitch;
}

@property(retain, nonatomic)UISwitch* mySwitch;

@end

