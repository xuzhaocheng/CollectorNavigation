//
//  ResponseObject.h
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectParseProtocol.h"

@interface ResponseObject : NSObject

@property (nonatomic, assign) NSInteger errorCode;
@property (nonatomic, copy) NSString *errorInfo;
@property (nonatomic, strong) id<ObjectParseProtocol> object;
@property (nonatomic, copy) NSString *objectClassName;

- (id)initWithObjectName:(NSString *)objectClassName dictionary:(NSDictionary *)dict;

@end
