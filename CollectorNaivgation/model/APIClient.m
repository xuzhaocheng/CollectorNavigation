//
//  APIClient.m
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import "APIClient.h"
#import "ResponseObject.h"
#import "AFHTTPRequestOperationManager.h"

@implementation APIClient

+ (void)fetchCollectorByID:(NSString *)collectorID
                   success:(void (^)(ResponseObject *ro))success
                   failure:(void (^)(NSString *errorInfo))faliure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    
    manager.responseSerializer = [AFJSONResponseSerializer serializer];
    
    if (!collectorID) {
        if (faliure) {
            faliure(@"文物ID不能为空");
            return;
        }
    }
    
    NSDictionary *params = @{@"collectorID": collectorID};
    
    [manager POST:@"http://210.32.133.31:8100/getCollectorByID"
       parameters:params
          success:^(AFHTTPRequestOperation * _Nonnull operation, id  _Nonnull responseObject) {
//              NSString *response = responseObject;
//              NSLog(@"%@", response);
              ResponseObject *ro = [[ResponseObject alloc] initWithObjectName:@"Collector" dictionary:responseObject];
              if (ro.errorCode != 0) {
                  if (faliure) {
                      faliure(ro.errorInfo);
                  }
              } else if (success) {
                  success(ro);
              }
              
          } failure:^(AFHTTPRequestOperation * _Nonnull operation, NSError * _Nonnull error) {
              if (faliure) {
                  faliure(@"网络错误");
              }
              NSLog(@"res: %@", error);
          }];
}

@end
