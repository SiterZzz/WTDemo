//
//  CacheTool.h
//  圈子店
//
//  Created by St W on 2018/6/11.
//

#import <Foundation/Foundation.h>

@interface CacheTool : NSObject

+(CacheTool *)sharedInstance;

-(void)updataJoinCircle:(NSMutableArray *)modes;

-(NSMutableArray *)getJoinCircle;

-(NSString *)Memberid;
@end
