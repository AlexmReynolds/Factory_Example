//
//  DetailViewController.m
//  Protocol-example
//
//  Created by Alex Reynolds on 12/9/13.
//  Copyright (c) 2013 Solid Interactive. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController (){

}

@property (weak, nonatomic) IBOutlet UILabel *typeLabel;
@property (weak, nonatomic) IBOutlet UILabel *rateLabel;
@property (weak, nonatomic) IBOutlet UILabel *paydayLabel;

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    _typeLabel.text = [_employee getType];
    _rateLabel.text = [NSString stringWithFormat:@"%i",[_employee getPayRate]];
    _paydayLabel.text = [NSString stringWithFormat:@"%i",[_employee getPayDay]];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setEmployee:(id<EmployeeInterface>)employee
{
    _employee = employee;
}
@end
