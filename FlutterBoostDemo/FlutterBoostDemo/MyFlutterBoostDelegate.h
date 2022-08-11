//
//  MyFlutterBoostDelegate.h
//  FlutterBoostDemo
//
//  Created by Super on 2022/8/11.
//

#import <Foundation/Foundation.h>
#import <flutter_boost/FlutterBoost.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyFlutterBoostDelegate : NSObject<FlutterBoostDelegate>
@property (nonatomic,strong) UINavigationController *navigationController;

@end

NS_ASSUME_NONNULL_END
