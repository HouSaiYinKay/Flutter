//
//  AppDelegate.m
//  FlutterBoostDemo
//
//  Created by Super on 2022/8/11.
//

#import "AppDelegate.h"
#import "Flutter/Flutter.h"
#import "MyFlutterBoostDelegate.h"
#import "FlutterPluginRegistrant-umbrella.h"
#import "flutter_boost-umbrella.h"

#import "TestViewController.h"
@interface AppDelegate ()
@property(nonatomic, strong) MyFlutterBoostDelegate* delegate;
@end

@implementation AppDelegate



- (BOOL)application:(UIApplication *)application
didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
//    [GeneratedPluginRegistrant registerWithRegistry:self];
    self.window = [[UIWindow alloc] initWithFrame: [UIScreen mainScreen].bounds];
    
    //默认方法
    _delegate = [[MyFlutterBoostDelegate alloc ] init];
    [[FlutterBoost instance] setup:application delegate:_delegate callback:^(FlutterEngine *engine) {
//
    } ];
    
    //下面是自定义option参数的方法
    
    //    FlutterBoostSetupOptions* options = [FlutterBoostSetupOptions createDefault];
    //    options.dartEntryPoint = @"main2";
    //
    //    [[FlutterBoost instance] setup:application delegate:delegate callback:^(FlutterEngine *engine) {
    //    } options:options];
    
    
    //
    //    FBFlutterViewContainer *fvc = FBFlutterViewContainer.new ;
    //
    //    [fvc setName:@"tab_friend" uniqueId:nil params:@{} opaque:YES];
    //    fvc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"flutter_tab" image:nil tag:1];
    //
    //
    //    UITabBarController *tabVC = [[UITabBarController alloc] init];
    //    tabVC.viewControllers = @[fvc];
    TestViewController *testVC = [[TestViewController alloc]init];
    
    
    UINavigationController *rvc = [[UINavigationController alloc] initWithRootViewController:testVC];
    
    _delegate.navigationController=rvc;
    self.window.backgroundColor = [UIColor redColor];
    self.window.rootViewController = rvc;
    [self.window makeKeyAndVisible];

    
    return YES;
    
}



@end
