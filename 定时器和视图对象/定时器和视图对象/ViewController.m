//
//  ViewController.m
//  定时器和视图对象
//
//  Created by 多比 on 2024/5/30.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//属性和成员变量的同步
@synthesize timerView = _timerView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //创建一个启动定时器按钮
    UIButton* btn01 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn01.frame = CGRectMake(150, 100, 100, 100);
    
    [btn01 setTitle:@"启动定时器⏲️" forState:UIControlStateNormal];
    
    [btn01 addTarget:self action:@selector(pressStart) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn01];
    
    //创建一个停止定时器按钮
    UIButton* btn02 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    btn02.frame = CGRectMake(150, 200, 100, 100);
    
    [btn02 setTitle:@"停止定时器⏹️" forState:UIControlStateNormal];
    
    [btn02 addTarget:self action:@selector(pressStop) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:btn02];
    
    //创建一个视图
    UIView* view = [[UIView alloc] init];
    
    view.frame = CGRectMake(0, 0, 80, 80);
    
    view.backgroundColor = [UIColor cyanColor];
    
    [self.view addSubview:view];
    
    [self.view sendSubviewToBack:view];
    
    //设置view的标签值，设置完后可以通过父亲视图对象以及view的标签值可以获得相应的视图对象
    view.tag = 4399;
}

- (void)pressStart
{
    //使用NSTimer的类方法创建一个定时器并且启动这个定时器（返回值为一个新建好的定时器对象）
    //P1:每隔多长时间调用定时器函数（以秒为单位的整数）
    //P2：表示实现定时器函数的对象（指针）
    //P3：定时器函数对象
    //P4：可以将一个参数传入定时器函数，无参数可以传入空(nil)， 这里传入的参数会保存在timer的userInfo属性里
    //P5：表示定时器是否重复该操作——YES为重复，NO为只完成一次函数调用
    _timerView = [NSTimer scheduledTimerWithTimeInterval:0.1 target:self selector:@selector(updateTimer:) userInfo:@"kacy" repeats:YES]; //用_timerView来接收该计时器的返回值
}

//可以将定时器本身作为参数传入
- (void)updateTimer:(NSTimer *)timer
{
    NSLog(@"%@！正在计时", timer.userInfo);  //调用timer的userInfo属性
    
    //tag最好从100开始
    UIView* view = [self.view viewWithTag:4399];
    
    view.frame = CGRectMake(view.frame.origin.x + 1, view.frame.origin.y + 1, 80, 80);
}

- (void)pressStop
{
    if (_timerView != nil) {
        //invalidate：停止计时器的实例方法 使用定时器的返回值
        [_timerView invalidate];
        NSLog(@"已经停止计时！");
    }
}

@end
