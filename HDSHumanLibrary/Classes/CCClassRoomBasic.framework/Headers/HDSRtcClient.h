

#import <Foundation/Foundation.h>
#import <WebRTC/WebRTC.h>

/** 直播兼容SDK文件（大直播使用）**/
NS_ASSUME_NONNULL_BEGIN

@interface HDSRtcClient : NSObject
/*!
 @method
 @abstract 创建WebRTC RTCPeerConnectionFactory 实例
 
 @return 操作结果
 */
- (RTCPeerConnectionFactory *)peerConnectionFactory;
//销毁Factory
- (void)destoryFactory;
//获取视频轨道
- (RTCVideoTrack *)hdsVideoTrack;
//开启预览
- (void)hdsStartCaptureWithDevice:(BOOL)frontCamera response:(nullable void (^)(NSError *))completionHandler;
@end

NS_ASSUME_NONNULL_END

