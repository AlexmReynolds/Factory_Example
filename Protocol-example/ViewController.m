//
//  ViewController.m
//  Protocol-example
//
//  Created by Alex Reynolds on 12/6/13.
//  Copyright (c) 2013 Solid Interactive. All rights reserved.
//

#import "ViewController.h"
#import "Employee.h"
@interface ViewController (){
    id <EmployeeInterface>employee;
}

@property (weak, nonatomic) IBOutlet UILabel *rate;
@property (weak, nonatomic) IBOutlet UILabel *payday;
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showHourly:(id)sender {
    employee = [Employee makeEmployeeType:HourlyType];
    
    [self updateLabelsForRate:[employee getPayRate] andPay:[employee getPayDay]];
}

- (IBAction)showSalary:(id)sender {
    employee = [Employee makeEmployeeType:SalaryType];
    
    [self updateLabelsForRate:[employee getPayRate] andPay:[employee getPayDay]];
    
}

-(void)updateLabelsForRate:(int)rate andPay:(int)pay
{
    self.rate.text = [NSString stringWithFormat:@"%i",rate];
    self.payday.text = [NSString stringWithFormat:@"%i",pay];
}
@end
