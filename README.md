HorizontalTableView
===================

A subclass of UITableView, that scroll horizontal.

See the code bellow:

    hzTableView = [[HZTableView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, self.view.frame.size.height)];
    hzTableView.dataSource = self;
    hzTableView.delegate = self;
    hzTableView.columnWidth = self.view.frame.size.width;
    [self.view addSubview:hzTableView];
