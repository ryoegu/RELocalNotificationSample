//
//  ViewController.m
//  LocalNotificationSample
//
//  Created by Ryo Eguchi on 2014/12/02.
//  Copyright (c) 2014年 Ryo Eguchi. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    /* 通知処理 */
    // インスタンス生成
    UILocalNotification *notification = [[UILocalNotification alloc] init];
    // 5分後に通知をする（設定は秒単位）
    notification.fireDate = [NSDate dateWithTimeIntervalSinceNow:(10)];
    // タイムゾーンの設定
    notification.timeZone = [NSTimeZone defaultTimeZone];
    // 通知時に表示させるメッセージ内容
    notification.alertBody = @"10秒経ちました";
    // 通知に鳴る音の設定
    notification.soundName = UILocalNotificationDefaultSoundName;
    // 通知の登録
    [[UIApplication sharedApplication] scheduleLocalNotification:notification];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
