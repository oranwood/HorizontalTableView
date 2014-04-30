HorizontalTableView
===================

A subclass of UITableView, that scroll horizontal.

See the code bellow:

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

UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 16;
}

- (HZTableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *cellIdentifier = @"cellIdentifier";
    HZTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[HZTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    return cell;
}

UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSLog(@"--------->%d",indexPath.row);
}

@end
