//
//  ViewController.h
//  UITextField
//
//  Created by 多比 on 2024/6/3.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITextFieldDelegate>
{
    //定义一个textField
    //textField：是一个文本输入区域，例如：用户名、密码等需要输入文本文字的内容区域
    //textField只能输入单行文字，不能输入或显示多行
    UITextField* _textField;
}

//定义属性
@property(retain, nonatomic)UITextField* textField;

@end

