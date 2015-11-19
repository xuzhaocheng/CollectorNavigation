//
//  NSDictionary+JSONParse.m
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import "NSDictionary+JSONParse.h"

@implementation NSDictionary (JSONParse)

- (id)jsonObjectForKey:(id)aKey
{
    id object = nil;
    
    if (aKey) {
        id object1 = [self objectForKey:aKey];
        
        if (object1 && ![object1 isKindOfClass:[NSNull class]]) {
            object = object1;
        }
    }
    
    return object;
}

@end
