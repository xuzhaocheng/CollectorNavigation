//
//  Collector.m
//  CollectorNaivgation
//
//  Created by xuzhaocheng on 15/11/19.
//  Copyright © 2015年 nmlab. All rights reserved.
//

#import "Collector.h"
#import "NSDictionary+JSONParse.h"


const static NSString *IDKey = @"ID";
const static NSString *DescriptionKey = @"desc";
const static NSString *DynastyKey = @"dynasty";
const static NSString *ExpertScoreKey = @"expertScore";
const static NSString *MaterialKey = @"material";
const static NSString *NameKey = @"name";
const static NSString *RateNumberKey = @"rateNumber";
const static NSString *SourceKey = @"source";
const static NSString *ScoreKey = @"score";
const static NSString *RecommendCollectorsKey = @"recommendCollectors";

@implementation Collector

+ (id)parseWithDict:(NSDictionary *)dict
{
    if (!dict) {
        return nil;
    }
    
    Collector *collector = [[Collector alloc] init];
    collector.ID = [dict jsonObjectForKey:IDKey];
    collector.desc = [dict jsonObjectForKey:DescriptionKey];
    collector.dynasty = [dict jsonObjectForKey:DynastyKey];
    collector.material = [dict jsonObjectForKey:MaterialKey];
    collector.source = [dict jsonObjectForKey:SourceKey];
    collector.name = [dict jsonObjectForKey:NameKey];
    collector.rateNumber = [[dict jsonObjectForKey:RateNumberKey] integerValue];
    collector.expertScore = [[dict jsonObjectForKey:ExpertScoreKey] doubleValue];
    collector.score = [[dict jsonObjectForKey:ScoreKey] doubleValue];
    
    
    NSArray *recommendCollectors = [dict jsonObjectForKey:RecommendCollectorsKey];
    if (recommendCollectors) {
        NSMutableArray *mutableCollectors = [NSMutableArray array];
        for (NSDictionary *dic in recommendCollectors) {
            [mutableCollectors addObject:[Collector parseWithDict:dic]];
        }
        collector.recommendCollectors = [NSArray arrayWithArray:mutableCollectors];
    }
    
    return collector;
}


@end
