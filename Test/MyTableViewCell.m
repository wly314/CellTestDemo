//
//  MyTableViewCell.m
//  Test
//
//  Created by LeouWang_NJ .TD on 14-11-24.
//  Copyright (c) 2014年 Leou Wang. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

@synthesize list = _list;
@synthesize headerStr = _headerStr;
@synthesize footerStr = _footerStr;

- (void)awakeFromNib {
    // Initialization code
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if (self) {
        
        _list = [[NSArray alloc] init];
        
        headerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 320, 40)];
//        headerLabel.backgroundColor = [UIColor redColor];
        [self addSubview:headerLabel];
        
        footerLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 60, 320, 40)];
//        footerLabel.backgroundColor = [UIColor redColor];
        [self addSubview:footerLabel];
        
        centerTableView = [[UITableView alloc] initWithFrame:CGRectZero];
        centerTableView.dataSource = self;
        centerTableView.scrollEnabled = NO;
        centerTableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        [self addSubview:centerTableView];
    }
    
    return self;
}


- (void)layoutSubviews{
    
    [super layoutSubviews];
    
    headerLabel.frame = CGRectMake(0, 0, 320, 40);
    footerLabel.frame = CGRectMake(0, 60, 320, 40);
    
    headerLabel.text = _headerStr;
    footerLabel.text = _footerStr;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}


- (void)setList:(NSArray *)list{
    
    _list = list;
    if (_list.count>0) {
        
        headerLabel.frame = CGRectMake(0, 0, 320, 40);
        if (_list && _list.count > 0) {
            
            centerTableView.frame = CGRectMake(0, 60, 320, 44 * _list.count);
            footerLabel.frame = CGRectMake(0, 60 + centerTableView.bounds.size.height + 20, 320, 40);
            
        }else{
            
            footerLabel.frame = CGRectMake(0, 60, 320, 40);
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    return _list.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    NSString *cellIdentifier = [NSString stringWithFormat:@"Cell%ld", indexPath.row];
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (!cell) {
        
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
        cell.selectionStyle = UITableViewCellSelectionStyleNone;
    }
    
    cell.textLabel.text = [_list objectAtIndex:indexPath.row];
    
    return cell;
}


@end
