//
//  HZViewController.m
//  HorizontalTableView
//
//  Created by wuzhangfu on 14-4-30.
//  Copyright (c) 2014年 Smartisan. All rights reserved.
//

#import "HZViewController.h"
#import "HZTableView.h"

@interface HZViewController ()<UITableViewDataSource,UITableViewDelegate>{
    HZTableView *hzTableView;
}
@end

@implementation HZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    hzTableView = [[HZTableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    hzTableView.dataSource = self;
    hzTableView.delegate = self;
    hzTableView.columnWidth = self.view.frame.size.width;
    hzTableView.pagingEnabled = YES;
    [self.view addSubview:hzTableView];
}


#pragma mark--
#pragma UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 16;
}

- (HZTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellIdentifier";
    HZTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[HZTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    UILabel * label = (UILabel*)[cell viewWithTag:-100];
    [label removeFromSuperview];
    UILabel * label1 = [[UILabel alloc] initWithFrame:CGRectMake(100, 100, 120, 200)];
    [cell addSubview:label1];
    label1.backgroundColor = [UIColor redColor];
    label1.tag = -100;
    label1.text = [NSString stringWithFormat:@"Cell %d", indexPath.row];
    
    return cell;
}

#pragma mark--
#pragma UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"--------->%d",indexPath.row);
}

@end
