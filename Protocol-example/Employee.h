//
//  Employee.h
//  Protocol-example
//
//  Created by Alex Reynolds on 12/6/13.
//  Copyright (c) 2013 Solid Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol EmployeeInterface <NSObject>
-(int)getPayRate;
-(int)getPayDay;
-(NSString*)getType;
@end

typedef enum{
    SalaryType,
    HourlyType
}EmployeeType;

@interface Employee : NSObject


+(id<EmployeeInterface>)makeEmployeeType:(EmployeeType)type;
@end
