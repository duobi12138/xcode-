//
//  ViewController.m
//  UITextField
//
//  Created by 多比 on 2024/6/3.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize textField = _textField;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel* UserName = [[UILabel alloc] init];
    UserName.frame = CGRectMake(90, 150, 80, 40);
    UserName.text = @"用户名:";
    UserName.font = [UIFont systemFontOfSize:15];
    UserName.textColor = [UIColor blackColor];
    [self.view addSubview:UserName];
    
    //创建一个文本输入区对象
    self.textField = [[UITextField alloc] init];
    //设定文本输入区的位置和大小
    self.textField.frame = CGRectMake(150, 150, 180, 40);
    //设置textField的内容文字
    //self.textField.text = @"用户名";
    //设置文字的字体和大小
    self.textField.font = [UIFont systemFontOfSize:15];
    //设置字体的颜色
    self.textField.textColor = [UIColor blueColor];
    //设置边框的风格：
    //UITextBorderStyleRoundedRect：圆角风格（默认为这个）
    //UITextBorderStyleNone：无边框风格
    //UITextBorderStyleLine：线框风格
    //UITextBorderStyleBezel：bezel线框风格
    self.textField.borderStyle = UITextBorderStyleRoundedRect;
    //设置虚拟键盘风格（常用的）：
    //UIKeyboardTypeNumberPad：默认风格
    //UIKeyboardTypeNumberPad：纯数字风格
    //UIKeyboardTypeNamePhonePad：字母和数字组合风格
    self.textField.keyboardType = UIKeyboardTypeDefault;
    //设置提示文字 当text属性为空时，显示此条信息
    self.textField.placeholder = @"请输入用户名";
    //是否作为密码输入（YES——加密输入*；NO——不加密输入 正常显示输入文字）
    self.textField.secureTextEntry = NO;
    
    [self.view addSubview:self.textField];
    
    //设置代理对象
    self.textField.delegate = self;
}

//四个协议：
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    NSLog(@"开始编辑了！");
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{
    //结束输入后 将输入框清空
    self.textField.text = @"";
    NSLog(@"输入结束！");
}

//是否可以开始输入（YES——可以；NO——不可以） 如果不另外实现该函数，默认为YES
- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField
{
    return YES;
}

//是否可以结束输入（YES——可以；NO——不可以） 如果不另外实现该函数，默认为YES
- (BOOL)textFieldShouldEndEditing:(UITextField *)textField
{
    return  YES;
}

//点击屏幕空白处调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //使虚拟键盘收回，不再作为第一响应者
    [self.textField resignFirstResponder];
}

@end
