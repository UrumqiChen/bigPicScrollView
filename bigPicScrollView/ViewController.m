//
//  ViewController.m
//  bigPicScrollView
//
//  Created by 陈鑫 on 16/9/2.
//  Copyright © 2016年 C.Xin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    CGFloat width = [[UIScreen mainScreen] bounds].size.width;
    kysScrollPicView *view = [[kysScrollPicView alloc] initWithFrame:CGRectMake(0,20, width, width*9/16)];
    [view setDelegate:self];
    [view setAutoScrollTime:5];
    [view setCurrentPageIndicatorColor:[UIColor redColor] otherPageIndicator:[UIColor grayColor]];
    [self.view addSubview:view];
    NSArray *array = @[@"http://img1.imgtn.bdimg.com/it/u=3755821029,4244946914&fm=21&gp=0.jpg",@"http://img4.imgtn.bdimg.com/it/u=3935105319,1037389709&fm=21&gp=0.jpg",@"http://img3.imgtn.bdimg.com/it/u=766437667,1744761512&fm=21&gp=0.jpg",@"http://img3.imgtn.bdimg.com/it/u=1952920096,2449558095&fm=21&gp=0.jpg",@"http://img3.imgtn.bdimg.com/it/u=3766162482,4008376723&fm=21&gp=0.jpg",@"http://img4.imgtn.bdimg.com/it/u=2357026344,3429114932&fm=21&gp=0.jpg",@"http://img1.imgtn.bdimg.com/it/u=515225603,3572718824&fm=21&gp=0.jpg"];
    [view setDatasWithTitleArray:nil imageArray:array];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)clickPicWithindex:(NSInteger)index{
    NSLog(@"%ld",index);
}
@end
