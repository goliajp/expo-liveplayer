#import <Foundation/Foundation.h>
#import <React/RCTBridgeModule.h>

@interface RCTNodeMediaClient : NSObject<RCTBridgeModule>

@property (class, nonatomic, copy) NSString *license;

@end
