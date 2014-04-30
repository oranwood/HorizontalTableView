//
//  HZTableView.m
//  UITableViewTest
//
//  Created by wuzhangfu on 14-4-30.
//  Copyright (c) 2014年 apple. All rights reserved.
//

#import "HZTableView.h"

@implementation HZTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.transform = CGAffineTransformMakeRotation(M_PI/2);
        NSLog(@"initWithStyle: %@", NSStringFromCGRect(self.frame));
    }
    return self;
}
@end

@implementation HZTableView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:CGRectMake(frame.origin.x, frame.origin.y, frame.size.height, frame.size.width)];
    if (self) {
        // Initialization code
        self.showsVerticalScrollIndicator = NO;
        [self.layer setAnchorPoint:CGPointMake(0, 0)];
        self.transform = CGAffineTransformMakeRotation(M_PI/-2);
        frame.origin.y = frame.origin.y+frame.size.height;
        [self setFrame:frame];
        self.separatorStyle = UITableViewCellSeparatorStyleNone;
    }
    return self;
}

- (CGFloat)columnWidth{
    return self.rowHeight;
}

- (void)setColumnWidth:(CGFloat)columnWidth{
    self.rowHeight = columnWidth;
}

@end
