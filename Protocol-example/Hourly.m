//
//  HourlyEmployee.m
//  Protocol-example
//
//  Created by Alex Reynolds on 12/6/13.
//  Copyright (c) 2013 Solid Interactive. All rights reserved.
//

#import "Hourly.h"

@implementation Hourly

-(int)getPayRate
{
    return 15;
}

-(int)getPayDay
{
    return [self getPayRate]*[self hoursWorked];
}

-(int)hoursWorked
{
    return 24;
}
-(NSString *)getType
{
    return @"Hourly";
}
@end
