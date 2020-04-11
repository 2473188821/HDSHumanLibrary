//
//  HDSSupManager.h
//  HDSSup
//
//  Created by Chenfy on 2019/11/12.
//  Copyright © 2019 Chenfy. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HDSSupManager : NSObject

//设置异常监听
+ (void)setBuglyListen:(nullable NSString *)appId;
@end

NS_ASSUME_NONNULL_END
