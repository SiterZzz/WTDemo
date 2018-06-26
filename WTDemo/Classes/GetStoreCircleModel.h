//
//  GetStoreCircleModel.h
//  圈子店
//
//  Created by jingruan on 2018/6/15.
//

#import <Foundation/Foundation.h>

@interface GetJoinCircleModel_circle :NSObject

@property (nonatomic , copy) NSString              * circle_id;
@property (nonatomic , copy) NSString              * circle_name;

@end



@interface GetStoreCircleModel : NSObject

@property (nonatomic , strong) NSMutableArray<GetJoinCircleModel_circle *>              * result;
@property (nonatomic , copy) NSString              * resultCode;
@property (nonatomic , copy) NSString              * resultInfo;

@end



