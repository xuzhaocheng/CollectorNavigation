//
//  Collector.h
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ObjectParseProtocol.h"

@interface Collector : NSObject <ObjectParseProtocol>

@property (nonatomic, copy) NSString *ID;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *desc;
@property (nonatomic, copy) NSString *material;
@property (nonatomic, copy) NSString *dynasty;
@property (nonatomic, copy) NSString *source;
@property (nonatomic, assign) NSInteger rateNumber;
@property (nonatomic, assign) double expertScore;
@property (nonatomic, assign) double score;

@property (nonatomic, strong) NSArray *recommendCollectors;

@end
