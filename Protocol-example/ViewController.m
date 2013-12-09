//
//  ViewController.m
//  Protocol-example
//
//  Created by Alex Reynolds on 12/6/13.
//  Copyright (c) 2013 Solid Interactive. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "Employee.h"
@interface ViewController (){
    NSArray *_employees;
}
@property (weak, nonatomic) IBOutlet UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad
{
    _employees = @[];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)makeHourly:(id)sender {
    id employee = [Employee makeEmployeeType:HourlyType];
    [self addEmployee:employee];
}

- (IBAction)makeSalary:(id)sender {
    id employee = [Employee makeEmployeeType:SalaryType];
    [self addEmployee:employee];
}


-(void)addEmployee:(id)employee
{
    _employees = [_employees arrayByAddingObject:employee];
    [self.tableView reloadData];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return _employees.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    
    id<EmployeeInterface> employee = [_employees objectAtIndex:indexPath.row];
    cell.textLabel.text = [employee getType];
    return  cell;
}

-(UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return UITableViewCellEditingStyleDelete;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSMutableArray *temp = [NSMutableArray arrayWithArray:_employees];
    [temp removeObjectAtIndex:indexPath.row];
    _employees = temp;
    [self.tableView beginUpdates];
    [self.tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    [self.tableView endUpdates];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *vc = segue.destinationViewController;
    vc.employee = [_employees objectAtIndex:[self.tableView indexPathForSelectedRow].row];
}
@end
