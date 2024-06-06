//
//  ViewController.h
//  登录界面
//
//  Created by 多比 on 2024/6/2.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //登录界面的组成： 用户名提示(Label)：输入框；  密码提示(Label)：密码输入框(TextFile)；  登录按钮(Button)；  注册按钮(BUtton)。
    
    //用户名提示Label
    UILabel* _lbUserName;
    //密码提示
    UILabel* _lbPassword;
    
    //用户名输入框
    UITextField* _tfUserName;
    //密码输入框
    UITextField* _tfPassWord;
    
    //登录按钮
    UIButton* _btLogin;
    //注册按钮
    UIButton* _btRegister;
}

@end

