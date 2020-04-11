//
//  HDSReportClient.h
//  CCFuncTool
//
//  Created by Chenfy on 2020/2/7.
//  Copyright © 2020 com.class.chenfy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HDSReportClient : NSObject
/** 线路切换，日志上报 */
- (void)reportEvent:(NSString *)event code:(NSString *)code retry:(int)num liveid:(NSString *)liveId time:(int)time;

@end

NS_ASSUME_NONNULL_END
