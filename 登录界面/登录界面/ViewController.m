//
//  ViewController.m
//  登录界面
//
//  Created by 多比 on 2024/6/2.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //用户名提示标签创建
    _lbUserName = [[UILabel alloc] init];
    _lbUserName.frame = CGRectMake(20, 100, 80, 40);
    _lbUserName.text = @"用户名：";
    _lbUserName.font = [UIFont systemFontOfSize:20];
    _tfUserName.textAlignment = NSTextAlignmentLeft;
    
    //密码提示创建
    _lbPassword = [[UILabel alloc] init];
    _lbPassword.frame = CGRectMake(20, 200, 80, 40);
    _lbPassword.text = @"密码：";
    _lbPassword.font = [UIFont systemFontOfSize:20];
    _lbPassword.textAlignment = NSTextAlignmentLeft;
    
    //用户名输入框
    _tfUserName = [[UITextField alloc] init];
    _tfUserName.frame = CGRectMake(120, 100, 180, 40);
    _tfUserName.placeholder = @"请输入用户名";
    _tfUserName.borderStyle = UITextBorderStyleRoundedRect;
    
    //密码输入框
    _tfPassWord = [[UITextField alloc] init];
    _tfPassWord.frame = CGRectMake(120, 200, 180, 40);
    _tfPassWord.placeholder = @"请输入密码";
    _tfPassWord.borderStyle = UITextBorderStyleRoundedRect;
    _tfPassWord.secureTextEntry = YES;
    
    //登录按钮和注册按钮的创建
    _btLogin = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btLogin.frame = CGRectMake(150, 300, 80, 40);
    [_btLogin setTitle:@"登录" forState:UIControlStateNormal];
    [_btLogin addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    _btRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    _btRegister.frame = CGRectMake(150, 360, 80, 40);
    [_btRegister setTitle:@"注册" forState:UIControlStateNormal];
    [_btRegister addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    //将所有控件添加到视图中显示
    [self.view addSubview:_lbUserName];
    [self.view addSubview:_lbPassword];
    [self.view addSubview:_tfUserName];
    [self.view addSubview:_tfPassWord];
    [self.view addSubview:_btLogin];
    [self.view addSubview:_btRegister];
}

- (void)pressLogin
{
    NSString* strName = @"kacy";
    NSString* strPass = @"1234567";
    
    //获取输入框里的用户名和密码文字
    NSString* strTextName = _tfUserName.text;
    NSString* strTextPass = _tfPassWord.text;
    
    if ([strTextName isEqualToString:strName] && [strTextPass isEqualToString:strPass]) {  //这里不能用==，因为这两个指针不一定相等，我们只需要比较里面的内容
        NSLog(@"用户名和密码输入正确！");
        
        //创建一个UIAlertController对象
        //P1:弹出框的标题  P2弹出框的内容  P3:弹出的警告框的样式为UIAlertControllerStyleAlert（即中心弹出的警告框）
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"验证成功，正在登录..." preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:defaultAction];

        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        [alertController addAction:cancelAction];

        [self presentViewController:alertController animated:YES completion:nil];
    } else {
        NSLog(@"用户或密码错误");
        
        UIAlertController* alertController = [UIAlertController alertControllerWithTitle:@"提示" message:@"用户名或密码错误，登录失败" preferredStyle:UIAlertControllerStyleAlert];

        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"确认" style:UIAlertActionStyleDefault handler:nil];
        [alertController addAction:defaultAction];

        UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel handler:nil];
        [alertController addAction:cancelAction];

        [self presentViewController:alertController animated:YES completion:nil];
    }
}

- (void)pressResigter
{
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //回收键盘对象⌨️
    [_tfUserName resignFirstResponder];
    [_tfPassWord resignFirstResponder];
}

@end
