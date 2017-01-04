//
//  RNUserInfo.m
//  RNUserInfo
//
//  Created by wangzixiao on 17/1/4.
//  Copyright © 2017年 WangZiXiao. All rights reserved.
//

#import "RNUserInfo.h"

@implementation RNUserInfo

RCT_EXPORT_MODULE()

RCT_EXPORT_METHOD(saveUserInfo:(NSDictionary *)userInfo callback:(RCTResponseSenderBlock)callback) {
    NSUserDefaults * userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults setObject:userInfo forKey:@"userInfo"];
    BOOL * save = [userDefaults synchronize];
    callback(@[save ? @true : @false]);
}

RCT_EXPORT_METHOD(deleteUserInfo: (RCTResponseSenderBlock)callback) {
    NSUserDefaults *userDefaults = [NSUserDefaults standardUserDefaults];
    [userDefaults removeObjectForKey:@"userInfo"];
    BOOL * remove = [userDefaults synchronize];
    callback(@[remove ? @true : @false]);
}

@end
