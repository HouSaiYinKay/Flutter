//
//  TestViewController.m
//  FlutterBoostDemo
//
//  Created by Super on 2022/8/11.
//

#import "TestViewController.h"
#import <flutter_boost/FlutterBoost.h>

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
        
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton*videoBt=[[UIButton alloc]init];
    [videoBt sizeToFit];
    [videoBt setTitle:@"录制视频" forState:UIControlStateNormal];
    [videoBt setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [self.view addSubview:videoBt];
    
    [videoBt addTarget:self action:@selector(pushFlutterVc) forControlEvents:UIControlEventTouchUpInside];
    
    [videoBt setFrame: CGRectMake(20, 100, 100, 50)];
 
}


- (void)pushFlutterVc {
    FlutterBoostRouteOptions* options = [[FlutterBoostRouteOptions alloc]init];
    options.pageName = @"otherPage";
    options.arguments = @{@"animated":@(YES),@"title":@"传过来的title"};
    options.completion = ^(BOOL completion) {
    };
    
    [[FlutterBoost instance]open:options];
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
