//
//  SalaryEmployee.m
//  Protocol-example
//
//  Created by Alex Reynolds on 12/6/13.
//  Copyright (c) 2013 Solid Interactive. All rights reserved.
//

#import "Salary.h"

@implementation Salary

-(int)getPayRate
{
    return 50000;
}

-(int)getPayDay
{
    return [self getPayRate]/[self payPeriods];
}

-(int)payPeriods
{
    return 24;
}

-(NSString *)getType
{
    return @"Salary";
}
@end
