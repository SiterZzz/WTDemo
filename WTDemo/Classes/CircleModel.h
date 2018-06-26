//
//  CircleModel.h
//  圈子店
//
//  Created by 熊坤 on 16/5/9.
//  Copyright © 2016年 xk. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CircleModel : NSObject
/**
 *  圈子头像
 */
@property (nonatomic, copy) NSString            *circle_img;
/**
 *  圈子名称
 */
@property (nonatomic, copy) NSString            *circle_name;
/**
 *  群主
 */
@property (nonatomic, copy) NSString            *circle_mastername;
/**
 *  人数
 */
@property (nonatomic, copy) NSString            *circle_mcount;
/**
 *  简介
 */
@property (nonatomic, copy) NSString            *circle_desc;

/**
 * 圈子ID
 */
@property (nonatomic, copy) NSString            *circle_id;

@end
