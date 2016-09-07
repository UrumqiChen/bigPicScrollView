# bigPicScrollView
初始化
    kysScrollPicView *view = [[kysScrollPicView alloc] initWithFrame:CGRectMake(0,20, width, width*9/16)];
设置代理
    [view setDelegate:self];
设置滚动时间
    [view setAutoScrollTime:5];
设置pagecontrol点的颜色
    [view setCurrentPageIndicatorColor:[UIColor greenColor] otherPageIndicator:[UIColor grayColor]];
设置点的对其方式
    [view setPageControllerAlignment:kysAlignmentLeft];
代理
  点击时返回所在数据index
  -(void)clickPicWithindex:(NSInteger)index；
