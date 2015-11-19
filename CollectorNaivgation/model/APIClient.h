//
//  APIClient.h
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import <Foundation/Foundation.h>

@class ResponseObject;

@interface APIClient : NSObject
+ (void)fetchCollectorByID:(NSString *)collectorID
                   success:(void (^)(ResponseObject *ro))success
                   failure:(void (^)(NSString *errorInfo))faliure;

@end
