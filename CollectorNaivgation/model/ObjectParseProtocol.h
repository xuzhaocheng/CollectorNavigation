//
//  ObjectParseProtocol.h
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol ObjectParseProtocol <NSObject>
@required
+ (id)parseWithDict:(NSDictionary *)dict;
@end
