//
//  MyTableViewCell.h
//  Test
//
//  Created by LeouWang_NJ .TD on 14-11-24.
//  Copyright (c) 2014年 Leou Wang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyTableViewCell : UITableViewCell<UITableViewDataSource>{
    
    UILabel  *headerLabel;
    UILabel  *footerLabel;
    
    UITableView *centerTableView;
}

@property (nonatomic, strong)NSString *headerStr;
@property (nonatomic, strong)NSString *footerStr;
@property (nonatomic ,strong)NSArray *list;
@end
