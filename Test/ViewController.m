//
//  ViewController.m
//  Test
//
//  Created by LeouWang_NJ .TD on 14-11-24.
//  Copyright (c) 2014年 Leou Wang. All rights reserved.
//

#import "ViewController.h"

#import "MyTableViewCell.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>
{
    UITableView *myTableView;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    myTableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    myTableView.dataSource = self;
    myTableView.delegate = self;
    [self.view addSubview:myTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    if (indexPath.row == 2) {
        
        return 40 * 2 + 20 + 44 * 6 + 20;
    }
    
    if (indexPath.row == 5) {
        
        return 40 * 2 + 20 + 44 * 2 + 20;
    }
    
    if (indexPath.row == 7) {
        
        return 40 * 2 + 20 + 44 * 5 + 20;
    }
    
    return 40 * 2 + 20;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return 10;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellIdentifier = [NSString stringWithFormat:@"Cell%ld", indexPath.row];
    
    MyTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        
        cell = [[MyTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    cell.headerStr = @"tttttttt";
    cell.footerStr = @"dfdfdfdfdfd";
    
    if (indexPath.row == 2) {
        
        cell.list = [[NSArray alloc] initWithObjects:@"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", nil];
    }
    
    if (indexPath.row == 5) {
        
        cell.list = [[NSArray alloc] initWithObjects:@"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", nil];
    }
    
    if (indexPath.row == 7) {
        
        cell.list = [[NSArray alloc] initWithObjects:@"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", @"dfdfsdfdsfdfsdfs", nil];
    }
    
    return cell;
}

@end
