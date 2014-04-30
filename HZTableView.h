//
//  HZTableView.h
//  UITableViewTest
//
//  Created by wuzhangfu on 14-4-30.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface HZTableViewCell : UITableViewCell
- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier;
@end

@interface HZTableView : UITableView
@property (nonatomic) CGFloat  columnWidth;
@end
