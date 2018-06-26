//
//  CacheTool.m
//  圈子店
//
//  Created by St W on 2018/6/11.
//

#import "CacheTool.h"
#import "CircleModel.h"
#import "GetStoreCircleModel.h"

#define JoinCircleKey @"JoinCircleKey"


#define Member_Ids @"member_ids"

@implementation CacheTool

+(CacheTool *)sharedInstance
{
    __strong static CacheTool *sharedManager;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManager = [[CacheTool alloc] init];
    });
    return sharedManager;
}


//更新用户圈子数组
-(void)updataJoinCircle:(NSMutableArray *)modes{
    
    NSString * modesString = @" ";
    if (modes.count > 0 ){
        [[NSUserDefaults standardUserDefaults] setObject:modesString forKey:JoinCircleKey];
        int i = 0;
        
        
        for (GetJoinCircleModel_circle * m in modes){
            i +=1;
            if (i == 1){
                
                modesString = [modesString stringByAppendingString:[NSString stringWithFormat:@"%@-%@",[m valueForKey:@"circle_id"],[m valueForKey:@"circle_name"]]];
            }else{
                modesString = [modesString stringByAppendingString:[NSString stringWithFormat:@"$%@-%@",[m valueForKey:@"circle_id"],[m valueForKey:@"circle_name"]]];
            }
        }
        [[NSUserDefaults standardUserDefaults] setObject:modesString forKey:JoinCircleKey];
    }
}

//得到本地缓存的用户圈子数组
-(NSMutableArray *)getJoinCircle{
    NSMutableArray * modeArray = [[NSMutableArray alloc] init];
    
    NSString * modesString = [[NSUserDefaults standardUserDefaults] objectForKey:JoinCircleKey];
    
    if (![modesString isEqualToString:@" "]){
        NSArray *modes = [modesString componentsSeparatedByString:@"$"];
        if (modes.count >0){
            for (NSString * s in modes){
                NSArray * mode = [s componentsSeparatedByString:@"-"];
                
                NSString * circle_id = mode[0];
                
                NSString * circle_name = mode[1];
                
                CircleModel * m = [[CircleModel alloc] init];
                m.circle_name = circle_name;
                m.circle_id = circle_id;
                
                [modeArray addObject:m];
            }
        }
    }
    
    return modeArray;
}
-(NSString *)Memberid{
//    NSMutableArray * modeArray = [[NSMutableArray alloc] init];
    
    NSString * modesString = [[NSUserDefaults standardUserDefaults] objectForKey:Member_Ids];
    NSLog(@"%@",modesString);
//    if (![modesString isEqualToString:@" "]){
//
//        
//    }
    
    return modesString;
}


@end
