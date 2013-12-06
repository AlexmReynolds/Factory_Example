//
//  Employee.m
//  Protocol-example
//
//  Created by Alex Reynolds on 12/6/13.
//  Copyright (c) 2013 Solid Interactive. All rights reserved.
//

#import "Employee.h"
#import "Salary.h"
#import "Hourly.h"
@implementation Employee

+(id)makeEmployeeType:(EmployeeType)type
{
    switch (type) {
        case SalaryType:
            return [[Salary alloc] init];
            break;
        case HourlyType:
            return [[Hourly alloc] init];
            break;
    }
}
@end
