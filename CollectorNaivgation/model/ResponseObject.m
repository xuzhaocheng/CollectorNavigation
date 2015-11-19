//
//  ResponseObject.m
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import "ResponseObject.h"
#import "NSDictionary+JSONParse.h"

const static NSString *ErrorCodeKey = @"errorCode";
const static NSString *ErrorInfoKey = @"errorInfo";
const static NSString *ObjectKey = @"object";

@implementation ResponseObject

- (id)initWithObjectName:(NSString *)objectClassName dictionary:(NSDictionary *)dict
{
    self = [super init];
    if (self) {
        self.objectClassName = objectClassName;
        [self parse:dict];
    }
    return self;
}

- (void)parse:(NSDictionary *)dict
{
    if (!dict) {
        return;
    }

    NSInteger errorCode = [[dict jsonObjectForKey:ErrorCodeKey] integerValue];
    NSString *errorInfo = [dict jsonObjectForKey:ErrorInfoKey];
    
    self.errorInfo = errorInfo;
    self.errorCode = errorCode;
    
    NSDictionary *objectJSONDict = [dict jsonObjectForKey:ObjectKey];
    
    if (objectJSONDict) {
        Class cls = NSClassFromString(self.objectClassName);
        if ([cls conformsToProtocol:@protocol(ObjectParseProtocol)]) {
            self.object = [cls parseWithDict:objectJSONDict];
        }
    }
    
}

@end
